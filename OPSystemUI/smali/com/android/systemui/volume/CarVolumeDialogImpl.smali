.class public Lcom/android/systemui/volume/CarVolumeDialogImpl;
.super Ljava/lang/Object;
.source "CarVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAvailableVolumeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCar:Landroid/car/Car;

.field private mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

.field private mHovering:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mListView:Landroidx/car/widget/PagedListView;

.field private mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowing:Z

.field private final mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

.field private final mVolumeItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeLineItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mAvailableVolumeItems:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    .line 529
    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

    .line 552
    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 118
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120546

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    .line 121
    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/CarVolumeDialogImpl;Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;
    .param p1, "x1"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/view/View$OnClickListener;

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->addSeekbarListItem(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroidx/car/widget/SeekbarListItem;)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;
    .param p1, "x1"    # Landroidx/car/widget/SeekbarListItem;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->findVolumeItem(Landroidx/car/widget/SeekbarListItem;)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroidx/car/widget/ListItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/CarAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;
    .param p1, "x1"    # Landroid/car/media/CarAudioManager;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/car/media/CarAudioManager;I)I
    .locals 1
    .param p0, "x0"    # Landroid/car/media/CarAudioManager;
    .param p1, "x1"    # I

    .line 84
    invoke-static {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getSeekbarValue(Landroid/car/media/CarAudioManager;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/Car;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/CarVolumeDialogImpl;[I)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;
    .param p1, "x1"    # [I

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getVolumeItemForUsages([I)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/ICarVolumeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->cleanupAudioManager()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/CarVolumeDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/CarVolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mExpanded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mAvailableVolumeItems:Ljava/util/List;

    return-object v0
.end method

.method private addSeekbarListItem(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;
    .locals 6
    .param p1, "volumeItem"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p2, "volumeGroupId"    # I
    .param p3, "supplementalIconId"    # I
    .param p4, "supplementalIconOnClickListener"    # Landroid/view/View$OnClickListener;

    .line 346
    new-instance v0, Landroidx/car/widget/SeekbarListItem;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/car/widget/SeekbarListItem;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "listItem":Landroidx/car/widget/SeekbarListItem;
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-static {v1, p2}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getMaxSeekbarValue(Landroid/car/media/CarAudioManager;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/car/widget/SeekbarListItem;->setMax(I)V

    .line 348
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 349
    .local v1, "color":I
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-static {v2, p2}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getSeekbarValue(Landroid/car/media/CarAudioManager;I)I

    move-result v2

    .line 350
    .local v2, "progress":I
    invoke-virtual {v0, v2}, Landroidx/car/widget/SeekbarListItem;->setProgress(I)V

    .line 351
    new-instance v3, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;

    iget-object v4, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v5, 0x0

    invoke-direct {v3, p0, p2, v4, v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;ILandroid/car/media/CarAudioManager;Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V

    invoke-virtual {v0, v3}, Landroidx/car/widget/SeekbarListItem;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 353
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$300(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 354
    .local v3, "primaryIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 355
    invoke-virtual {v0, v3}, Landroidx/car/widget/SeekbarListItem;->setPrimaryActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 356
    const/4 v4, 0x1

    if-eqz p3, :cond_0

    .line 357
    iget-object v5, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 358
    .local v5, "supplementalIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 359
    invoke-virtual {v0, v5, v4, p4}, Landroidx/car/widget/SeekbarListItem;->setSupplementalIcon(Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    .line 361
    .end local v5    # "supplementalIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v0, v4}, Landroidx/car/widget/SeekbarListItem;->setSupplementalEmptyIcon(Z)V

    .line 365
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-static {p1, v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$502(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;Landroidx/car/widget/SeekbarListItem;)Landroidx/car/widget/SeekbarListItem;

    .line 367
    invoke-static {p1, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$602(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    .line 368
    return-object v0
.end method

.method private cleanupAudioManager()V
    .locals 3

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v1}, Landroid/car/media/ICarVolumeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/media/CarAudioManager;->unregisterVolumeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/car/CarNotConnectedException;
    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    .line 389
    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e80

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb8

    :goto_0
    return v0
.end method

.method private findVolumeItem(Landroidx/car/widget/SeekbarListItem;)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 3
    .param p1, "targetItem"    # Landroidx/car/widget/SeekbarListItem;

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 374
    .local v1, "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$500(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Landroidx/car/widget/SeekbarListItem;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 375
    return-object v1

    .line 372
    .end local v1    # "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMaxSeekbarValue(Landroid/car/media/CarAudioManager;I)I
    .locals 3
    .param p0, "carAudioManager"    # Landroid/car/media/CarAudioManager;
    .param p1, "volumeGroupId"    # I

    .line 337
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(I)I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/car/CarNotConnectedException;
    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    const/4 v0, 0x0

    return v0
.end method

.method private static getSeekbarValue(Landroid/car/media/CarAudioManager;I)I
    .locals 3
    .param p0, "carAudioManager"    # Landroid/car/media/CarAudioManager;
    .param p1, "volumeGroupId"    # I

    .line 328
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupVolume(I)I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/car/CarNotConnectedException;
    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    const/4 v0, 0x0

    return v0
.end method

.method private getVolumeItemForUsages([I)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 7
    .param p1, "usages"    # [I

    .line 314
    const v0, 0x7fffffff

    .line 315
    .local v0, "rank":I
    const/4 v1, 0x0

    .line 316
    .local v1, "result":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    .line 317
    .local v4, "usage":I
    iget-object v5, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 318
    .local v5, "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    invoke-static {v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$200(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v6

    if-ge v6, v0, :cond_0

    .line 319
    invoke-static {v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$200(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v0

    .line 320
    move-object v1, v5

    .line 316
    .end local v4    # "usage":I
    .end local v5    # "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_1
    return-object v1
.end method

.method private initDialog()V
    .locals 6

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->loadAudioUsageItems()V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHovering:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mExpanded:Z

    .line 147
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 149
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 161
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 162
    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 164
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 165
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 166
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v4, -0x2

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 168
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v3, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d0050

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->setContentView(I)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$vlKmnqSHXeP1A03lvbFsgzjPtc0;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$vlKmnqSHXeP1A03lvbFsgzjPtc0;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 180
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x7f0a045b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/car/widget/PagedListView;

    iput-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    .line 181
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$ttx6YehS3HDGJCSyF1Z5F3v3yDI;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$ttx6YehS3HDGJCSyF1Z5F3v3yDI;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    invoke-virtual {v2, v3}, Landroidx/car/widget/PagedListView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 189
    new-instance v2, Landroidx/car/widget/ListItemAdapter;

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroidx/car/widget/ListItemProvider$ListProvider;

    iget-object v5, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-direct {v4, v5}, Landroidx/car/widget/ListItemProvider$ListProvider;-><init>(Ljava/util/List;)V

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Landroidx/car/widget/ListItemAdapter;-><init>(Landroid/content/Context;Landroidx/car/widget/ListItemProvider;I)V

    iput-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    .line 191
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    invoke-virtual {v2, v3}, Landroidx/car/widget/PagedListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v2, v1}, Landroidx/car/widget/PagedListView;->setMaxPages(I)V

    .line 193
    return-void
.end method

.method public static synthetic lambda$dismissH$2(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 2

    .line 259
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->dismiss()V

    .line 263
    return-void
.end method

.method public static synthetic lambda$dismissH$3(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$Ta8M0dGuIMjlpBaP0lNmvgYiiqA;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$Ta8M0dGuIMjlpBaP0lNmvgYiiqA;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$initDialog$0(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v1}, Landroidx/car/widget/PagedListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setTranslationY(F)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setAlpha(F)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 174
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 176
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 179
    return-void
.end method

.method public static synthetic lambda$initDialog$1(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 183
    .local v0, "action":I
    const/4 v1, 0x1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHovering:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 186
    return v1
.end method

.method private loadAudioUsageItems()V
    .locals 12

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f150000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 276
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 279
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_0

    .end local v4    # "type":I
    goto :goto_0

    .line 283
    .restart local v4    # "type":I
    :cond_0
    const-string v3, "carVolumeItems"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 286
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 287
    .local v3, "outerDepth":I
    const/4 v6, 0x0

    move v7, v4

    move v4, v6

    .line 288
    .local v4, "rank":I
    .local v7, "type":I
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v7, v8

    if-eq v8, v5, :cond_5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 289
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_5

    .line 290
    :cond_2
    if-ne v7, v8, :cond_3

    .line 291
    goto :goto_1

    .line 293
    :cond_3
    const-string v8, "item"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 294
    iget-object v8, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/R$styleable;->carVolumeItems_item:[I

    invoke-virtual {v8, v2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 296
    .local v8, "item":Landroid/content/res/TypedArray;
    const/4 v9, -0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 297
    .local v9, "usage":I
    if-ltz v9, :cond_4

    .line 298
    new-instance v10, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    invoke-direct {v10, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V

    .line 299
    .local v10, "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    invoke-static {v10, v9}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$102(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    .line 300
    invoke-static {v10, v4}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$202(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    .line 301
    invoke-virtual {v8, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$302(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    .line 302
    iget-object v11, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    add-int/lit8 v4, v4, 0x1

    .line 305
    .end local v10    # "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    :cond_4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .end local v8    # "item":Landroid/content/res/TypedArray;
    .end local v9    # "usage":I
    goto :goto_1

    .line 308
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "outerDepth":I
    .end local v4    # "rank":I
    .end local v7    # "type":I
    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_6
    goto :goto_4

    .line 284
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .local v4, "type":I
    :cond_7
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Meta-data does not start with carVolumeItems tag"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 275
    :catch_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    :goto_2
    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    :try_start_5
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    :goto_3
    throw v2
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing volume groups configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private showH(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 204
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    invoke-virtual {v0}, Landroidx/car/widget/ListItemAdapter;->notifyDataSetChanged()V

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    .line 214
    return-void

    .line 216
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->show()V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 220
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->cleanupAudioManager()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 137
    return-void
.end method

.method protected dismissH(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 238
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    .line 245
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    .line 251
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/car/widget/PagedListView;->setTranslationY(F)V

    .line 252
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroidx/car/widget/PagedListView;->setAlpha(F)V

    .line 253
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v2}, Landroidx/car/widget/PagedListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 254
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    .line 255
    invoke-virtual {v3}, Landroidx/car/widget/PagedListView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    .line 256
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v3}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 257
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$rCIGYbfmmruUBwL8pG_nmk6yEXo;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$rCIGYbfmmruUBwL8pG_nmk6yEXo;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    .line 258
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v1, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1
    .param p1, "windowType"    # I
    .param p2, "callback"    # Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->initDialog()V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 127
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 225
    .local v0, "timeout":I
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    .line 226
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 225
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method

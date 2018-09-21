.class public abstract Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.super Ljava/lang/Object;
.source "QSTileImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/qs/QSTile;"
    }
.end annotation


# static fields
.field protected static final ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

.field protected static final DEBUG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSTile$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
            "TTState;>.com/android/systemui/qs/tileimpl/QSTileImpl$H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSHost;

.field private mIsFullQs:I

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mShowingDetail:Z

.field private final mStaleListener:Ljava/lang/Object;

.field protected mState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private mTileSpec:Ljava/lang/String;

.field private mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 109
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 82
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 111
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "x1"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallbacks()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "x1"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListeningInternal(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static getCircleColorForState(I)I
    .locals 2
    .param p0, "state"    # I

    .line 469
    packed-switch p0, :pswitch_data_0

    .line 476
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 477
    const/4 v0, -0x1

    goto :goto_0

    .line 473
    :pswitch_0
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_OFF:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    .line 471
    :pswitch_1
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_DISABLE:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    .line 478
    :cond_0
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 479
    .local v0, "iconOnColor":I
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getColorForState(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 412
    const-string v0, "QSTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    return v0

    .line 407
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 408
    const/high16 v0, -0x1000000

    goto :goto_0

    .line 409
    :cond_0
    const-string v0, "#FFF5F5F5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 407
    :goto_0
    return v0

    .line 402
    :pswitch_1
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    .line 397
    :pswitch_2
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_DISABLE:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getOPColorForState(I)I
    .locals 2
    .param p0, "state"    # I

    .line 419
    packed-switch p0, :pswitch_data_0

    .line 426
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 427
    const/4 v0, -0x1

    goto :goto_0

    .line 423
    :pswitch_0
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    .line 421
    :pswitch_1
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_DISABLE:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    return v0

    .line 428
    :cond_0
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 429
    .local v0, "iconOnColor":I
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 250
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 252
    return-void
.end method

.method private handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 255
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method private handleRemoveCallbacks()V
    .locals 1

    .line 259
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 332
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onScanStateChanged(Z)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleSetListeningInternal(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "listening"    # Z

    .line 342
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    if-eqz p2, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 344
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleSetListening true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 350
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleSetListening false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 354
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->updateIsFullQs()V

    .line 355
    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 315
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onShowDetail(Z)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 5

    .line 291
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->shouldAnnouncementBeDelayed()Z

    move-result v0

    .line 292
    .local v0, "delayAnnouncement":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 293
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "announcement":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 299
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v3, v1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    .line 303
    .end local v1    # "announcement":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    .line 304
    return-void
.end method

.method private handleToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 326
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateIsFullQs()V
    .locals 4

    .line 358
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 359
    .local v1, "listener":Ljava/lang/Object;
    const-class v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 361
    return-void

    .line 363
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 365
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 167
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method protected checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 377
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 378
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 377
    invoke-static {v0, p2, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 379
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 380
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 379
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 382
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    .line 384
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 387
    :goto_0
    return-void
.end method

.method public clearState()V
    .locals 2

    .line 220
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method

.method public click()V
    .locals 3

    .line 179
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 181
    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 311
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 152
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 236
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 237
    return-void
.end method

.method public fireScanStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 232
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method public fireToggleStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 228
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 148
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/qs/QSHost;
    .locals 1

    .line 140
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public abstract getMetricsCategory()I
.end method

.method protected getStaleTimeout()J
    .locals 2

    .line 123
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method public getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method public getTileSpec()Ljava/lang/String;
    .locals 1

    .line 132
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object v0
.end method

.method protected handleClearState()V
    .locals 1

    .line 275
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 277
    return-void
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 1

    .line 370
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .line 268
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v1

    .line 268
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 270
    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;

    .line 280
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v0

    .line 282
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStateChanged()V

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->removeMessages(I)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStaleTimeout()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    .line 288
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 264
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    .line 265
    return-void
.end method

.method protected abstract handleSetListening(Z)V
.end method

.method protected handleStale()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 128
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    .line 129
    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 338
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 161
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected isShowingDetail()Z
    .locals 1

    .line 322
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    return v0
.end method

.method public longClick()V
    .locals 3

    .line 189
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x16e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v1, "QsLongPressTooltipShownCount"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 196
    return-void
.end method

.method public abstract newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 4
    .param p1, "logMaker"    # Landroid/metrics/LogMaker;

    .line 199
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    instance-of v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_0

    .line 200
    const/16 v0, 0x3a0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x341

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x39f

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 204
    invoke-interface {v2, v3}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method public refreshState()V
    .locals 1

    .line 212
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .line 216
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 171
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 172
    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    .line 175
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 176
    return-void
.end method

.method public secondaryClick()V
    .locals 3

    .line 184
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method public setDetailListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .line 245
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    return-void
.end method

.method public setListening(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "listening"    # Z

    .line 119
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, p2, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .locals 0
    .param p1, "tileSpec"    # Ljava/lang/String;

    .line 136
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 137
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 307
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public showDetail(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 208
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void
.end method

.method public userSwitch(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 224
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    return-void
.end method

.class Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
.super Landroid/arch/lifecycle/LiveData;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SliceLiveDataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field private final mSliceViewManager:Landroidx/slice/SliceViewManager;

.field private final mUpdateSlice:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 244
    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    .line 273
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$2;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    .line 245
    invoke-static {p1}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    .line 246
    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Landroidx/slice/widget/SliceLiveData$1;

    .line 238
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 238
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1502(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 238
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1600(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroidx/slice/SliceViewManager;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 238
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    return-object v0
.end method

.method static synthetic access$1700(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 238
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)Landroidx/slice/SliceViewManager$SliceCallback;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 238
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    return-object v0
.end method

.method static synthetic access$1900(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 238
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 238
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 260
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 264
    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 268
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 271
    :cond_0
    return-void
.end method

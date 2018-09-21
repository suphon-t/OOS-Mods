.class Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;
.super Ljava/lang/Object;
.source "SliceViewManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/SliceViewManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliceListenerImpl"
.end annotation


# instance fields
.field private final mCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPinned:Z

.field private final mUpdateSlice:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Landroidx/slice/SliceViewManagerBase;


# direct methods
.method constructor <init>(Landroidx/slice/SliceViewManagerBase;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 2
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroidx/slice/SliceViewManager$SliceCallback;

    .line 93
    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance p1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;

    invoke-direct {p1, p0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$1;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUpdateSlice:Ljava/lang/Runnable;

    .line 137
    new-instance p1, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    new-instance v0, Landroid/os/Handler;

    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;-><init>(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroid/database/ContentObserver;

    .line 94
    iput-object p2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    .line 95
    iput-object p3, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 96
    iput-object p4, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 86
    invoke-direct {p0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->tryPin()V

    return-void
.end method

.method static synthetic access$100(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 86
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Landroidx/slice/SliceViewManager$SliceCallback;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 86
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 86
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    .line 86
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUpdateSlice:Ljava/lang/Runnable;

    return-object v0
.end method

.method private tryPin()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-nez v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManagerBase;->pinSlice(Landroid/net/Uri;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 113
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method startListening()V
    .locals 4

    .line 100
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    invoke-direct {p0}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->tryPin()V

    .line 102
    return-void
.end method

.method stopListening()V
    .locals 2

    .line 116
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v0, v0, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    iget-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerBase;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManagerBase;->unpinSlice(Landroid/net/Uri;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    .line 121
    :cond_0
    return-void
.end method

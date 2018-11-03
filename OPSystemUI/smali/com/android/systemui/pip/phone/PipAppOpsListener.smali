.class public Lcom/android/systemui/pip/phone/PipAppOpsListener;
.super Ljava/lang/Object;
.source "PipAppOpsListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/android/systemui/pip/phone/PipAppOpsListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "motionHelper"    # Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;-><init>(Lcom/android/systemui/pip/phone/PipAppOpsListener;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mActivityManager:Landroid/app/IActivityManager;

    .line 70
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 71
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipAppOpsListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->unregisterAppOpsListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method private registerAppOpsListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 87
    return-void
.end method

.method private unregisterAppOpsListener()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->registerAppOpsListener(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->unregisterAppOpsListener()V

    .line 82
    return-void
.end method

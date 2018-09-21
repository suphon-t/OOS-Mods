.class public Lcom/android/systemui/stackdivider/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# instance fields
.field private mDimLayerAlpha:F

.field private final mDimLayerRunnable:Ljava/lang/Runnable;

.field private mDimLayerTargetWindowingMode:I

.field private mDimLayerVisible:Z

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mDockedRect:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDockedRect"
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMaximizeRunnable:Ljava/lang/Runnable;

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSetTouchableRegionRunnable:Ljava/lang/Runnable;

.field private final mTempDockedInsetRect:Landroid/graphics/Rect;

.field private final mTempDockedTaskRect:Landroid/graphics/Rect;

.field private final mTempOtherInsetRect:Landroid/graphics/Rect;

.field private final mTempOtherTaskRect:Landroid/graphics/Rect;

.field private final mTmpRect1:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTmpRect4:Landroid/graphics/Rect;

.field private final mTmpRect5:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDockedRect"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetWindowingMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerAlpha:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    .line 139
    sget-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public dismissDockedStack()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public getDockSide()I
    .locals 4

    .line 193
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get dock side: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public maximizeDockedStack()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "docked"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskRect"    # Landroid/graphics/Rect;
    .param p3, "tempDockedInsetRect"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskRect"    # Landroid/graphics/Rect;
    .param p5, "tempOtherInsetRect"    # Landroid/graphics/Rect;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 151
    :goto_0
    if-eqz p3, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 156
    :goto_1
    if-eqz p4, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 161
    :goto_2
    if-eqz p5, :cond_3

    .line 162
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 166
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setResizeDimLayer(ZIF)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "targetWindowingMode"    # I
    .param p3, "alpha"    # F

    .line 201
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    .line 202
    iput p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetWindowingMode:I

    .line 203
    iput p3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerAlpha:F

    .line 204
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public setResizing(Z)V
    .locals 2
    .param p1, "resizing"    # Z

    .line 179
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Rect;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

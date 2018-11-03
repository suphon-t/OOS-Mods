.class public Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;
    }
.end annotation


# instance fields
.field private final mTargetSurface:Landroid/view/Surface;

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;

.field private final mTmpFloat9:[F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    .line 40
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    nop

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetSurface:Landroid/view/Surface;

    .line 42
    return-void
.end method

.method private static applyParams(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V
    .locals 2
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "params"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .param p2, "tmpFloat9"    # [F

    .line 78
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 79
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 80
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->alpha:F

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 81
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->layer:I

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 82
    iget-object v0, p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 83
    return-void
.end method

.method public static synthetic lambda$scheduleApply$0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;J)V
    .locals 5
    .param p1, "params"    # [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .param p2, "frame"    # J

    .line 55
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 59
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 60
    aget-object v2, p1, v1

    .line 61
    .local v2, "surfaceParams":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;
    iget-object v3, v2, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 62
    .local v3, "surface":Landroid/view/SurfaceControl;
    iget-object v4, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3, v4, p2, p3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    .line 63
    iget-object v4, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    invoke-static {v0, v2, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 59
    .end local v2    # "surfaceParams":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .end local v3    # "surface":Landroid/view/SurfaceControl;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    .line 66
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 67
    return-void

    .line 56
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 2
    .param p1, "params"    # [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v1, Lcom/android/systemui/shared/system/-$$Lambda$SyncRtSurfaceTransactionApplier$odiZXJPwVQjUmyGhNuNxcMPZIOM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/system/-$$Lambda$SyncRtSurfaceTransactionApplier$odiZXJPwVQjUmyGhNuNxcMPZIOM;-><init>(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 71
    return-void
.end method

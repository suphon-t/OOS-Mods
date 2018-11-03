.class public final synthetic Lcom/android/systemui/shared/system/-$$Lambda$SyncRtSurfaceTransactionApplier$odiZXJPwVQjUmyGhNuNxcMPZIOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ThreadedRenderer$FrameDrawingCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;

.field private final synthetic f$1:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/-$$Lambda$SyncRtSurfaceTransactionApplier$odiZXJPwVQjUmyGhNuNxcMPZIOM;->f$0:Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;

    iput-object p2, p0, Lcom/android/systemui/shared/system/-$$Lambda$SyncRtSurfaceTransactionApplier$odiZXJPwVQjUmyGhNuNxcMPZIOM;->f$1:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/system/-$$Lambda$SyncRtSurfaceTransactionApplier$odiZXJPwVQjUmyGhNuNxcMPZIOM;->f$0:Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/systemui/shared/system/-$$Lambda$SyncRtSurfaceTransactionApplier$odiZXJPwVQjUmyGhNuNxcMPZIOM;->f$1:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->lambda$scheduleApply$0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;J)V

    return-void
.end method

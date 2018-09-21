.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Lo7jOQgOiEZ4M1LxVUxyoD69g0s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Lo7jOQgOiEZ4M1LxVUxyoD69g0s;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Lo7jOQgOiEZ4M1LxVUxyoD69g0s;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    check-cast p1, Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/LockscreenFragment;->lambda$onDestroy$0(Lcom/android/systemui/tuner/LockscreenFragment;Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

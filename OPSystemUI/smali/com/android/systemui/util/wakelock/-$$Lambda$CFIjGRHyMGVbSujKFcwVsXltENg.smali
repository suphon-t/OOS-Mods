.class public final synthetic Lcom/android/systemui/util/wakelock/-$$Lambda$CFIjGRHyMGVbSujKFcwVsXltENg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/-$$Lambda$CFIjGRHyMGVbSujKFcwVsXltENg;->f$0:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/-$$Lambda$CFIjGRHyMGVbSujKFcwVsXltENg;->f$0:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    return-void
.end method

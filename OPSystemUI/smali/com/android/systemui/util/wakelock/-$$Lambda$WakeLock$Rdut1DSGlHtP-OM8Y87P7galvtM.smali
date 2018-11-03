.class public final synthetic Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;

.field private final synthetic f$1:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;->f$1:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/-$$Lambda$WakeLock$Rdut1DSGlHtP-OM8Y87P7galvtM;->f$1:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-static {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->lambda$wrapImpl$0(Ljava/lang/Runnable;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-void
.end method

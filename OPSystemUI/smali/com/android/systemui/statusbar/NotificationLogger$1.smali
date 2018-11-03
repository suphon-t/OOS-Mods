.class Lcom/android/systemui/statusbar/NotificationLogger$1;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLogger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationLogger;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildLocationsChanged()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    .line 76
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationLogger;->access$000(Lcom/android/systemui/statusbar/NotificationLogger;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    .line 77
    .local v0, "nextReportUptimeMs":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.class Lcom/android/systemui/pip/tv/PipNotification$1;
.super Ljava/lang/Object;
.source "PipNotification.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipNotification;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveToFullscreen()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$200(Lcom/android/systemui/pip/tv/PipNotification;)V

    .line 92
    return-void
.end method

.method public onPipActivityClosed()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$200(Lcom/android/systemui/pip/tv/PipNotification;)V

    .line 77
    return-void
.end method

.method public onPipEntered()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$000(Lcom/android/systemui/pip/tv/PipNotification;)Z

    .line 71
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$100(Lcom/android/systemui/pip/tv/PipNotification;)V

    .line 72
    return-void
.end method

.method public onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .line 87
    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 0

    .line 97
    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    .line 82
    return-void
.end method

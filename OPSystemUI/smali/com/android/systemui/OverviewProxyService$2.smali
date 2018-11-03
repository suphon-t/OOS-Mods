.class Lcom/android/systemui/OverviewProxyService$2;
.super Landroid/content/BroadcastReceiver;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/OverviewProxyService;

    .line 183
    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$2;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$2;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$500(Lcom/android/systemui/OverviewProxyService;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$2;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$2;->this$0:Lcom/android/systemui/OverviewProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/OverviewProxyService;->access$102(Lcom/android/systemui/OverviewProxyService;I)I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$2;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "QuickStepInteractionFlags"

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$2;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->startConnectionToCurrentUser()V

    .line 196
    return-void
.end method

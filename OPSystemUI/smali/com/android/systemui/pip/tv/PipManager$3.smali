.class Lcom/android/systemui/pip/tv/PipManager$3;
.super Landroid/content/BroadcastReceiver;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 152
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$3;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "packageNames":[Ljava/lang/String;
    const-string v2, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "resourceType":I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    if-nez v2, :cond_0

    .line 162
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$3;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3, v1}, Lcom/android/systemui/pip/tv/PipManager;->access$200(Lcom/android/systemui/pip/tv/PipManager;[Ljava/lang/String;)V

    .line 166
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v2    # "resourceType":I
    :cond_0
    return-void
.end method

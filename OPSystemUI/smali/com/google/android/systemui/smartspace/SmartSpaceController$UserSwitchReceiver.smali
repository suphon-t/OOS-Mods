.class Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/SmartSpaceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/systemui/smartspace/SmartSpaceController;
    .param p2, "x1"    # Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

    .line 336
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 340
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "SmartSpaceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$202(Lcom/google/android/systemui/smartspace/SmartSpaceController;I)I

    .line 346
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$300(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->clear()V

    .line 347
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$400(Lcom/google/android/systemui/smartspace/SmartSpaceController;Z)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$400(Lcom/google/android/systemui/smartspace/SmartSpaceController;Z)V

    .line 350
    return-void
.end method

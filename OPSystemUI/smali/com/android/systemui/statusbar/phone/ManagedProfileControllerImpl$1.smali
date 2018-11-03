.class Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagedProfileControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->access$100(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 137
    .local v1, "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    .line 138
    .end local v1    # "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

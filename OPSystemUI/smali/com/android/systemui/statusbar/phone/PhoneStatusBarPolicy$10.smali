.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$10;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 1204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1207
    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1208
    .local v0, "state":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v2

    const-string v3, "nfc"

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1209
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    const-string v2, "nfc"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1213
    :goto_1
    return-void
.end method

.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 162
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "interrupt":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    .end local v1    # "state":Ljava/lang/String;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const/4 v0, 0x1

    .line 176
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 177
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->access$1500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    .line 180
    .end local v0    # "interrupt":Z
    :cond_3
    return-void
.end method

.class Lcom/android/keyguard/KeyguardEsimArea$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardEsimArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardEsimArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardEsimArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardEsimArea;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardEsimArea;

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEsimArea$1;->this$0:Lcom/android/keyguard/KeyguardEsimArea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    const-string v0, "com.android.keyguard.disable_esim"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEsimArea$1;->getResultCode()I

    move-result v0

    .line 56
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    .line 57
    const-string v1, "KeyguardEsimArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error disabling esim, result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardEsimArea$1;->this$0:Lcom/android/keyguard/KeyguardEsimArea;

    .line 59
    invoke-static {v2}, Lcom/android/keyguard/KeyguardEsimArea;->access$000(Lcom/android/keyguard/KeyguardEsimArea;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110262

    .line 60
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110263

    .line 61
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110429

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 64
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 65
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 67
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 70
    .end local v0    # "resultCode":I
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "alertDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/tuner/TunerService$1;
.super Ljava/lang/Object;
.source "TunerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onDisabled:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/tuner/TunerService$1;->val$onDisabled:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.CLEAR_TUNER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "seen_tuner_warning"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->val$onDisabled:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService$1;->val$onDisabled:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_0
    return-void
.end method

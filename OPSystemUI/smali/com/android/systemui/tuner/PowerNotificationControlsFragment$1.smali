.class Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;
.super Ljava/lang/Object;
.source "PowerNotificationControlsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

.field final synthetic val$switchText:Landroid/widget/TextView;

.field final synthetic val$switchWidget:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchWidget:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->access$000(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 62
    .local v0, "newState":Z
    iget-object v2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    invoke-virtual {v2}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x189

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 64
    iget-object v2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    invoke-virtual {v2}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_importance_slider"

    .line 65
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchWidget:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    const v3, 0x7f1105e8

    invoke-virtual {v2, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    const v3, 0x7f1105e7

    invoke-virtual {v2, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

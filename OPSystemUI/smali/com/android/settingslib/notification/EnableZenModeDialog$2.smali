.class Lcom/android/settingslib/notification/EnableZenModeDialog$2;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

.field final synthetic val$conditionId:Landroid/net/Uri;

.field final synthetic val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 202
    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iput-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iput-object p3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$conditionId:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 205
    if-eqz p2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 207
    invoke-static {}, Lcom/android/settingslib/notification/EnableZenModeDialog;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EnableZenModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0xa4

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 210
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$2;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    iget-object v1, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->access$400(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)V

    .line 212
    :cond_1
    return-void
.end method

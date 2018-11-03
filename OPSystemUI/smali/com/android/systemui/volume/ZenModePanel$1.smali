.class Lcom/android/systemui/volume/ZenModePanel$1;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic val$conditionId:Landroid/net/Uri;

.field final synthetic val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 658
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel$1;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    iput-object p3, p0, Lcom/android/systemui/volume/ZenModePanel$1;->val$conditionId:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 661
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$600(Lcom/android/systemui/volume/ZenModePanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$1;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 663
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$1;->val$conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$1;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    iget-object v1, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$1;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$1;->val$tag:Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1100(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .line 668
    :cond_1
    return-void
.end method

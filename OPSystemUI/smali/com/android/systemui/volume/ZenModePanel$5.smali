.class Lcom/android/systemui/volume/ZenModePanel$5;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic val$realConditionId:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 814
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$5;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel$5;->val$realConditionId:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$5;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1400(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$5;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1300(Lcom/android/systemui/volume/ZenModePanel;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$5;->val$realConditionId:Landroid/net/Uri;

    const-string v3, "ZenModePanel.selectCondition"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 818
    return-void
.end method

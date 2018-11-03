.class final Lcom/android/systemui/volume/ZenModePanel$H;
.super Landroid/os/Handler;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$H;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    .line 854
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 855
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p2, "x1"    # Lcom/android/systemui/volume/ZenModePanel$1;

    .line 849
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 859
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 861
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$H;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1600(Lcom/android/systemui/volume/ZenModePanel;)V

    goto :goto_0

    .line 860
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$H;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 863
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

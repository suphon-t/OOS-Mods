.class final Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDrag"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;Lcom/android/systemui/statusbar/NotificationMenuRow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/NotificationMenuRow$1;

    .line 551
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$100(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 555
    .local v0, "absTransX":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$200(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v1

    .line 556
    .local v1, "bounceBackToMenuWidth":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$300(Lcom/android/systemui/statusbar/NotificationMenuRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    .line 557
    .local v2, "notiThreshold":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$400(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    float-to-double v3, v0

    float-to-double v5, v1

    const-wide v7, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$500(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V

    .line 562
    :cond_1
    return-void
.end method

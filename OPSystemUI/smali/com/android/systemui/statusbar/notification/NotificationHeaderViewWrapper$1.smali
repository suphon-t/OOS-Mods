.class Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;
.super Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;
.source "NotificationHeaderViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
    .param p2, "viewType"    # I

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;
    .locals 2
    .param p1, "interpolationType"    # I
    .param p2, "isFrom"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/NotificationHeaderView;

    .line 79
    .local v0, "isLowPriority":Z
    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    .line 80
    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 82
    :cond_1
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-object v1

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v1

    return-object v1

    .line 87
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method protected hasCustomTransformation()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->access$100(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->access$200(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

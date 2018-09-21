.class Lcom/android/systemui/statusbar/NotificationMenuRow$1;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeInMenu(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

.field final synthetic val$fromLeft:Z

.field final synthetic val$notiThreshold:F

.field final synthetic val$transX:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;FZF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 576
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$transX:F

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$fromLeft:Z

    iput p4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$notiThreshold:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 579
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$transX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 581
    .local v0, "absTrans":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$fromLeft:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$transX:F

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$fromLeft:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 583
    .local v1, "pastMenu":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$600(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 584
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->access$700(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V

    .line 586
    :cond_3
    return-void
.end method

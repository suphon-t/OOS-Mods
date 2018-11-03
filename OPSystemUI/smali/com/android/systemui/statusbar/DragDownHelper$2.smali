.class Lcom/android/systemui/statusbar/DragDownHelper$2;
.super Ljava/lang/Object;
.source "DragDownHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/DragDownHelper;

    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper$2;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DragDownHelper;->access$100(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    .line 213
    return-void
.end method

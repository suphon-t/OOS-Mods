.class Lcom/android/systemui/qs/car/CarQSFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CarQSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/car/CarQSFragment;->animateHeightChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/car/CarQSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/car/CarQSFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/car/CarQSFragment;

    .line 251
    iput-object p1, p0, Lcom/android/systemui/qs/car/CarQSFragment$1;->this$0:Lcom/android/systemui/qs/car/CarQSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment$1;->this$0:Lcom/android/systemui/qs/car/CarQSFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/car/CarQSFragment;->access$102(Lcom/android/systemui/qs/car/CarQSFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 255
    return-void
.end method

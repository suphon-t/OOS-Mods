.class Lcom/android/systemui/statusbar/ScrimView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ScrimView;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView$1;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView$1;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->access$002(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 77
    return-void
.end method

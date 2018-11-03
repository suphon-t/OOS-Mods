.class Lcom/android/systemui/qs/QuickStatusBarHeader$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;->hideStatusText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 645
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 652
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$700(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$6;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$700(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 654
    return-void
.end method

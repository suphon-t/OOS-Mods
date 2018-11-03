.class Lcom/android/systemui/statusbar/phone/QuickStepController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickStepController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickStepController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStepController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->access$400(Lcom/android/systemui/statusbar/phone/QuickStepController;)V

    .line 149
    return-void
.end method

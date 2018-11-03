.class Lcom/android/systemui/statusbar/ActivatableNotificationView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 383
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 387
    return-void
.end method

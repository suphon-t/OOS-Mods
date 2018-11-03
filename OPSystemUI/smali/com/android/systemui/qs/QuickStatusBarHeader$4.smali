.class Lcom/android/systemui/qs/QuickStatusBarHeader$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;->showLongPressTooltip()V
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

    .line 572
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$4;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 576
    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/Runnable;

    move-result-object v1

    .line 575
    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 577
    return-void
.end method

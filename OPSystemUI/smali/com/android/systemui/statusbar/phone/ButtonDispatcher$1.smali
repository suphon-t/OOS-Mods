.class Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ButtonDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;->this$0:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;->this$0:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$1;->this$0:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 65
    return-void
.end method

.class Lcom/android/systemui/statusbar/phone/TrustDrawable$1;
.super Ljava/lang/Object;
.source "TrustDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 253
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->access$102(Lcom/android/systemui/statusbar/phone/TrustDrawable;I)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    .line 258
    return-void
.end method

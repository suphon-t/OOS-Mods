.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$PropertyAnimator$VEXcQp-kY9kIrKbFhOrW7gy9zN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/util/Property;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Property;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$PropertyAnimator$VEXcQp-kY9kIrKbFhOrW7gy9zN4;->f$0:Landroid/util/Property;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$PropertyAnimator$VEXcQp-kY9kIrKbFhOrW7gy9zN4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$PropertyAnimator$VEXcQp-kY9kIrKbFhOrW7gy9zN4;->f$0:Landroid/util/Property;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$PropertyAnimator$VEXcQp-kY9kIrKbFhOrW7gy9zN4;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->lambda$startAnimation$0(Landroid/util/Property;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/qs/car/-$$Lambda$CarQSFragment$F8Wi9wqWb5vO5dq5W60LmH4nDcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/car/CarQSFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/car/CarQSFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFragment$F8Wi9wqWb5vO5dq5W60LmH4nDcg;->f$0:Lcom/android/systemui/qs/car/CarQSFragment;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFragment$F8Wi9wqWb5vO5dq5W60LmH4nDcg;->f$0:Lcom/android/systemui/qs/car/CarQSFragment;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/car/CarQSFragment;->lambda$animateHeightChange$0(Lcom/android/systemui/qs/car/CarQSFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

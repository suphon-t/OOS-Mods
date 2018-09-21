.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;->f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;->f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/stackdivider/DividerView;->lambda$getFlingAnimator$0(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method

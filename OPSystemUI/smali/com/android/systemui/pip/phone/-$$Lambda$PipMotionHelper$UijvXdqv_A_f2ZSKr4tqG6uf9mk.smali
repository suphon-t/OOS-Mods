.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$UijvXdqv_A_f2ZSKr4tqG6uf9mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$UijvXdqv_A_f2ZSKr4tqG6uf9mk;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$UijvXdqv_A_f2ZSKr4tqG6uf9mk;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$createAnimationToBounds$2(Lcom/android/systemui/pip/phone/PipMotionHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

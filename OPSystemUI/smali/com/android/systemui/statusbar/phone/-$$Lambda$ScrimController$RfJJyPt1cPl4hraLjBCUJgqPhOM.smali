.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$startScrimAnimation$0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

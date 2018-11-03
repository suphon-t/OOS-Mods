.class public final synthetic Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;->f$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;->f$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$handleStateChanged$3(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/TaskView;

.field private final synthetic f$1:F

.field private final synthetic f$2:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;->f$0:Lcom/android/systemui/recents/views/TaskView;

    iput p2, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;->f$1:F

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;->f$2:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;->f$0:Lcom/android/systemui/recents/views/TaskView;

    iget v1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;->f$1:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;->f$2:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->lambda$startTaskStackDeleteTaskAnimation$3(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V

    return-void
.end method

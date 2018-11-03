.class Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationGuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimateOpenListener"
.end annotation


# instance fields
.field final mOnAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onAnimationEnd"    # Ljava/lang/Runnable;

    .line 401
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;->mOnAnimationEnd:Ljava/lang/Runnable;

    .line 403
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/NotificationGuts$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts$1;

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 407
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;->mOnAnimationEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;->mOnAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 411
    :cond_0
    return-void
.end method

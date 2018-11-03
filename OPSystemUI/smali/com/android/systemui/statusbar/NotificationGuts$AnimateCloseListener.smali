.class Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationGuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimateCloseListener"
.end annotation


# instance fields
.field final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 418
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;->mView:Landroid/view/View;

    .line 420
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationGuts$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts$1;

    .line 415
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 424
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    return-void
.end method

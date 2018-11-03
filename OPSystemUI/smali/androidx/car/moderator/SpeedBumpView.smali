.class public Landroidx/car/moderator/SpeedBumpView;
.super Landroid/widget/FrameLayout;
.source "SpeedBumpView.java"


# instance fields
.field private final mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    .line 55
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    .line 55
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    .line 55
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    .line 55
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 77
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 83
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0, p1}, Landroidx/car/moderator/SpeedBumpController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 61
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->start()V

    .line 62
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->stop()V

    .line 68
    return-void
.end method

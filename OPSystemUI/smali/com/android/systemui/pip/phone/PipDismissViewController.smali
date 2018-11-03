.class public Lcom/android/systemui/pip/phone/PipDismissViewController;
.super Ljava/lang/Object;
.source "PipDismissViewController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipDismissViewController;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/pip/phone/PipDismissViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipDismissViewController;
    .param p1, "x1"    # Landroid/view/View;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipDismissViewController;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public createDismissTarget()V
    .locals 19

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .local v1, "stableInsets":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 63
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 64
    .local v2, "windowSize":Landroid/graphics/Point;
    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 65
    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070512

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 67
    .local v3, "gradientHeight":I
    iget-object v4, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070513

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 71
    .local v4, "bottomMargin":I
    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 72
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0d0153

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    .line 73
    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 74
    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 77
    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08053b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 78
    .local v14, "gradient":Landroid/graphics/drawable/Drawable;
    const/16 v5, 0xd8

    invoke-virtual {v14, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 79
    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v5, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const v6, 0x7f0a02f9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 83
    .local v15, "text":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .local v12, "tlp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 87
    new-instance v16, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, 0x0

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int v9, v5, v3

    const/16 v10, 0x7e8

    const/16 v11, 0x118

    const/16 v17, -0x3

    move-object/from16 v5, v16

    move v7, v3

    move-object/from16 v18, v12

    move/from16 v12, v17

    .end local v12    # "tlp":Landroid/widget/FrameLayout$LayoutParams;
    .local v18, "tlp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 95
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v6, "pip-dismiss-overlay"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 97
    const/16 v6, 0x31

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 98
    iget-object v6, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-interface {v6, v7, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .end local v1    # "stableInsets":Landroid/graphics/Rect;
    .end local v2    # "windowSize":Landroid/graphics/Point;
    .end local v3    # "gradientHeight":I
    .end local v4    # "bottomMargin":I
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "gradient":Landroid/graphics/drawable/Drawable;
    .end local v15    # "text":Landroid/view/View;
    .end local v18    # "tlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 101
    return-void
.end method

.method public destroyDismissTarget()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/PipDismissViewController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipDismissViewController$1;-><init>(Lcom/android/systemui/pip/phone/PipDismissViewController;)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 134
    :cond_0
    return-void
.end method

.method public showDismissTarget()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 110
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 111
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 113
    return-void
.end method

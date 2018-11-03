.class public Landroid/support/v17/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;,
        Landroid/support/v17/leanback/widget/BaseCardView$AnimationBase;,
        Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field private static final LB_PRESSED_STATE_SET:[I


# instance fields
.field private final mActivatedAnimDuration:I

.field private mAnim:Landroid/view/animation/Animation;

.field private final mAnimationTrigger:Ljava/lang/Runnable;

.field private mCardType:I

.field private mDelaySelectedAnim:Z

.field mExtraViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraVisibility:I

.field mInfoAlpha:F

.field mInfoOffset:F

.field mInfoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mInfoVisFraction:F

.field private mInfoVisibility:I

.field private mMainViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private final mSelectedAnimDuration:I

.field private mSelectedAnimationDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 153
    sget v0, Landroid/support/v17/leanback/R$attr;->baseCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseCardView$1;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    .line 159
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardType:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    .line 164
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 165
    .local v1, "cardForeground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_cardBackground:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 169
    .local v2, "cardBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_1
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_infoVisibility:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 174
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_extraVisibility:I

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 177
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    iget v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ge v3, v5, :cond_2

    .line 178
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 181
    :cond_2
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDelay:I

    .line 183
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_delay:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 181
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 185
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_selectedAnimationDuration:I

    .line 187
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$integer;->lb_card_selected_animation_duration:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 185
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 189
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseCardView_activatedAnimationDuration:I

    .line 191
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$integer;->lb_card_activated_animation_duration:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 190
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v1    # "cardForeground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "cardBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    nop

    .line 196
    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 203
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 204
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 205
    return-void

    .line 193
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/widget/BaseCardView;

    .line 55
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method private animateInfoAlpha(Z)V
    .locals 5
    .param p1, "shown"    # Z

    .line 781
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 783
    if-eqz p1, :cond_0

    .line 784
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 785
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 789
    .local v2, "targetAlpha":F
    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 790
    return-void

    .line 793
    :cond_2
    new-instance v3, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    if-eqz p1, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-direct {v3, p0, v4, v0}, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 794
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 795
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 796
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v17/leanback/widget/BaseCardView$4;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/BaseCardView$4;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 815
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 816
    return-void
.end method

.method private animateInfoHeight(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .line 738
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 740
    if-eqz p1, :cond_0

    .line 741
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 742
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 743
    .local v2, "extraView":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 741
    .end local v2    # "extraView":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 748
    .local v0, "targetFraction":F
    :goto_1
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 749
    return-void

    .line 751
    :cond_2
    new-instance v1, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-direct {v1, p0, v2, v0}, Landroid/support/v17/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 752
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 753
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 754
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v17/leanback/widget/BaseCardView$3;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/BaseCardView$3;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 773
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 774
    return-void
.end method

.method private applyActiveState(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 624
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 625
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->isRegionVisible(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 627
    :cond_0
    return-void
.end method

.method private applySelectedState(Z)V
    .locals 3
    .param p1, "focused"    # Z

    .line 662
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 664
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 666
    if-eqz p1, :cond_1

    .line 667
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->post(Ljava/lang/Runnable;)Z

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/BaseCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 674
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    goto :goto_0

    .line 676
    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 677
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 679
    :cond_3
    :goto_0
    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .line 682
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 687
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->clearAnimation()V

    .line 689
    :cond_0
    return-void
.end method

.method private findChildrenViews()V
    .locals 11

    .line 563
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildCount()I

    move-result v0

    .line 569
    .local v0, "count":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->isCurrentRegionVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 570
    .local v1, "infoVisible":Z
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 572
    .local v4, "extraVisible":Z
    :goto_1
    move v5, v3

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_7

    .line 573
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 575
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_2

    .line 576
    goto :goto_3

    .line 579
    :cond_2
    nop

    .line 580
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    .line 581
    .local v7, "lp":Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    iget v8, v7, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/16 v9, 0x8

    if-ne v8, v2, :cond_4

    .line 582
    iget v8, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    .line 583
    iget-object v8, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    if-eqz v1, :cond_3

    move v9, v3

    nop

    :cond_3
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 585
    :cond_4
    iget v8, v7, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_6

    .line 586
    iget-object v8, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    if-eqz v4, :cond_5

    move v9, v3

    nop

    :cond_5
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 590
    :cond_6
    iget-object v8, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 595
    .end local v5    # "i":I
    :cond_7
    return-void
.end method

.method private hasExtraRegion()Z
    .locals 2

    .line 521
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasInfoRegion()Z
    .locals 1

    .line 517
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentRegionVisible(I)Z
    .locals 4
    .param p1, "regionVisibility"    # I

    .line 545
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 558
    return v1

    .line 551
    :pswitch_0
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 552
    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 554
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    return v0

    .line 549
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    return v0

    .line 547
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isRegionVisible(I)Z
    .locals 1
    .param p1, "regionVisibility"    # I

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 537
    const/4 v0, 0x0

    return v0

    .line 534
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    return v0

    .line 532
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    return v0

    .line 530
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInfoViewVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .line 630
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 633
    if-eqz p1, :cond_0

    .line 634
    move v0, v2

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 635
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    .end local v0    # "i":I
    :cond_0
    move v0, v2

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 639
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 641
    .end local v0    # "i":I
    :cond_1
    nop

    .local v2, "i":I
    :goto_2
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 642
    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 641
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 644
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    goto :goto_5

    .line 646
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 648
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v3, :cond_4

    .line 649
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoHeight(Z)V

    goto :goto_5

    .line 651
    :cond_4
    move v0, v2

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 652
    iget-object v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz p1, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 655
    .end local v0    # "i":I
    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 657
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoAlpha(Z)V

    .line 659
    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method animateInfoOffset(Z)V
    .locals 7
    .param p1, "shown"    # Z

    .line 695
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "extraHeight":I
    if-eqz p1, :cond_1

    .line 699
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 700
    .local v1, "widthSpec":I
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 702
    .local v3, "heightSpec":I
    move v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "extraHeight":I
    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 703
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 704
    .local v5, "extraView":Landroid/view/View;
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 705
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 706
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 702
    .end local v5    # "extraView":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "i":I
    .end local v1    # "widthSpec":I
    .end local v3    # "heightSpec":I
    :cond_0
    move v0, v4

    .end local v4    # "extraHeight":I
    .local v0, "extraHeight":I
    :cond_1
    new-instance v1, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    if-eqz p1, :cond_2

    int-to-float v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v1, p0, v2, v3}, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    .line 711
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 712
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 713
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v17/leanback/widget/BaseCardView$2;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/BaseCardView$2;-><init>(Landroid/support/v17/leanback/widget/BaseCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 732
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 733
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 840
    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2

    .line 825
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->generateDefaultLayoutParams()Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 820
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 831
    instance-of v0, p1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    if-eqz v0, :cond_0

    .line 832
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;)V

    return-object v0

    .line 834
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseCardView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v17/leanback/widget/BaseCardView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method final getFinalInfoAlpha()F
    .locals 2

    .line 298
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method final getFinalInfoVisFraction()F
    .locals 2

    .line 293
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v1, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .line 600
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 601
    .local v0, "s":[I
    array-length v1, v0

    .line 602
    .local v1, "N":I
    const/4 v2, 0x0

    .line 603
    .local v2, "pressed":Z
    const/4 v3, 0x0

    .line 604
    .local v3, "enabled":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 605
    aget v5, v0, v4

    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    .line 606
    const/4 v2, 0x1

    .line 608
    :cond_0
    aget v5, v0, v4

    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    .line 609
    const/4 v3, 0x1

    .line 604
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 612
    .end local v4    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 613
    sget-object v4, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    return-object v4

    .line 614
    :cond_3
    if-eqz v2, :cond_4

    .line 615
    sget-object v4, Landroid/support/v17/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-object v4

    .line 616
    :cond_4
    if-eqz v3, :cond_5

    .line 617
    sget-object v4, Landroid/view/View;->ENABLED_STATE_SET:[I

    return-object v4

    .line 619
    :cond_5
    sget-object v4, Landroid/view/View;->EMPTY_STATE_SET:[I

    return-object v4
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 512
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mAnimationTrigger:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 513
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 514
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 439
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    .line 442
    .local v1, "currBottom":F
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "currBottom":F
    :goto_0
    iget-object v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_1

    .line 443
    iget-object v4, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 444
    .local v4, "mainView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v5

    float-to-int v6, v3

    iget v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 447
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    .line 448
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    float-to-int v8, v8

    .line 445
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 442
    .end local v4    # "mainView":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v1    # "i":I
    :cond_1
    invoke-direct {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "infoHeight":F
    move v4, v1

    move v1, v2

    .local v1, "i":I
    .local v4, "infoHeight":F
    :goto_1
    iget-object v6, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 456
    iget-object v6, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    .end local v1    # "i":I
    :cond_2
    iget v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 461
    sub-float/2addr v3, v4

    .line 462
    cmpg-float v1, v3, v6

    if-gez v1, :cond_5

    .line 463
    const/4 v3, 0x0

    goto :goto_2

    .line 465
    :cond_3
    iget v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    .line 466
    iget v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v1, v7, :cond_5

    .line 467
    iget v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v4, v1

    goto :goto_2

    .line 470
    :cond_4
    iget v1, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    sub-float/2addr v3, v1

    .line 473
    :cond_5
    :goto_2
    move v1, v2

    .restart local v1    # "i":I
    :goto_3
    iget-object v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 474
    iget-object v7, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 475
    .local v7, "infoView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_7

    .line 476
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 477
    .local v8, "viewHeight":I
    int-to-float v9, v8

    cmpl-float v9, v9, v4

    if-lez v9, :cond_6

    .line 478
    float-to-int v8, v4

    .line 480
    :cond_6
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v9

    float-to-int v10, v3

    iget v11, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 482
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v12, v8

    add-float/2addr v12, v3

    float-to-int v12, v12

    .line 480
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 484
    int-to-float v9, v8

    add-float/2addr v3, v9

    .line 485
    int-to-float v9, v8

    sub-float/2addr v4, v9

    .line 486
    cmpg-float v9, v4, v6

    if-gtz v9, :cond_7

    .line 487
    goto :goto_4

    .line 473
    .end local v7    # "infoView":Landroid/view/View;
    .end local v8    # "viewHeight":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 492
    .end local v1    # "i":I
    :cond_8
    :goto_4
    invoke-direct {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 493
    move v1, v2

    .restart local v1    # "i":I
    :goto_5
    iget-object v6, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 494
    iget-object v6, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 495
    .local v6, "extraView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_9

    .line 496
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    float-to-int v8, v3

    iget v9, v0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 498
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    .line 499
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v3

    float-to-int v10, v10

    .line 496
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 500
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 493
    .end local v6    # "extraView":Landroid/view/View;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 506
    .end local v1    # "i":I
    .end local v4    # "infoHeight":F
    :cond_a
    sub-int v5, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v0, v2, v2, v5, v8}, Landroid/support/v17/leanback/widget/BaseCardView;->onSizeChanged(IIII)V

    .line 507
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 375
    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "state":I
    const/4 v2, 0x0

    .line 378
    .local v2, "mainHeight":I
    const/4 v3, 0x0

    .line 379
    .local v3, "infoHeight":I
    const/4 v4, 0x0

    .line 381
    .local v4, "extraHeight":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->findChildrenViews()V

    .line 383
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 385
    .local v5, "unspecifiedSpec":I
    move v6, v1

    move v1, v0

    .local v1, "i":I
    .local v6, "state":I
    :goto_0
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x8

    if-ge v1, v7, :cond_1

    .line 386
    iget-object v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 387
    .local v7, "mainView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_0

    .line 388
    invoke-virtual {p0, v7, v5, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 389
    iget v8, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 390
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v2, v8

    .line 391
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v8

    invoke-static {v6, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 385
    .end local v7    # "mainView":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/4 v7, 0x2

    div-int/2addr v1, v7

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotX(F)V

    .line 395
    div-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->setPivotY(F)V

    .line 399
    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 401
    .local v1, "cardWidthMeasureSpec":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    .line 402
    move v9, v6

    move v6, v3

    move v3, v0

    .local v3, "i":I
    .local v6, "infoHeight":I
    .local v9, "state":I
    :goto_1
    iget-object v11, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_4

    .line 403
    iget-object v11, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 404
    .local v11, "infoView":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v8, :cond_3

    .line 405
    invoke-virtual {p0, v11, v1, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 406
    iget v12, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mCardType:I

    if-eq v12, v10, :cond_2

    .line 407
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v6, v12

    .line 409
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v9, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 402
    .end local v11    # "infoView":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    .end local v3    # "i":I
    :cond_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasExtraRegion()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 414
    move v3, v0

    .restart local v3    # "i":I
    :goto_2
    iget-object v11, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_7

    .line 415
    iget-object v11, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 416
    .local v11, "extraView":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v8, :cond_5

    .line 417
    invoke-virtual {p0, v11, v1, v5}, Landroid/support/v17/leanback/widget/BaseCardView;->measureChild(Landroid/view/View;II)V

    .line 418
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v4, v12

    .line 419
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v9, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 414
    .end local v11    # "extraView":Landroid/view/View;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 425
    .end local v9    # "state":I
    .local v3, "infoHeight":I
    .local v6, "state":I
    :cond_6
    move v9, v6

    move v6, v3

    .end local v3    # "infoHeight":I
    .local v6, "infoHeight":I
    .restart local v9    # "state":I
    :cond_7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->hasInfoRegion()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v3, v7, :cond_8

    move v0, v10

    nop

    .line 426
    .local v0, "infoAnimating":Z
    :cond_8
    int-to-float v3, v2

    if-eqz v0, :cond_9

    int-to-float v7, v6

    iget v8, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v7, v8

    goto :goto_3

    :cond_9
    int-to-float v7, v6

    :goto_3
    add-float/2addr v3, v7

    int-to-float v7, v4

    add-float/2addr v3, v7

    if-eqz v0, :cond_a

    const/4 v7, 0x0

    goto :goto_4

    :cond_a
    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    :goto_4
    sub-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 431
    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v3, v7

    .line 432
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingRight()I

    move-result v7

    add-int/2addr v3, v7

    .line 431
    invoke-static {v3, p1, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    iget v7, p0, Landroid/support/v17/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 433
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x10

    invoke-static {v7, p2, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 431
    invoke-virtual {p0, v3, v7}, Landroid/support/v17/leanback/widget/BaseCardView;->setMeasuredDimension(II)V

    .line 435
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .line 345
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 346
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 347
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isActivated()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applyActiveState(Z)V

    .line 349
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .line 361
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 363
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/BaseCardView;->applySelectedState(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1005
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

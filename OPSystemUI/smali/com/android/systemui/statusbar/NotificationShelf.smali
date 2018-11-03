.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mDark:Z

.field private mFirstElementRoundness:F

.field private mHasItemsInStableShelf:Z

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mMaxShelfEnd:F

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfAppearTranslation:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

.field private mShowNotificationShelf:Z

.field private mStatusBarHeight:I

.field private mStatusBarPaddingStart:I

.field private mStatusBarState:I

.field private mTmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-string v0, "debug.icon_opening_animations"

    .line 54
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    .line 55
    const-string v0, "debug.icon_scroll_animations"

    .line 56
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    .line 92
    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "x1"    # F

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method private clipTransientViews()V
    .locals 4

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTransientViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTransientView(I)Landroid/view/View;

    move-result-object v1

    .line 382
    .local v1, "transientView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 383
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 384
    .local v2, "transientRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    .line 385
    .end local v2    # "transientRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_1

    .line 386
    :cond_0
    const-string v2, "NotificationShelf"

    const-string v3, "NotificationShelf.clipTransientViews(): Trying to clip non-row transient view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v1    # "transientView":Landroid/view/View;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 2

    .line 706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 5

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07039f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 118
    const v1, 0x7f070616

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 119
    const v1, 0x7f070621

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarPaddingStart:I

    .line 120
    const v1, 0x7f070396

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 121
    const v1, 0x7f0705eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfAppearTranslation:I

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 124
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const v2, 0x7f0703bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const v2, 0x7f0705ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 128
    .local v2, "padding":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v2, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPadding(IIII)V

    .line 129
    const v3, 0x7f0705dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 130
    const v3, 0x7f050035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    .line 131
    const v3, 0x10501a0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    .line 133
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v3, :cond_0

    .line 134
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->setVisibility(I)V

    .line 136
    :cond_0
    return-void
.end method

.method private setFirstElementRoundness(F)V
    .locals 1
    .param p1, "firstElementRoundness"    # F

    .line 393
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 394
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setTopRoundness(FZ)Z

    .line 397
    :cond_0
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1
    .param p1, "hasItemsInStableShelf"    # Z

    .line 806
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 807
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 810
    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1
    .param p1, "hideBackground"    # Z

    .line 719
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 720
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackground()V

    .line 722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutline()V

    .line 724
    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V
    .locals 22
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "transitionAmount"    # F
    .param p3, "iconTransformDistance"    # F
    .param p4, "usingLinearInterpolation"    # Z
    .param p5, "isLastChild"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 630
    .local v3, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v4

    .line 632
    .local v4, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationIcon()Landroid/view/View;

    move-result-object v5

    .line 633
    .local v5, "rowIcon":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContentTranslation()F

    move-result v7

    add-float/2addr v6, v7

    .line 634
    .local v6, "notificationIconPosition":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTransformingIntoShelf()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 635
    .local v7, "stayingInShelf":Z
    :goto_0
    if-eqz p4, :cond_1

    if-nez v7, :cond_1

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v10

    sub-float v6, v10, p3

    .line 642
    :cond_1
    const/4 v10, 0x0

    .line 644
    .local v10, "notificationIconSize":F
    if-eqz v5, :cond_2

    .line 645
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v11

    .line 646
    .local v11, "iconTopPadding":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v10, v12

    goto :goto_1

    .line 648
    .end local v11    # "iconTopPadding":I
    :cond_2
    iget v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 650
    .restart local v11    # "iconTopPadding":I
    :goto_1
    int-to-float v12, v11

    add-float/2addr v6, v12

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v12

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 652
    .local v12, "shelfIconPosition":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v14

    iget v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    int-to-float v8, v8

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v13, v8

    add-float/2addr v12, v13

    .line 653
    sub-float v13, v6, v12

    const/4 v8, 0x0

    invoke-static {v13, v8, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v13

    .line 657
    .local v13, "iconYTranslation":F
    iget v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v14

    mul-float/2addr v8, v14

    .line 658
    .local v8, "shelfIconSize":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 659
    .local v14, "alpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    .line 660
    .local v17, "noIcon":Z
    if-eqz v17, :cond_3

    .line 662
    move v14, v2

    .line 663
    const/high16 v16, 0x40000000    # 2.0f

    div-float v10, v8, v16

    .line 666
    .end local v14    # "alpha":F
    .local v18, "alpha":F
    :cond_3
    move/from16 v18, v14

    invoke-static {v10, v8, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    .line 668
    .local v14, "newSize":F
    if-eqz v4, :cond_c

    .line 669
    div-float v9, v14, v8

    iput v9, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 670
    iget v9, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    iput v9, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    .line 671
    const/4 v9, 0x0

    cmpl-float v16, v2, v9

    if-nez v16, :cond_4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isAnimating(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDrawingAppearAnimation()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 673
    .local v9, "isAppearing":Z
    :goto_3
    if-eqz v9, :cond_6

    .line 674
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 675
    const/4 v2, 0x0

    iput v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 677
    :cond_6
    move/from16 v2, v18

    iput v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 678
    .end local v18    # "alpha":F
    .local v2, "alpha":F
    iput v13, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->yTranslation:F

    .line 679
    if-eqz v7, :cond_7

    .line 680
    move/from16 v19, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "alpha":F
    .local v19, "alpha":F
    iput v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 681
    iput v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 682
    iput v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 683
    iput v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    .line 684
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    goto :goto_4

    .line 686
    .end local v19    # "alpha":F
    .restart local v2    # "alpha":F
    :cond_7
    move/from16 v19, v2

    .end local v2    # "alpha":F
    .restart local v19    # "alpha":F
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz p5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v15

    if-nez v15, :cond_9

    .line 687
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v15

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v15, v2

    if-lez v2, :cond_a

    .line 688
    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 690
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getBackgroundColorWithoutTint()I

    move-result v2

    .line 691
    .local v2, "backgroundColor":I
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result v0

    .line 692
    .local v0, "shelfColor":I
    if-nez v17, :cond_b

    if-eqz v0, :cond_b

    .line 693
    move/from16 v20, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    .end local v2    # "backgroundColor":I
    .local v20, "backgroundColor":I
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v2

    .line 694
    .local v2, "iconColor":I
    iget v1, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .end local v2    # "iconColor":I
    goto :goto_5

    .line 697
    .end local v20    # "backgroundColor":I
    .local v2, "backgroundColor":I
    :cond_b
    move/from16 v20, v2

    .end local v2    # "backgroundColor":I
    .restart local v20    # "backgroundColor":I
    :goto_5
    iput v0, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .end local v0    # "shelfColor":I
    .end local v9    # "isAppearing":Z
    .end local v20    # "backgroundColor":I
    goto :goto_6

    .line 699
    .end local v19    # "alpha":F
    .restart local v18    # "alpha":F
    :cond_c
    move/from16 v19, v18

    .end local v18    # "alpha":F
    .restart local v19    # "alpha":F
    :goto_6
    return-void
.end method

.method private setOpenedAmount(F)V
    .locals 7
    .param p1, "openedAmount"    # F

    .line 759
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 760
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelFullWidth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    const/high16 p1, 0x3f800000    # 1.0f

    .line 765
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 766
    .local v0, "start":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 770
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 771
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 769
    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 773
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 774
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v2

    .line 775
    .local v2, "hasOverflow":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v3

    .line 776
    .local v3, "collapsedPadding":I
    if-nez v2, :cond_3

    .line 779
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getNoOverflowExtraPadding()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    .line 782
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPartialOverflowExtraPadding()I

    move-result v4

    sub-int/2addr v3, v4

    .line 784
    :goto_1
    int-to-float v4, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 785
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v5

    int-to-float v5, v5

    .line 784
    invoke-static {v4, v5, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v4

    .line 787
    .local v4, "padding":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    .line 788
    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 789
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v6

    int-to-float v6, v6

    .line 788
    invoke-static {v5, v6, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    .line 790
    .local v5, "paddingStart":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 791
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    .line 792
    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 413
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 414
    .local v0, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 415
    .local v1, "needsContinuousClipping":Z
    :goto_0
    const v4, 0x7f0a00d8

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    move v2, v3

    nop

    .line 416
    .local v2, "isContinuousClipping":Z
    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 417
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 418
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    new-instance v5, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v5, p0, v0, v3, p1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 432
    .local v5, "predrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 433
    new-instance v6, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {v6, p0, v0, v3, v5}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 446
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 448
    .end local v3    # "observer":Landroid/view/ViewTreeObserver;
    .end local v5    # "predrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :cond_2
    return-void
.end method

.method private updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F
    .locals 20
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expandAmount"    # F
    .param p3, "scrolling"    # Z
    .param p4, "scrollingFast"    # Z
    .param p5, "expandingAnimated"    # Z
    .param p6, "isLastChild"    # Z

    move-object/from16 v9, p0

    move/from16 v10, p2

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 484
    .local v11, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-direct {v9, v11}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v12

    .line 485
    .local v12, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    const/4 v0, 0x0

    if-nez v12, :cond_0

    .line 486
    return v0

    .line 490
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v13

    .line 491
    .local v13, "viewStart":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    iget v2, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v1, v2

    .line 492
    .local v1, "fullHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    .line 493
    .local v2, "iconTransformDistance":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 494
    int-to-float v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 495
    if-eqz p6, :cond_1

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v3

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 497
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 500
    :cond_1
    int-to-float v3, v1

    add-float v14, v13, v3

    .line 501
    .local v14, "viewEnd":F
    const/high16 v5, -0x80000000

    if-eqz p5, :cond_3

    iget-object v6, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 502
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-nez v6, :cond_3

    .line 510
    iget-object v6, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->getIntrinsicPadding()I

    move-result v6

    iget-object v7, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 511
    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 512
    .local v6, "position":F
    iget v7, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v7, v15

    .line 513
    .local v7, "maxShelfStart":I
    int-to-float v0, v7

    cmpg-float v0, v6, v0

    if-gez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v6

    int-to-float v3, v7

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    .line 514
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    .line 515
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 516
    iput v5, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 518
    iget v0, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v0, v15

    int-to-float v0, v0

    sub-float/2addr v0, v6

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    .line 520
    .local v0, "forceInShelf":Z
    if-nez v0, :cond_4

    .line 523
    iget v3, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v3, v15

    int-to-float v3, v3

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .end local v0    # "forceInShelf":Z
    .end local v6    # "position":F
    .end local v7    # "maxShelfStart":I
    goto :goto_1

    .line 530
    :cond_3
    move-object/from16 v8, p1

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v15

    .line 531
    .local v15, "shelfStart":F
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 532
    iget v1, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 533
    iget v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    int-to-float v0, v0

    .line 535
    .end local v2    # "iconTransformDistance":F
    .local v0, "iconTransformDistance":F
    move/from16 v18, v0

    move v7, v1

    goto :goto_2

    .end local v0    # "iconTransformDistance":F
    .restart local v2    # "iconTransformDistance":F
    :cond_5
    move v7, v1

    move/from16 v18, v2

    .end local v1    # "fullHeight":I
    .end local v2    # "iconTransformDistance":F
    .local v7, "fullHeight":I
    .local v18, "iconTransformDistance":F
    :goto_2
    const/4 v0, 0x1

    .line 536
    .local v0, "fullyInOrOut":Z
    cmpl-float v1, v14, v15

    if-ltz v1, :cond_9

    iget-object v1, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    iget-object v1, v9, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 537
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_7

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-nez v1, :cond_9

    .line 539
    :cond_7
    cmpg-float v1, v13, v15

    if-gez v1, :cond_8

    .line 540
    sub-float v1, v15, v13

    int-to-float v2, v7

    div-float/2addr v1, v2

    .line 541
    .local v1, "fullAmount":F
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 542
    sget-object v2, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 544
    .local v2, "interpolatedAmount":F
    invoke-static {v2, v1, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    .line 546
    sub-float v3, v4, v2

    .line 548
    .local v3, "fullTransitionAmount":F
    sub-float v6, v15, v13

    div-float v6, v6, v18

    .line 549
    .local v6, "iconTransitionAmount":F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 550
    sub-float/2addr v4, v6

    .line 551
    .end local v6    # "iconTransitionAmount":F
    .local v4, "iconTransitionAmount":F
    const/4 v0, 0x0

    .line 552
    .end local v1    # "fullAmount":F
    .end local v2    # "interpolatedAmount":F
    nop

    .line 558
    move/from16 v16, v0

    move/from16 v19, v3

    move v2, v4

    goto :goto_3

    .line 553
    .end local v3    # "fullTransitionAmount":F
    .end local v4    # "iconTransitionAmount":F
    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 554
    .local v1, "fullTransitionAmount":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 558
    .local v2, "iconTransitionAmount":F
    move/from16 v16, v0

    move/from16 v19, v1

    goto :goto_3

    .line 557
    .end local v1    # "fullTransitionAmount":F
    .end local v2    # "iconTransitionAmount":F
    :cond_9
    const/4 v1, 0x0

    .line 558
    .restart local v1    # "fullTransitionAmount":F
    move/from16 v16, v0

    move/from16 v19, v1

    const/4 v2, 0x0

    .line 560
    .end local v0    # "fullyInOrOut":Z
    .end local v1    # "fullTransitionAmount":F
    .restart local v2    # "iconTransitionAmount":F
    .local v16, "fullyInOrOut":Z
    .local v19, "fullTransitionAmount":F
    :goto_3
    if-eqz v16, :cond_a

    if-nez p5, :cond_a

    iget-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v0, :cond_a

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    .line 562
    iput v5, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 564
    :cond_a
    move-object v0, v9

    move-object v1, v8

    move/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v17, v7

    move/from16 v7, p5

    .end local v7    # "fullHeight":I
    .local v17, "fullHeight":I
    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V

    .line 566
    return v19
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 400
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    .line 401
    .local v0, "maxTop":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 402
    .local v1, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    .line 403
    .local v2, "shelfIconPosition":F
    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    sub-float v3, v0, v2

    float-to-int v3, v3

    .line 405
    .local v3, "top":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 406
    .local v4, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 407
    .end local v3    # "top":I
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 408
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 410
    :goto_0
    return-void
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V
    .locals 15
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "iconTransitionAmount"    # F
    .param p3, "fullTransitionAmount"    # F
    .param p4, "iconTransformDistance"    # F
    .param p5, "scrolling"    # Z
    .param p6, "scrollingFast"    # Z
    .param p7, "expandingAnimated"    # Z
    .param p8, "isLastChild"    # Z

    move-object v6, p0

    move-object/from16 v7, p1

    .line 572
    move/from16 v8, p8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 573
    .local v9, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-direct {v6, v9}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v10

    .line 574
    .local v10, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-nez v10, :cond_0

    .line 575
    return-void

    .line 577
    :cond_0
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v11, v0

    .line 578
    .local v11, "forceInShelf":Z
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    const/4 v4, 0x0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    move v5, v0

    .line 579
    .local v5, "clampedAmount":F
    cmpl-float v0, v5, p3

    if-nez v0, :cond_9

    .line 580
    if-nez p6, :cond_3

    if-eqz p7, :cond_4

    :cond_3
    if-nez v11, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 581
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v0, :cond_5

    cmpl-float v0, p3, v4

    if-nez v0, :cond_5

    if-eqz p5, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    :goto_4
    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 583
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v0, :cond_7

    cmpl-float v0, p3, v4

    if-nez v0, :cond_7

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 584
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 585
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v0, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v12

    sub-float/2addr v0, v12

    .line 586
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 588
    :cond_9
    if-nez v11, :cond_b

    if-nez p6, :cond_a

    if-eqz p7, :cond_b

    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v0, :cond_b

    .line 589
    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 590
    :cond_a
    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->cancelAnimations(Landroid/view/View;)V

    .line 591
    iput-boolean v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 592
    iput-boolean v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 594
    :cond_b
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 595
    iput-boolean v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 597
    :cond_c
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v0, :cond_d

    .line 598
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 601
    :cond_d
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDarkAmount()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v0

    if-nez v0, :cond_f

    .line 602
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_e
    move v13, v4

    :goto_7
    move v0, v13

    goto :goto_a

    .line 603
    :cond_f
    if-nez v8, :cond_12

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v0, :cond_12

    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v0, :cond_10

    goto :goto_9

    .line 608
    :cond_10
    move v0, v5

    .line 609
    .local v0, "transitionAmount":F
    iget v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_11

    iget-boolean v3, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_8

    :cond_11
    move v3, v1

    :goto_8
    iput-boolean v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    goto :goto_a

    .line 605
    .end local v0    # "transitionAmount":F
    :cond_12
    :goto_9
    move/from16 v0, p2

    .line 612
    .local v12, "transitionAmount":F
    :goto_a
    move v12, v0

    .line 613
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v0, :cond_13

    goto :goto_b

    .line 615
    :cond_13
    move v0, v12

    goto :goto_c

    .line 614
    :cond_14
    :goto_b
    nop

    .line 615
    move/from16 v0, p3

    :goto_c
    iput v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 616
    iput v5, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 618
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 617
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_16

    if-nez v8, :cond_15

    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-eqz v0, :cond_16

    .line 619
    :cond_15
    nop

    .line 620
    move/from16 v4, p2

    nop

    .line 621
    .local v4, "contentTransformationAmount":F
    :cond_16
    invoke-virtual {v7, v4, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    .line 622
    cmpl-float v0, v5, v12

    if-eqz v0, :cond_17

    move v13, v2

    goto :goto_d

    :cond_17
    move v13, v1

    :goto_d
    move-object v0, v6

    move-object v1, v7

    move v2, v12

    move/from16 v3, p4

    move v14, v4

    move v4, v13

    .end local v4    # "contentTransformationAmount":F
    .local v14, "contentTransformationAmount":F
    move v13, v5

    move v5, v8

    .end local v5    # "clampedAmount":F
    .local v13, "clampedAmount":F
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V

    .line 624
    return-void
.end method

.method private updateInteractiveness()V
    .locals 2

    .line 833
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 835
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setClickable(Z)V

    .line 836
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setFocusable(Z)V

    .line 837
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 838
    :cond_1
    const/4 v1, 0x4

    .line 837
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setImportantForAccessibility(I)V

    .line 839
    return-void
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "notificationClipEnd"    # F

    .line 452
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 453
    .local v0, "viewEnd":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 454
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 455
    .local v1, "isPinned":Z
    :goto_0
    cmpl-float v3, v0, p2

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 456
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_4

    .line 457
    :cond_2
    sub-float v2, v0, p2

    float-to-int v2, v2

    .line 458
    .local v2, "clipBottomAmount":I
    if-eqz v1, :cond_3

    .line 459
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 462
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 463
    .end local v2    # "clipBottomAmount":I
    goto :goto_1

    .line 464
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 466
    :goto_1
    return-void
.end method

.method private updateRelativeOffset()V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLocationOnScreen([I)V

    .line 755
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 756
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 112
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 113
    return-void
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    return-object v0
.end method

.method public fadeInTranslating()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getTranslationY()F

    move-result v0

    .line 155
    .local v0, "translation":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfAppearTranslation:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setTranslationY(F)V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAlpha(F)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 160
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 163
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v4, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 164
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 167
    return-void
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public getNotGoneIndex()I
    .locals 1

    .line 802
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return v0
.end method

.method public getNotificationMergeSize()I
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public hasItemsInStableShelf()Z
    .locals 1

    .line 817
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 861
    const/4 v0, 0x0

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    .line 843
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return v0
.end method

.method protected needsOutline()Z
    .locals 1

    .line 732
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->needsOutline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 140
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 142
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 97
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipChildren(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipToPadding(Z)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToActualHeight(Z)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipChildren(Z)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToPadding(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setBottomRoundness(FZ)Z

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 108
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 866
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 867
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 868
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 869
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 872
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11009b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 873
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 875
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 742
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 743
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 747
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 748
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipBounds(Landroid/graphics/Rect;)V

    .line 749
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 880
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 881
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 851
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 853
    if-nez p1, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 857
    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1
    .param p1, "collapsedIcons"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 821
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 823
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 148
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 151
    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .line 471
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    .line 472
    const/4 p1, 0x0

    .line 474
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    .line 475
    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .line 795
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 796
    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0
    .param p1, "maxShelfEnd"    # F

    .line 847
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxShelfEnd:F

    .line 848
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .line 826
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    .line 827
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 830
    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .line 737
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateAppearance()V
    .locals 42

    .line 243
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    .line 244
    return-void

    .line 247
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v8

    .line 249
    .local v8, "shelfStart":F
    const/4 v0, 0x0

    .line 250
    .local v0, "numViewsInShelf":F
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v9

    .line 251
    .local v9, "lastChild":Landroid/view/View;
    const/4 v10, -0x1

    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 252
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 253
    .local v11, "interpolationStart":F
    const/4 v1, 0x0

    .line 254
    .local v1, "expandAmount":F
    cmpl-float v2, v8, v11

    const/high16 v12, 0x3f800000    # 1.0f

    if-ltz v2, :cond_1

    .line 255
    sub-float v2, v8, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 256
    .end local v1    # "expandAmount":F
    .local v2, "expandAmount":F
    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 259
    .end local v2    # "expandAmount":F
    .local v13, "expandAmount":F
    :cond_1
    move v13, v1

    const/4 v1, 0x0

    .line 260
    .local v1, "notGoneIndex":I
    const/4 v2, 0x0

    .line 261
    .local v2, "colorOfViewBeforeLast":I
    const/4 v3, 0x0

    .line 262
    .local v3, "backgroundForceHidden":Z
    iget-boolean v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v4, :cond_2

    iget-object v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$200(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 263
    const/4 v3, 0x1

    .line 265
    .end local v3    # "backgroundForceHidden":Z
    .local v14, "backgroundForceHidden":Z
    :cond_2
    move v14, v3

    const/4 v6, 0x0

    .line 266
    .local v6, "colorTwoBefore":I
    const/4 v15, 0x0

    .line 267
    .local v15, "previousColor":I
    const/16 v16, 0x0

    .line 268
    .local v16, "transitionAmount":F
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v17

    .line 269
    .local v17, "currentScrollVelocity":F
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v3, v3

    cmpl-float v3, v17, v3

    const/16 v18, 0x1

    if-gtz v3, :cond_4

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 270
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 271
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandingVelocity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v4, v18

    .line 272
    .local v4, "scrollingFast":Z
    :goto_1
    const/4 v3, 0x0

    cmpl-float v19, v17, v3

    if-lez v19, :cond_5

    move/from16 v19, v18

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    :goto_2
    move v12, v3

    move/from16 v3, v19

    .line 273
    .local v3, "scrolling":Z
    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 274
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelTracking()Z

    move-result v5

    if-nez v5, :cond_6

    move/from16 v5, v18

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    const/4 v12, 0x0

    .line 275
    .local v5, "expandingAnimated":Z
    iget-object v12, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v12

    .line 276
    .local v12, "baseZHeight":I
    const/16 v19, 0x0

    .line 277
    .local v19, "backgroundTop":I
    const/16 v20, 0x0

    .line 279
    .local v20, "firstElementRoundness":F
    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v15, v19

    move/from16 v16, v0

    move/from16 v19, v2

    const/4 v0, 0x0

    move v2, v1

    move v1, v6

    move/from16 v6, v20

    .end local v20    # "firstElementRoundness":F
    .local v0, "i":I
    .local v1, "colorTwoBefore":I
    .local v2, "notGoneIndex":I
    .local v6, "firstElementRoundness":F
    .local v15, "backgroundTop":I
    .local v16, "numViewsInShelf":F
    .local v19, "colorOfViewBeforeLast":I
    .local v21, "previousColor":I
    .local v22, "transitionAmount":F
    :goto_4
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v10

    move/from16 v23, v1

    .end local v1    # "colorTwoBefore":I
    .local v23, "colorTwoBefore":I
    if-ge v0, v10, :cond_1c

    .line 280
    iget-object v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableView;

    .line 282
    .local v10, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v1, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1b

    .line 283
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    move/from16 v25, v0

    const/16 v0, 0x8

    if-ne v1, v0, :cond_7

    .line 284
    .end local v0    # "i":I
    .local v25, "i":I
    nop

    .line 279
    move v10, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v31, v9

    move/from16 v33, v11

    move/from16 v39, v21

    move/from16 v9, v23

    const/4 v0, 0x0

    move v11, v6

    move/from16 v6, v22

    goto/16 :goto_12

    .line 287
    :cond_7
    move-object v1, v10

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 289
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v0

    move/from16 v26, v2

    int-to-float v2, v12

    .end local v2    # "notGoneIndex":I
    .local v26, "notGoneIndex":I
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_9

    .line 290
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v0, v18

    :goto_6
    move/from16 v20, v0

    .line 291
    .local v20, "aboveShelf":Z
    if-ne v10, v9, :cond_a

    move/from16 v0, v18

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    move/from16 v24, v0

    .line 292
    .local v24, "isLastChild":Z
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v27

    .line 293
    .local v27, "rowTranslationY":F
    if-eqz v24, :cond_b

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->isInShelf()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b
    if-nez v20, :cond_f

    if-eqz v14, :cond_c

    goto :goto_8

    .line 296
    :cond_c
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v0, v0

    sub-float v0, v8, v0

    .line 297
    .local v0, "notificationClipEnd":F
    sub-float v2, v0, v27

    .line 298
    .local v2, "height":F
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    move-result v28

    if-nez v28, :cond_d

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v0

    .end local v0    # "notificationClipEnd":F
    .local v29, "notificationClipEnd":F
    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_e

    .line 301
    nop

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v27, v0

    .line 301
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .end local v2    # "height":F
    .end local v29    # "notificationClipEnd":F
    .restart local v0    # "notificationClipEnd":F
    goto :goto_9

    .line 305
    :cond_d
    move/from16 v29, v0

    .end local v0    # "notificationClipEnd":F
    .restart local v29    # "notificationClipEnd":F
    :cond_e
    move/from16 v2, v29

    goto :goto_a

    .line 294
    .end local v29    # "notificationClipEnd":F
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v8

    .line 305
    .local v2, "notificationClipEnd":F
    :goto_9
    move v2, v0

    :goto_a
    invoke-direct {v7, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    .line 306
    move-object v0, v7

    move-object/from16 v30, v1

    move-object/from16 v31, v9

    move/from16 v9, v23

    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v23    # "colorTwoBefore":I
    .local v9, "colorTwoBefore":I
    .local v30, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v31, "lastChild":Landroid/view/View;
    move/from16 v29, v2

    move-object/from16 v32, v10

    move/from16 v10, v26

    move v2, v13

    .end local v2    # "notificationClipEnd":F
    .end local v26    # "notGoneIndex":I
    .local v10, "notGoneIndex":I
    .restart local v29    # "notificationClipEnd":F
    .local v32, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move/from16 v33, v11

    move v11, v6

    move/from16 v6, v24

    .end local v6    # "firstElementRoundness":F
    .local v11, "firstElementRoundness":F
    .local v33, "interpolationStart":F
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F

    move-result v0

    .line 308
    .local v0, "inShelfAmount":F
    add-float v16, v16, v0

    .line 309
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v2

    .line 310
    .end local v30    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v2, "ownColorUntinted":I
    cmpl-float v6, v27, v8

    if-ltz v6, :cond_11

    iget v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    move/from16 v34, v3

    const/4 v3, -0x1

    if-ne v6, v3, :cond_10

    .line 311
    .end local v3    # "scrolling":Z
    .local v34, "scrolling":Z
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 312
    move/from16 v3, v21

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->setTintColor(I)V

    .line 313
    .end local v21    # "previousColor":I
    .local v3, "previousColor":I
    move/from16 v6, v22

    invoke-virtual {v7, v9, v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setOverrideTintColor(IF)V

    .line 319
    .end local v22    # "transitionAmount":F
    .local v6, "transitionAmount":F
    move/from16 v35, v4

    move/from16 v36, v5

    goto :goto_c

    .line 315
    .end local v3    # "previousColor":I
    .end local v6    # "transitionAmount":F
    .restart local v21    # "previousColor":I
    .restart local v22    # "transitionAmount":F
    :cond_10
    move/from16 v3, v21

    move/from16 v6, v22

    .end local v21    # "previousColor":I
    .end local v22    # "transitionAmount":F
    .restart local v3    # "previousColor":I
    .restart local v6    # "transitionAmount":F
    goto :goto_b

    .end local v6    # "transitionAmount":F
    .end local v34    # "scrolling":Z
    .local v3, "scrolling":Z
    .restart local v21    # "previousColor":I
    .restart local v22    # "transitionAmount":F
    :cond_11
    move/from16 v34, v3

    move/from16 v3, v21

    move/from16 v6, v22

    .end local v21    # "previousColor":I
    .end local v22    # "transitionAmount":F
    .local v3, "previousColor":I
    .restart local v6    # "transitionAmount":F
    .restart local v34    # "scrolling":Z
    :goto_b
    move/from16 v35, v4

    iget v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .end local v4    # "scrollingFast":Z
    .local v35, "scrollingFast":Z
    move/from16 v36, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 316
    .end local v5    # "expandingAnimated":Z
    .local v36, "expandingAnimated":Z
    move v4, v3

    .line 317
    .end local v9    # "colorTwoBefore":I
    .local v4, "colorTwoBefore":I
    move/from16 v22, v0

    .line 319
    .end local v6    # "transitionAmount":F
    .restart local v22    # "transitionAmount":F
    move/from16 v6, v22

    goto :goto_d

    .end local v4    # "colorTwoBefore":I
    .end local v22    # "transitionAmount":F
    .restart local v6    # "transitionAmount":F
    .restart local v9    # "colorTwoBefore":I
    :cond_12
    :goto_c
    move v4, v9

    .end local v9    # "colorTwoBefore":I
    .restart local v4    # "colorTwoBefore":I
    :goto_d
    if-eqz v24, :cond_14

    .line 320
    if-nez v19, :cond_13

    .line 321
    move/from16 v19, v2

    .line 323
    .end local v19    # "colorOfViewBeforeLast":I
    .local v5, "colorOfViewBeforeLast":I
    :cond_13
    move/from16 v5, v19

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    .line 328
    move/from16 v37, v0

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_e

    .line 325
    .end local v5    # "colorOfViewBeforeLast":I
    .restart local v19    # "colorOfViewBeforeLast":I
    :cond_14
    move v5, v2

    .line 326
    .end local v19    # "colorOfViewBeforeLast":I
    .restart local v5    # "colorOfViewBeforeLast":I
    move/from16 v37, v0

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    .line 328
    .end local v0    # "inShelfAmount":F
    .local v37, "inShelfAmount":F
    :goto_e
    if-nez v10, :cond_15

    if-nez v20, :cond_16

    .line 329
    :cond_15
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 331
    :cond_16
    if-nez v10, :cond_1a

    .line 332
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 333
    .local v0, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v9

    .line 334
    .local v9, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v9, :cond_17

    move-object/from16 v38, v0

    iget v0, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .end local v0    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .local v38, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v19

    if-nez v0, :cond_18

    .line 336
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v19

    sub-float v0, v0, v19

    float-to-int v15, v0

    .line 337
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCurrentTopRoundness()F

    move-result v0

    .line 345
    .end local v11    # "firstElementRoundness":F
    .local v0, "firstElementRoundness":F
    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v41, v5

    goto :goto_11

    .line 338
    .end local v38    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .local v0, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v11    # "firstElementRoundness":F
    :cond_17
    move-object/from16 v38, v0

    .end local v0    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v38    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_18
    if-nez v9, :cond_1a

    .line 339
    const-string v0, "NotificationShelf"

    move/from16 v39, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "previousColor":I
    .local v39, "previousColor":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v40, v4

    const-string v4, "iconState is null. ExpandedIcon: "

    .end local v4    # "colorTwoBefore":I
    .local v40, "colorTwoBefore":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_19

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v41, v5

    const-string v5, "\n icon parent: "

    .end local v5    # "colorOfViewBeforeLast":I
    .local v41, "colorOfViewBeforeLast":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .end local v41    # "colorOfViewBeforeLast":I
    .restart local v5    # "colorOfViewBeforeLast":I
    :cond_19
    move/from16 v41, v5

    .end local v5    # "colorOfViewBeforeLast":I
    .restart local v41    # "colorOfViewBeforeLast":I
    const-string v4, ""

    :goto_f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \n number of notifications: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 342
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v38    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    goto :goto_10

    .line 345
    .end local v39    # "previousColor":I
    .end local v40    # "colorTwoBefore":I
    .end local v41    # "colorOfViewBeforeLast":I
    .restart local v3    # "previousColor":I
    .restart local v4    # "colorTwoBefore":I
    .restart local v5    # "colorOfViewBeforeLast":I
    :cond_1a
    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v41, v5

    .end local v3    # "previousColor":I
    .end local v4    # "colorTwoBefore":I
    .end local v5    # "colorOfViewBeforeLast":I
    .restart local v39    # "previousColor":I
    .restart local v40    # "colorTwoBefore":I
    .restart local v41    # "colorOfViewBeforeLast":I
    :goto_10
    move v0, v11

    .end local v11    # "firstElementRoundness":F
    .local v0, "firstElementRoundness":F
    :goto_11
    add-int/lit8 v3, v10, 0x1

    .line 346
    .end local v10    # "notGoneIndex":I
    .local v3, "notGoneIndex":I
    move v1, v2

    .line 279
    .end local v2    # "ownColorUntinted":I
    .end local v20    # "aboveShelf":Z
    .end local v24    # "isLastChild":Z
    .end local v27    # "rowTranslationY":F
    .end local v29    # "notificationClipEnd":F
    .end local v32    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v37    # "inShelfAmount":F
    .end local v39    # "previousColor":I
    .local v1, "previousColor":I
    move/from16 v21, v1

    move v2, v3

    move/from16 v22, v6

    move/from16 v1, v40

    move/from16 v19, v41

    move v6, v0

    const/4 v0, 0x0

    goto :goto_13

    .end local v1    # "previousColor":I
    .end local v25    # "i":I
    .end local v31    # "lastChild":Landroid/view/View;
    .end local v33    # "interpolationStart":F
    .end local v34    # "scrolling":Z
    .end local v35    # "scrollingFast":Z
    .end local v36    # "expandingAnimated":Z
    .end local v40    # "colorTwoBefore":I
    .end local v41    # "colorOfViewBeforeLast":I
    .local v0, "i":I
    .local v2, "notGoneIndex":I
    .local v3, "scrolling":Z
    .local v4, "scrollingFast":Z
    .local v5, "expandingAnimated":Z
    .local v6, "firstElementRoundness":F
    .local v9, "lastChild":Landroid/view/View;
    .local v11, "interpolationStart":F
    .restart local v19    # "colorOfViewBeforeLast":I
    .restart local v21    # "previousColor":I
    .restart local v22    # "transitionAmount":F
    .restart local v23    # "colorTwoBefore":I
    :cond_1b
    move/from16 v25, v0

    move v10, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v31, v9

    move/from16 v33, v11

    move/from16 v39, v21

    move/from16 v9, v23

    const/4 v0, 0x0

    move v11, v6

    move/from16 v6, v22

    .end local v0    # "i":I
    .end local v2    # "notGoneIndex":I
    .end local v3    # "scrolling":Z
    .end local v4    # "scrollingFast":Z
    .end local v5    # "expandingAnimated":Z
    .end local v21    # "previousColor":I
    .end local v22    # "transitionAmount":F
    .end local v23    # "colorTwoBefore":I
    .local v6, "transitionAmount":F
    .local v9, "colorTwoBefore":I
    .restart local v10    # "notGoneIndex":I
    .local v11, "firstElementRoundness":F
    .restart local v25    # "i":I
    .restart local v31    # "lastChild":Landroid/view/View;
    .restart local v33    # "interpolationStart":F
    .restart local v34    # "scrolling":Z
    .restart local v35    # "scrollingFast":Z
    .restart local v36    # "expandingAnimated":Z
    .restart local v39    # "previousColor":I
    :goto_12
    move/from16 v22, v6

    move v1, v9

    move v2, v10

    move v6, v11

    move/from16 v21, v39

    .end local v9    # "colorTwoBefore":I
    .end local v10    # "notGoneIndex":I
    .end local v11    # "firstElementRoundness":F
    .end local v39    # "previousColor":I
    .local v1, "colorTwoBefore":I
    .restart local v2    # "notGoneIndex":I
    .local v6, "firstElementRoundness":F
    .restart local v21    # "previousColor":I
    .restart local v22    # "transitionAmount":F
    :goto_13
    add-int/lit8 v3, v25, 0x1

    .end local v25    # "i":I
    .local v3, "i":I
    move v0, v3

    move-object/from16 v9, v31

    move/from16 v11, v33

    move/from16 v3, v34

    move/from16 v4, v35

    move/from16 v5, v36

    const/4 v10, -0x1

    goto/16 :goto_4

    .line 349
    .end local v1    # "colorTwoBefore":I
    .end local v31    # "lastChild":Landroid/view/View;
    .end local v33    # "interpolationStart":F
    .end local v34    # "scrolling":Z
    .end local v35    # "scrollingFast":Z
    .end local v36    # "expandingAnimated":Z
    .local v3, "scrolling":Z
    .restart local v4    # "scrollingFast":Z
    .restart local v5    # "expandingAnimated":Z
    .local v9, "lastChild":Landroid/view/View;
    .local v11, "interpolationStart":F
    .restart local v23    # "colorTwoBefore":I
    :cond_1c
    move v10, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v31, v9

    move/from16 v33, v11

    move/from16 v39, v21

    move/from16 v9, v23

    const/4 v0, 0x0

    move v11, v6

    move/from16 v6, v22

    .end local v2    # "notGoneIndex":I
    .end local v3    # "scrolling":Z
    .end local v4    # "scrollingFast":Z
    .end local v5    # "expandingAnimated":Z
    .end local v21    # "previousColor":I
    .end local v22    # "transitionAmount":F
    .end local v23    # "colorTwoBefore":I
    .local v6, "transitionAmount":F
    .local v9, "colorTwoBefore":I
    .restart local v10    # "notGoneIndex":I
    .local v11, "firstElementRoundness":F
    .restart local v31    # "lastChild":Landroid/view/View;
    .restart local v33    # "interpolationStart":F
    .restart local v34    # "scrolling":Z
    .restart local v35    # "scrollingFast":Z
    .restart local v36    # "expandingAnimated":Z
    .restart local v39    # "previousColor":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->clipTransientViews()V

    .line 351
    invoke-virtual {v7, v15}, Lcom/android/systemui/statusbar/NotificationShelf;->setBackgroundTop(I)V

    .line 352
    invoke-direct {v7, v11}, Lcom/android/systemui/statusbar/NotificationShelf;->setFirstElementRoundness(F)V

    .line 353
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 354
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 355
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 356
    move v1, v0

    .local v1, "i":I
    :goto_14
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 357
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 358
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1e

    .line 359
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1d

    .line 360
    goto :goto_15

    .line 362
    :cond_1d
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 363
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 364
    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_15

    .line 356
    :cond_1e
    const/16 v4, 0x8

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 366
    .end local v1    # "i":I
    :cond_1f
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v16, v1

    if-gez v1, :cond_20

    move/from16 v1, v18

    goto :goto_16

    :cond_20
    move v1, v0

    .line 367
    .local v1, "hideBackground":Z
    :goto_16
    if-nez v1, :cond_22

    if-eqz v14, :cond_21

    goto :goto_17

    :cond_21
    goto :goto_18

    :cond_22
    :goto_17
    move/from16 v0, v18

    :goto_18
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 368
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_23

    .line 369
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 371
    :cond_23
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 16
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v0, p0

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v1

    .line 186
    .local v1, "lastView":Landroid/view/View;
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v2, v5

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v5

    add-float/2addr v2, v5

    .line 189
    .local v2, "maxShelfEnd":F
    move-object/from16 v5, p1

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v6

    .line 192
    .local v6, "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v6, :cond_0

    .line 193
    move v7, v2

    .line 194
    .local v7, "viewEnd":F
    const-string v8, "NotificationShelf"

    const-string v9, "lastViewState is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v7    # "viewEnd":F
    :cond_0
    iget v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v8, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 198
    .restart local v7    # "viewEnd":F
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 200
    :goto_0
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v9

    iput v9, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    .line 202
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v9

    .line 202
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 204
    .local v8, "awakenTranslation":F
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDarkTopPadding()I

    move-result v9

    int-to-float v9, v9

    .line 205
    .local v9, "darkTranslation":F
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 206
    move v10, v11

    goto :goto_1

    :cond_1
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDarkAmount()F

    move-result v10

    .line 207
    .local v10, "yRatio":F
    :goto_1
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v8, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    iput v13, v12, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    .line 208
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v13

    int-to-float v13, v13

    iput v13, v12, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->zTranslation:F

    .line 209
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v12, v12, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v13

    sub-float/2addr v12, v13

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 211
    .local v12, "openedAmount":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 212
    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v14, v12}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 213
    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v4, v14, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->clipTopAmount:I

    .line 214
    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    move v11, v13

    :goto_2
    iput v11, v14, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->alpha:F

    .line 215
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v14

    if-nez v14, :cond_3

    move v14, v3

    goto :goto_3

    :cond_3
    move v14, v4

    :goto_3
    iput-boolean v14, v11, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->belowSpeedBump:Z

    .line 216
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v13, v11, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->shadowAlpha:F

    .line 217
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v4, v11, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hideSensitive:Z

    .line 218
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationX()F

    move-result v13

    iput v13, v11, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->xTranslation:F

    .line 219
    iget v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_4

    .line 220
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v13, v13, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v11, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    .line 223
    :cond_4
    if-eqz v6, :cond_5

    .line 224
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v13, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v11, v13}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 227
    :cond_5
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 228
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    nop

    :cond_7
    :goto_4
    iput-boolean v3, v11, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    .line 229
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 230
    .end local v2    # "maxShelfEnd":F
    .end local v6    # "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v7    # "viewEnd":F
    .end local v8    # "awakenTranslation":F
    .end local v9    # "darkTranslation":F
    .end local v10    # "yRatio":F
    .end local v12    # "openedAmount":F
    goto :goto_5

    .line 231
    :cond_8
    move-object/from16 v5, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    .line 232
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->location:I

    .line 233
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 235
    :goto_5
    return-void
.end method

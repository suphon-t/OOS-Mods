.class public Lcom/android/systemui/statusbar/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mAppearing:Z

.field private mBaseZHeight:I

.field private mCurrentScrollVelocity:F

.field private mDark:Z

.field private mDarkAmount:F

.field private mDarkTopPadding:I

.field private mDimmed:Z

.field private mDismissAllInProgress:Z

.field private mDraggedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandAnimationTopChange:I

.field private mExpandingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mExpandingVelocity:F

.field private mExpansionChanging:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHideSensitive:Z

.field private mIntrinsicPadding:I

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mLayoutHeight:I

.field private mLayoutMinHeight:I

.field private mMaxHeadsUpTranslation:F

.field private mMaxLayoutHeight:I

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mPanelFullWidth:Z

.field private mPanelTracking:Z

.field private mPulsing:Z

.field private mQsCustomizerShowing:Z

.field private mScrollY:I

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mSpeedBumpIndex:I

.field private mStackTranslation:F

.field private mStatusBarState:I

.field private mTopPadding:I

.field private mUnlockHintRunning:Z

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method private static getBaseHeight(I)I
    .locals 1
    .param p0, "zdistanceBetweenElements"    # I

    .line 94
    const/4 v0, 0x4

    mul-int/2addr v0, p0

    return v0
.end method

.method public static getNotificationLaunchHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements(Landroid/content/Context;)I

    move-result v0

    .line 102
    .local v0, "zDistance":I
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseHeight(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private static getZDistanceBetweenElements(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const v1, 0x7f0706b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$isPulsing$0(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "e"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 340
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getBaseZHeight()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mBaseZHeight:I

    return v0
.end method

.method public getCurrentScrollVelocity()F
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mCurrentScrollVelocity:F

    return v0
.end method

.method public getDarkAmount()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDarkAmount:F

    return v0
.end method

.method public getDarkTopPadding()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDarkTopPadding:I

    return v0
.end method

.method public getDraggedViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpandAnimationTopChange()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandAnimationTopChange:I

    return v0
.end method

.method public getExpandingNotification()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method public getExpandingVelocity()F
    .locals 1

    .line 321
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingVelocity:F

    return v0
.end method

.method public getInnerHeight()I
    .locals 2

    .line 235
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxLayoutHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mIntrinsicPadding:I

    return v0
.end method

.method public getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getMaxHeadsUpTranslation()F
    .locals 1

    .line 251
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return v0
.end method

.method public getOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .line 199
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    :goto_0
    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return v0
.end method

.method public getShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object v0
.end method

.method public getSpeedBumpIndex()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return v0
.end method

.method public getStackTranslation()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .line 227
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    int-to-float v0, v0

    return v0
.end method

.method public getZDistanceBetweenElements()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    return v0
.end method

.method public hasPulsingNotifications()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPulsing:Z

    return v0
.end method

.method public isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 2
    .param p1, "expandableView"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 385
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isAboveShelf()Z

    move-result v0

    return v0

    .line 388
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 389
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAppearing()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mAppearing:Z

    return v0
.end method

.method public isDark()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return v0
.end method

.method public isDimmed()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return v0
.end method

.method public isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 396
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 397
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    return v0

    .line 399
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpansionChanging()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpansionChanging:Z

    return v0
.end method

.method public isFullyDark()Z
    .locals 2

    .line 429
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDarkAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHideSensitive()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 2

    .line 301
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPanelFullWidth()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelFullWidth:Z

    return v0
.end method

.method public isPanelTracking()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelTracking:Z

    return v0
.end method

.method public isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPulsing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/stack/-$$Lambda$AmbientState$05gi9X6uLduWjWHWb7e4F7kHS2o;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/stack/-$$Lambda$AmbientState$05gi9X6uLduWjWHWb7e4F7kHS2o;-><init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    .line 338
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isQsCustomizerShowing()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mQsCustomizerShowing:Z

    return v0
.end method

.method public isShadeExpanded()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    return v0
.end method

.method public isUnlockHintRunning()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mUnlockHintRunning:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public onDragFinished(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public reload(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    .line 85
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mZDistanceBetweenElements:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mBaseZHeight:I

    .line 86
    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 172
    return-void
.end method

.method public setAppearing(Z)V
    .locals 0
    .param p1, "appearing"    # Z

    .line 441
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mAppearing:Z

    .line 442
    return-void
.end method

.method public setCurrentScrollVelocity(F)V
    .locals 0
    .param p1, "currentScrollVelocity"    # F

    .line 293
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mCurrentScrollVelocity:F

    .line 294
    return-void
.end method

.method public setDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    .line 150
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0
    .param p1, "darkAmount"    # F

    .line 154
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDarkAmount:F

    .line 155
    return-void
.end method

.method public setDarkTopPadding(I)V
    .locals 0
    .param p1, "darkTopPadding"    # I

    .line 433
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDarkTopPadding:I

    .line 434
    return-void
.end method

.method public setDimmed(Z)V
    .locals 0
    .param p1, "dimmed"    # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    .line 145
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 0
    .param p1, "dismissAllInProgress"    # Z

    .line 255
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDismissAllInProgress:Z

    .line 256
    return-void
.end method

.method public setExpandAnimationTopChange(I)V
    .locals 0
    .param p1, "expandAnimationTopChange"    # I

    .line 410
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandAnimationTopChange:I

    .line 411
    return-void
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 414
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 415
    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 0
    .param p1, "expandingVelocity"    # F

    .line 309
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpandingVelocity:F

    .line 310
    return-void
.end method

.method public setExpansionChanging(Z)V
    .locals 0
    .param p1, "expansionChanging"    # Z

    .line 313
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mExpansionChanging:Z

    .line 314
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 211
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 212
    return-void
.end method

.method public setHideSensitive(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    .line 164
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0
    .param p1, "intrinsicPadding"    # I

    .line 372
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mIntrinsicPadding:I

    .line 373
    return-void
.end method

.method public setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "lastVisibleBackgroundChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 285
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 286
    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0
    .param p1, "layoutHeight"    # I

    .line 223
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    .line 224
    return-void
.end method

.method public setLayoutMaxHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxLayoutHeight:I

    .line 277
    return-void
.end method

.method public setLayoutMinHeight(I)V
    .locals 0
    .param p1, "layoutMinHeight"    # I

    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    .line 264
    return-void
.end method

.method public setMaxHeadsUpTranslation(F)V
    .locals 0
    .param p1, "maxHeadsUpTranslation"    # F

    .line 247
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 248
    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .line 191
    if-eqz p2, :cond_0

    .line 192
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_0

    .line 194
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    .line 196
    :goto_0
    return-void
.end method

.method public setPanelFullWidth(Z)V
    .locals 0
    .param p1, "panelFullWidth"    # Z

    .line 352
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelFullWidth:Z

    .line 353
    return-void
.end method

.method public setPanelTracking(Z)V
    .locals 0
    .param p1, "panelTracking"    # Z

    .line 325
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPanelTracking:Z

    .line 326
    return-void
.end method

.method public setPulsing(Z)V
    .locals 0
    .param p1, "hasPulsing"    # Z

    .line 333
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mPulsing:Z

    .line 334
    return-void
.end method

.method public setQsCustomizerShowing(Z)V
    .locals 0
    .param p1, "qsCustomizerShowing"    # Z

    .line 368
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mQsCustomizerShowing:Z

    .line 369
    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .line 124
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    .line 125
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0
    .param p1, "shadeExpanded"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    .line 244
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 267
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 268
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "shelfIndex"    # I

    .line 207
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    .line 208
    return-void
.end method

.method public setStackTranslation(F)V
    .locals 0
    .param p1, "stackTranslation"    # F

    .line 219
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    .line 220
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .line 305
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStatusBarState:I

    .line 306
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .param p1, "topPadding"    # I

    .line 231
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    .line 232
    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 0
    .param p1, "unlockHintRunning"    # Z

    .line 356
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mUnlockHintRunning:Z

    .line 357
    return-void
.end method

.class public Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/NotificationListContainer;
.implements Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
    }
.end annotation


# static fields
.field private static final DARK_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAddedHeadsUpChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimateNextBackgroundBottom:Z

.field private mAnimateNextBackgroundTop:Z

.field private mAnimateScroll:Ljava/lang/Runnable;

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationFinishedRunnables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationRunning:Z

.field private mAnimationsEnabled:Z

.field private mAntiBurnInOffsetX:I

.field private final mBackgroundAnimationRect:Landroid/graphics/Rect;

.field private mBackgroundBounds:Landroid/graphics/Rect;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundPath:Landroid/graphics/Path;

.field private mBackwardScrollable:Z

.field private mBgColor:I

.field private mBottomAnimator:Landroid/animation/ObjectAnimator;

.field private mBottomInset:I

.field private mBottomMargin:I

.field private mCachedBackgroundColor:I

.field private mChangePositionInProgress:Z

.field mCheckForLeavebehind:Z

.field private mChildTransferInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mClearTransientViewsWhenFinished:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private final mClipRect:Landroid/graphics/Rect;

.field private mCollapsedSize:I

.field private mContentHeight:I

.field private mContinuousShadowUpdate:Z

.field private mCornerRadius:I

.field private mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mCurrentBounds:Landroid/graphics/Rect;

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDarkAmount:F

.field private mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

.field private mDarkAnimationOriginIndex:I

.field private mDarkNeedsAnimation:Z

.field private mDarkSeparatorPadding:I

.field private mDarkTopPadding:I

.field private mDimAmount:F

.field private mDimAnimator:Landroid/animation/ValueAnimator;

.field private mDimEndListener:Landroid/animation/Animator$AnimatorListener;

.field private mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDimmedNeedsAnimation:Z

.field private mDisallowDismissInThisMotion:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDontClampNextScroll:Z

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private mDragAnimPendingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawBackgroundAsSrc:Z

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mEndAnimationRect:Landroid/graphics/Rect;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandedGroupView:Landroid/view/View;

.field private mExpandedHeight:F

.field private mExpandedHeightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFadeNotificationsOnDismiss:Z

.field private mFadingOut:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFinishScrollingCallback:Ljava/lang/Runnable;

.field private mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field protected mFooterView:Lcom/android/systemui/statusbar/FooterView;

.field private mForceNoOverlappingRendering:Z

.field private mForcedScroll:Landroid/view/View;

.field private mForwardScrollable:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerateChildOrderChangedEvent:Z

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mGroupExpandedForMeasure:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mHeadsUpChangeAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadsUpGoingAwayAnimationsAllowed:Z

.field private mHeadsUpInset:I

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHideSensitiveNeedsAnimation:Z

.field private mInHeadsUpPinnedMode:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntrinsicContentHeight:I

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsClipped:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mLastMotionY:I

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

.field private mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

.field private mMaxDisplayedNotifications:I

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaxTopPadding:I

.field private mMaximumVelocity:I

.field private mMenuExposedView:Landroid/view/View;

.field private mMinInteractionHeight:I

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedingPulseAnimation:Landroid/view/View;

.field private mNeedsAnimation:Z

.field private mNoAmbient:Z

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPanelTracking:Z

.field private mParentNotFullyVisible:Z

.field private mPulsing:Z

.field protected mQsContainer:Landroid/view/ViewGroup;

.field private mQsExpanded:Z

.field private mQsExpansionFraction:F

.field private mReclamp:Ljava/lang/Runnable;

.field private mRegularTopPadding:I

.field private mRequestedClipBounds:Landroid/graphics/Rect;

.field private mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

.field private mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrollable:Z

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field protected mScrollingEnabled:Z

.field private final mSeparatorThickness:I

.field private final mSeparatorWidth:I

.field private mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mShouldDrawNotificationBackground:Z

.field private mShouldShowShelfOnly:Z

.field private mSidePaddings:I

.field private mSnappedBackChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcMode:Landroid/graphics/PorterDuffXfermode;

.field protected final mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mStackTranslation:F

.field private mStartAnimationRect:Landroid/graphics/Rect;

.field private final mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private final mTmpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTmpSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mTopAnimator:Landroid/animation/ObjectAnimator;

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mTrackingHeadsUp:Z

.field private mTranslatingParentView:Landroid/view/View;

.field private mUsingLightTheme:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 379
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;

    const-string v1, "darkAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DARK_AMOUNT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 426
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 430
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 434
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPath:Landroid/graphics/Path;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 191
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 194
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 200
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 203
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 229
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 281
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 293
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 295
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 296
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    .line 297
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    .line 300
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    .line 307
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 315
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 316
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 317
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 318
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    .line 321
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 322
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 323
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 324
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    .line 329
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 335
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 345
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 354
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    .line 369
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    .line 378
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    .line 397
    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    .line 408
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    .line 409
    new-instance v0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$jMWJf69jcb2Er7Sg4rletxrm5pw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$jMWJf69jcb2Er7Sg4rletxrm5pw;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    .line 414
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    .line 1434
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 437
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 438
    const v3, 0x7f0602ea

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 439
    const v3, 0x7f0703a4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 440
    .local v3, "minHeight":I
    const v4, 0x7f07039f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 441
    .local v4, "maxHeight":I
    new-instance v5, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 443
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 444
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 445
    new-instance v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v1, p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 447
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 448
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 449
    nop

    .line 450
    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    .line 451
    nop

    .line 452
    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    .line 453
    const v1, 0x7f0706a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorWidth:I

    .line 454
    const v1, 0x7f0706a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorThickness:I

    .line 455
    const v1, 0x7f0706a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkSeparatorPadding:I

    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setAnimatedChildren(Ljava/util/HashSet;)V

    .line 457
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    new-instance v5, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$5BC2kaMAloRxl8auhuScFksFNjA;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$5BC2kaMAloRxl8auhuScFksFNjA;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setOnRoundingChangedCallback(Ljava/lang/Runnable;)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/statusbar/stack/-$$Lambda$bam6n-VlBWgcqhwrPMDo0VFka_4;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/stack/-$$Lambda$bam6n-VlBWgcqhwrPMDo0VFka_4;-><init>(Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 461
    const-class v1, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 462
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 463
    .local v1, "blockingHelperManager":Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;
    new-instance v5, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$ORqWctSAOFbrSZfQ2fKGWKeQ46w;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$ORqWctSAOFbrSZfQ2fKGWKeQ46w;-><init>(Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 467
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 468
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 475
    return-void
.end method

.method private abortBackgroundAnimators()V
    .locals 1

    .line 2286
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2289
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2290
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2292
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/View;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/View;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildViewDismissed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/View;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/View;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPreDrawDuringAnimation()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # F

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # F

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    return v0
.end method

.method private animateDimmed(Z)V
    .locals 4
    .param p1, "dimmed"    # Z

    .line 3839
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3840
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3842
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3843
    .local v0, "target":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 3844
    return-void

    .line 3846
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    .line 3847
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3848
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3849
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3850
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3851
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 3852
    return-void
.end method

.method private animateScroll()V
    .locals 6

    .line 1853
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1854
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1855
    .local v0, "oldY":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 1857
    .local v1, "y":I
    if-eq v0, v1, :cond_4

    .line 1858
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 1859
    .local v2, "range":I
    if-gez v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    .line 1860
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    .line 1861
    .local v3, "currVelocity":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 1862
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1866
    .end local v3    # "currVelocity":F
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    if-eqz v3, :cond_3

    .line 1867
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1869
    :cond_3
    sub-int v3, v1, v0

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v4, v4

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 1873
    .end local v2    # "range":I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1874
    .end local v0    # "oldY":I
    .end local v1    # "y":I
    goto :goto_0

    .line 1875
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    .line 1876
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1880
    :cond_6
    :goto_0
    return-void
.end method

.method private applyCurrentBackgroundBounds()V
    .locals 5

    .line 2415
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 2416
    return-void

    .line 2419
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2421
    .local v0, "awake":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-ne v4, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setForceDrawFullViewBehind(Z)V

    .line 2423
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2427
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchTransitionFadingAway()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 2423
    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExcludedBackgroundArea(Landroid/graphics/Rect;)V

    .line 2429
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 2430
    return-void
.end method

.method private applyCurrentState()V
    .locals 1

    .line 3890
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    .line 3891
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    .line 3892
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;->onChildLocationsChanged()V

    .line 3894
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 3895
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3896
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3897
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 3899
    return-void
.end method

.method private areBoundsAnimating()Z
    .locals 1

    .line 2295
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

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

.method private clampPadding(I)I
    .locals 1
    .param p1, "desiredPadding"    # I

    .line 2650
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clampScrollPosition()V
    .locals 2

    .line 841
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 842
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 843
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 845
    :cond_0
    return-void
.end method

.method private clearHeadsUpDisappearRunning()V
    .locals 6

    .line 3784
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3785
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3786
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 3787
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3788
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3789
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3790
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3791
    .local v5, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3792
    .end local v5    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_1

    .line 3784
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3796
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private clearTemporaryViews()V
    .locals 4

    .line 3658
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 3659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3660
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3661
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v2, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 3662
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3663
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 3659
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3666
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 3669
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3670
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    .line 3672
    :cond_0
    return-void
.end method

.method private clearTransient()V
    .locals 2

    .line 3799
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3800
    .local v1, "view":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3801
    .end local v1    # "view":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_0

    .line 3802
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3803
    return-void
.end method

.method private clearUserLockedViews()V
    .locals 4

    .line 3647
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3648
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3649
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 3650
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3651
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 3647
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3654
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private customOverScrollBy(IIII)Z
    .locals 4
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRangeY"    # I
    .param p4, "maxOverScrollY"    # I

    .line 1885
    add-int v0, p2, p1

    .line 1886
    .local v0, "newScrollY":I
    neg-int v1, p4

    .line 1887
    .local v1, "top":I
    add-int v2, p4, p3

    .line 1889
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 1890
    .local v3, "clampedY":Z
    if-le v0, v2, :cond_0

    .line 1891
    move v0, v2

    .line 1892
    const/4 v3, 0x1

    goto :goto_0

    .line 1893
    :cond_0
    if-ge v0, v1, :cond_1

    .line 1894
    move v0, v1

    .line 1895
    const/4 v3, 0x1

    .line 1898
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onCustomOverScrolled(IZ)V

    .line 1900
    return v3
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1553
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1554
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1555
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 1556
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1557
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 531
    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 532
    .local v1, "lockScreenLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v2, v3

    .line 533
    .local v2, "lockScreenRight":I
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 534
    .local v3, "lockScreenTop":I
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 535
    .local v4, "lockScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 536
    .local v5, "darkLeft":I
    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorWidth:I

    add-int/2addr v6, v5

    .line 537
    .local v6, "darkRight":I
    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    int-to-float v7, v7

    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorThickness:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 538
    .local v7, "darkTop":I
    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorThickness:I

    add-int/2addr v8, v7

    .line 540
    .local v8, "darkBottom":I
    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 564
    .end local v1    # "lockScreenLeft":I
    .end local v2    # "lockScreenRight":I
    .end local v3    # "lockScreenTop":I
    .local v16, "lockScreenLeft":I
    .local v17, "lockScreenRight":I
    .local v26, "lockScreenTop":I
    :cond_0
    :goto_0
    move/from16 v16, v1

    move/from16 v17, v2

    :cond_1
    move/from16 v26, v3

    goto/16 :goto_1

    .line 542
    .end local v16    # "lockScreenLeft":I
    .end local v17    # "lockScreenRight":I
    .end local v26    # "lockScreenTop":I
    .restart local v1    # "lockScreenLeft":I
    .restart local v2    # "lockScreenRight":I
    .restart local v3    # "lockScreenTop":I
    :cond_2
    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 544
    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v9, :cond_0

    .line 545
    int-to-float v11, v5

    int-to-float v12, v7

    int-to-float v13, v6

    int-to-float v14, v8

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 548
    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    sub-float/2addr v10, v11

    .line 549
    .local v10, "inverseDark":F
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    .line 550
    .local v11, "yProgress":F
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    mul-float/2addr v9, v10

    .line 551
    invoke-interface {v12, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 553
    .local v9, "xProgress":F
    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    int-to-float v13, v5

    int-to-float v14, v1

    .line 554
    invoke-static {v13, v14, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    float-to-int v13, v13

    int-to-float v14, v7

    int-to-float v15, v3

    .line 555
    invoke-static {v14, v15, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v15, v6

    move/from16 v16, v1

    int-to-float v1, v2

    .line 556
    .end local v1    # "lockScreenLeft":I
    .restart local v16    # "lockScreenLeft":I
    invoke-static {v15, v1, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v15, v8

    move/from16 v17, v2

    int-to-float v2, v4

    .line 557
    .end local v2    # "lockScreenRight":I
    .restart local v17    # "lockScreenRight":I
    invoke-static {v15, v2, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 553
    invoke-virtual {v12, v13, v14, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 558
    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v1, :cond_1

    .line 559
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v14, v14

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v15, v15

    move/from16 v26, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .end local v3    # "lockScreenTop":I
    .restart local v26    # "lockScreenTop":I
    move-object/from16 v18, p1

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v25, v3

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 564
    .end local v9    # "xProgress":F
    .end local v10    # "inverseDark":F
    .end local v11    # "yProgress":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 565
    return-void
.end method

.method private dumpRows(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 5215
    .local v0, "n":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5216
    if-nez v2, :cond_0

    .line 5217
    const-string v3, "  ExpandableNotificationRow"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5219
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5220
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    .line 5221
    const-string v4, "      [%d] "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5222
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dump(Ljava/io/PrintWriter;)V

    .line 5215
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5225
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private endDrag()V
    .locals 4

    .line 2678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 2682
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2683
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2685
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2686
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2688
    :cond_1
    return-void
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 3
    .param p1, "screenLocation"    # Landroid/graphics/PointF;

    .line 4066
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 4069
    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 4070
    const/4 v0, -0x2

    return v0

    .line 4072
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .line 4073
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 4074
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v0

    return v0

    .line 4076
    :cond_2
    return v0

    .line 4067
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    :goto_0
    return v0
.end method

.method private focusNextViewIfFocused(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 2815
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 2816
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2817
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldRefocusOnDismiss()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2818
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAfterViewWhenDismissed()Landroid/view/View;

    move-result-object v1

    .line 2819
    .local v1, "nextView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 2820
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupParentWhenDismissed()Landroid/view/View;

    move-result-object v2

    .line 2821
    .local v2, "groupParentWhenDismissed":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2822
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    goto :goto_0

    .line 2823
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    :goto_0
    const/4 v4, 0x1

    .line 2821
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v1

    .line 2825
    .end local v2    # "groupParentWhenDismissed":Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    .line 2826
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2831
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "nextView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private generateActivateEvent()V
    .locals 4

    .line 3380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3381
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3384
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 3385
    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .line 3388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3389
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3392
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 3393
    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .line 3349
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3350
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3351
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v5, 0x168

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3355
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3358
    .end local v1    # "child":Landroid/view/View;
    :goto_1
    goto :goto_0

    .line 3359
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3360
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3361
    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 1

    .line 3193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimationEvents()V

    .line 3194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 3195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 3196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 3197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    .line 3198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    .line 3199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 3200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 3201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 3202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 3203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    .line 3204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 3205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 3206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGroupExpansionEvent()V

    .line 3207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    .line 3208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePulsingAnimationEvent()V

    .line 3209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3210
    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 10

    .line 3295
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3296
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3299
    .local v2, "childWasSwipedOut":Z
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 3300
    .local v3, "removedTranslation":F
    const/4 v4, 0x1

    .line 3301
    .local v4, "ignoreChildren":Z
    instance-of v5, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 3302
    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3303
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3304
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v3

    .line 3305
    const/4 v4, 0x0

    .line 3307
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    or-int/2addr v2, v8

    .line 3309
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    if-nez v2, :cond_4

    .line 3310
    invoke-virtual {v1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 3311
    .local v5, "clipBounds":Landroid/graphics/Rect;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_3

    move v6, v7

    nop

    :cond_3
    move v2, v6

    .line 3313
    if-eqz v2, :cond_4

    instance-of v6, v1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_4

    .line 3317
    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v6

    .line 3318
    .local v6, "transientContainer":Landroid/view/ViewGroup;
    if-eqz v6, :cond_4

    .line 3319
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 3323
    .end local v5    # "clipBounds":Landroid/graphics/Rect;
    .end local v6    # "transientContainer":Landroid/view/ViewGroup;
    :cond_4
    if-eqz v2, :cond_5

    .line 3324
    const/4 v7, 0x2

    nop

    .line 3325
    :cond_5
    move v5, v7

    .line 3326
    .local v5, "animationType":I
    new-instance v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v6, v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3327
    .local v6, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 3329
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3330
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3331
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childWasSwipedOut":Z
    .end local v3    # "removedTranslation":F
    .end local v4    # "ignoreChildren":Z
    .end local v5    # "animationType":I
    .end local v6    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    goto/16 :goto_0

    .line 3332
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3333
    return-void
.end method

.method private generateDarkEvent()V
    .locals 5

    .line 3412
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3413
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v1, 0x0

    const/16 v2, 0x9

    new-instance v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 3416
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 3417
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;ILcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 3418
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    .line 3419
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startDarkAmountAnimation()V

    .line 3422
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 3423
    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .line 3396
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3397
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3400
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3401
    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    .line 3287
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3288
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3290
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 3291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3292
    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .line 3426
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3427
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3430
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 3431
    return-void
.end method

.method private generateGroupExpansionEvent()V
    .locals 4

    .line 3263
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3264
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 3268
    :cond_0
    return-void
.end method

.method private generateHeadsUpAnimationEvents()V
    .locals 11

    .line 3213
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3214
    .local v1, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3215
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3216
    .local v3, "isHeadsUp":Z
    const/16 v4, 0x11

    .line 3217
    .local v4, "type":I
    const/4 v5, 0x0

    .line 3218
    .local v5, "onBottom":Z
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v8

    .line 3219
    .local v6, "pinnedAndClosed":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v9, :cond_2

    if-nez v3, :cond_2

    .line 3220
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasJustClicked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3221
    const/16 v7, 0x10

    goto :goto_2

    .line 3222
    :cond_1
    const/16 v7, 0xf

    :goto_2
    move v4, v7

    .line 3223
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3225
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3226
    goto :goto_0

    .line 3229
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v9

    .line 3230
    .local v9, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v9, :cond_3

    .line 3233
    goto :goto_0

    .line 3235
    :cond_3
    if-eqz v3, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v6, :cond_8

    .line 3236
    :cond_4
    if-nez v6, :cond_6

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    .line 3241
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 3238
    :cond_6
    :goto_3
    const/16 v4, 0xe

    .line 3243
    :goto_4
    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    move v7, v8

    :goto_5
    move v5, v7

    .line 3246
    .end local v9    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_8
    new-instance v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v7, v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3247
    .local v7, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iput-boolean v5, v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    .line 3248
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3249
    .end local v1    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "isHeadsUp":Z
    .end local v4    # "type":I
    .end local v5    # "onBottom":Z
    .end local v6    # "pinnedAndClosed":Z
    .end local v7    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    goto :goto_0

    .line 3250
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3251
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3252
    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .line 3404
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3408
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 3409
    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 5

    .line 3336
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3337
    .local v1, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3339
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 3340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3341
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    if-eqz v0, :cond_1

    .line 3342
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 3346
    :cond_1
    return-void
.end method

.method private generatePulsingAnimationEvent()V
    .locals 4

    .line 4454
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    .line 4456
    :cond_0
    const/16 v0, 0x14

    .line 4457
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4458
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    .line 4460
    .end local v0    # "type":I
    :cond_1
    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 2846
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2848
    return v1

    .line 2850
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isClickedHeadsUp(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2852
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2853
    return v2

    .line 2855
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInInvisibleGroup(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2856
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2858
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2859
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2860
    return v2

    .line 2862
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2863
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2864
    return v1

    .line 2867
    :cond_3
    return v1
.end method

.method private generateSnapBackEvents()V
    .locals 5

    .line 3279
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3280
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3282
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 3283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3284
    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 5

    .line 3364
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_1

    .line 3366
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3367
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v3, 0x226

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    .local v0, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    goto :goto_0

    .line 3371
    .end local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3374
    .restart local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3376
    .end local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 3377
    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    .line 3271
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    .line 3272
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3275
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 3276
    return-void
.end method

.method private getAppearEndPosition()F
    .locals 4

    .line 1014
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    .line 1015
    .local v0, "notGoneChildCount":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 1016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1017
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    const/4 v1, 0x0

    .line 1021
    .local v1, "appearPosition":I
    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 1022
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 1018
    .end local v1    # "appearPosition":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v1

    .restart local v1    # "appearPosition":I
    goto :goto_1

    .line 1026
    .end local v1    # "appearPosition":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v1

    .line 1028
    .restart local v1    # "appearPosition":I
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    :goto_2
    add-int/2addr v2, v1

    int-to-float v2, v2

    return v2
.end method

.method private getAppearStartPosition()F
    .locals 2

    .line 981
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getPinnedHeadsUpHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    .line 984
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 11
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "requireMinHeight"    # Z

    .line 1281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 1282
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 1283
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1284
    .local v2, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v2, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-eqz v3, :cond_0

    .line 1286
    goto/16 :goto_1

    .line 1288
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v3

    .line 1289
    .local v3, "childTop":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 1290
    .local v4, "top":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 1291
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 1295
    .local v5, "bottom":F
    const/4 v6, 0x0

    .line 1296
    .local v6, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v7

    .line 1298
    .local v7, "right":I
    sub-float v8, v5, v4

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gez v8, :cond_1

    if-nez p3, :cond_4

    :cond_1
    cmpl-float v8, p2, v4

    if-ltz v8, :cond_4

    cmpg-float v8, p2, v5

    if-gtz v8, :cond_4

    int-to-float v8, v6

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_4

    int-to-float v8, v7

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_4

    .line 1300
    instance-of v8, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_3

    .line 1301
    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1302
    .local v8, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1303
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v9, v8, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1305
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    .line 1304
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v9

    if-eq v9, v8, :cond_2

    .line 1307
    goto :goto_1

    .line 1309
    :cond_2
    sub-float v9, p2, v3

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v9

    return-object v9

    .line 1311
    .end local v8    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-object v2

    .line 1282
    .end local v2    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "childTop":F
    .end local v4    # "top":F
    .end local v5    # "bottom":F
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1314
    .end local v1    # "childIdx":I
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExpandTranslationStart()F
    .locals 1

    .line 973
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    neg-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method private getFirstChildBelowTranlsationY(FZ)Landroid/view/View;
    .locals 10
    .param p1, "translationY"    # F
    .param p2, "ignoreChildren"    # Z

    .line 2099
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2100
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2101
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2102
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 2103
    goto :goto_2

    .line 2105
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 2106
    .local v4, "rowTranslation":F
    cmpl-float v5, v4, p1

    if-ltz v5, :cond_1

    .line 2107
    return-object v3

    .line 2108
    :cond_1
    if-nez p2, :cond_3

    instance-of v5, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    .line 2109
    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2110
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2111
    nop

    .line 2112
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    .line 2113
    .local v6, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move v7, v1

    .local v7, "childIndex":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 2115
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2116
    .local v8, "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v9

    add-float/2addr v9, v4

    cmpl-float v9, v9, p1

    if-ltz v9, :cond_2

    .line 2117
    return-object v8

    .line 2114
    .end local v8    # "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2100
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "rowTranslation":F
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v7    # "childIndex":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2123
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFirstChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 5

    .line 2524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2525
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2526
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2527
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2529
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v3

    .line 2525
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2532
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getImeInset()I
    .locals 3

    .line 2059
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2949
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 2950
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2951
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 2953
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private getLastChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 5

    .line 2512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2513
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2514
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2515
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2517
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v3

    .line 2513
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2520
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLayoutHeight()I
    .locals 2

    .line 1066
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 4081
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4082
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4083
    .local v1, "notGoneIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4084
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4085
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 4086
    return v1

    .line 4088
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 4089
    add-int/lit8 v1, v1, 0x1

    .line 4083
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4092
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method private getRubberBandFactor(Z)F
    .locals 2
    .param p1, "onTop"    # Z

    .line 2654
    const v0, 0x3eb33333    # 0.35f

    if-nez p1, :cond_0

    .line 2655
    return v0

    .line 2657
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v1, :cond_1

    .line 2658
    const v0, 0x3e19999a    # 0.15f

    return v0

    .line 2659
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2661
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v1, :cond_3

    .line 2662
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2664
    :cond_3
    return v0

    .line 2660
    :cond_4
    :goto_0
    const v0, 0x3e570a3d    # 0.21f

    return v0
.end method

.method private getScrollRange()I
    .locals 6

    .line 2050
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    .line 2051
    .local v0, "contentHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2052
    .local v1, "scrollRange":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v3

    .line 2053
    .local v3, "imeInset":I
    nop

    .line 2054
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v4, v5

    .line 2053
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2055
    return v1
.end method

.method private getTopHeadsUpPinnedHeight()I
    .locals 4

    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 994
    .local v0, "topEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 995
    const/4 v1, 0x0

    return v1

    .line 997
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 998
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 999
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1000
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 1001
    .local v2, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    .line 1002
    move-object v1, v2

    .line 1005
    .end local v2    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight()I

    move-result v2

    return v2
.end method

.method private handleChildViewDismissed(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 1105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v0, :cond_0

    .line 1106
    return-void

    .line 1109
    :cond_0
    const/4 v0, 0x0

    .line 1111
    .local v0, "isBlockingHelperShown":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1112
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1116
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 1117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1119
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_3

    .line 1120
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1121
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1122
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addSwipedOutNotification(Ljava/lang/String;)V

    .line 1124
    :cond_2
    nop

    .line 1125
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performDismissWithBlockingHelper(Z)Z

    move-result v0

    .line 1128
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    if-nez v0, :cond_4

    .line 1129
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDismissed()V

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1133
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1140
    :cond_5
    return-void
.end method

.method private handleDismissAllClipping()V
    .locals 7

    .line 4142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4143
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4144
    .local v1, "previousChildWillBeDismissed":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "previousChildWillBeDismissed":Z
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4145
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4146
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 4147
    goto :goto_2

    .line 4149
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 4150
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    goto :goto_1

    .line 4152
    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    .line 4154
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    .line 4144
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4156
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2734
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2736
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 2740
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 2741
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2742
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    .line 2746
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 2751
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 2752
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 2753
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 2754
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 2755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 2756
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 2758
    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1842
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1846
    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1829
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1831
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 593
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 594
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDescendantFocusability(I)V

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    .line 596
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 597
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 598
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 599
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 600
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 603
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0703a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 604
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 605
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 606
    nop

    .line 607
    const v2, 0x7f07038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 606
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 608
    nop

    .line 609
    const v2, 0x7f07038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 610
    const v2, 0x7f070319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 612
    const v2, 0x7f070608

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 613
    const v2, 0x7f0703a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomMargin:I

    .line 614
    const v2, 0x7f0703b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 615
    const v2, 0x7f0703a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    .line 617
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    .line 618
    const v3, 0x1010571

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    .line 617
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCornerRadius:I

    .line 619
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    const v3, 0x7f0701e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    .line 621
    return-void
.end method

.method private isChildInGroup(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2834
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2836
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 2835
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2834
    :goto_0
    return v0
.end method

.method private isChildInInvisibleGroup(Landroid/view/View;)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .line 2904
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2905
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2906
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 2907
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 2908
    .local v2, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_1

    .line 2909
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 2912
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v1
.end method

.method private isClickedHeadsUp(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2871
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->isClickedHeadsUpNotification(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isHeadsUp(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1190
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1191
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1192
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    return v1

    .line 1194
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHeadsUpTransition()Z
    .locals 2

    .line 1032
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 1033
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    return v0
.end method

.method public static isPinnedHeadsUp(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 1182
    instance-of v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1183
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1184
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1186
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v1
.end method

.method private isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method

.method private isRubberbanded(Z)Z
    .locals 1
    .param p1, "onTop"    # Z

    .line 2673
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-nez v0, :cond_0

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

.method private isScrollingEnabled()Z
    .locals 1

    .line 1450
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .line 4866
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 4867
    return v0

    .line 4869
    :cond_0
    instance-of v1, p2, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_1

    .line 4870
    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    goto :goto_0

    .line 4871
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4872
    .local v1, "height":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 4873
    .local v2, "rx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 4874
    .local v3, "ry":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4875
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v0, v4, v0

    .line 4876
    .local v0, "x":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 4877
    .local v4, "y":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    add-int v7, v4, v1

    invoke-direct {v5, v0, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4878
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    .line 4879
    .local v6, "ret":Z
    return v6
.end method

.method public static synthetic lambda$3VfNfgMGO3-TgMmei2bv0geU0dY(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    return-void
.end method

.method public static synthetic lambda$5BC2kaMAloRxl8auhuScFksFNjA(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$bindRow$1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "animatingAway"    # Ljava/lang/Boolean;

    .line 3102
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 3103
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 3104
    return-void
.end method

.method public static synthetic lambda$jMWJf69jcb2Er7Sg4rletxrm5pw(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .param p0, "blockingHelperManager"    # Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;
    .param p1, "height"    # Ljava/lang/Float;
    .param p2, "unused"    # Ljava/lang/Float;

    .line 464
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->setNotificationShadeExpanded(F)V

    .line 465
    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 640
    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 646
    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1977
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    .line 1978
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1979
    return-void

    .line 1981
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_2

    .line 1982
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    .line 1984
    :cond_2
    return-void
.end method

.method private onCustomOverScrolled(IZ)V
    .locals 3
    .param p1, "scrollY"    # I
    .param p2, "clampedY"    # Z

    .line 2009
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2011
    if-eqz p2, :cond_0

    .line 2012
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    goto :goto_1

    .line 2014
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 2015
    .local v1, "overScrollTop":F
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v2, :cond_1

    .line 2016
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2018
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 2020
    .end local v1    # "overScrollTop":F
    :goto_0
    goto :goto_1

    .line 2022
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2024
    :goto_1
    return-void
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 3434
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3435
    return v3

    .line 3448
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 3449
    .local v2, "action":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    .line 3450
    return v5

    .line 3453
    :cond_1
    and-int/lit16 v4, v2, 0xff

    const/4 v6, 0x6

    if-eq v4, v6, :cond_5

    const/4 v6, -0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 3464
    :pswitch_0
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3465
    .local v3, "activePointerId":I
    if-ne v3, v6, :cond_2

    .line 3467
    goto/16 :goto_0

    .line 3470
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 3471
    .local v4, "pointerIndex":I
    if-ne v4, v6, :cond_3

    .line 3472
    const-string v5, "StackScroller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid pointerId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in onInterceptTouchEvent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    goto/16 :goto_0

    .line 3477
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 3478
    .local v6, "y":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    .line 3479
    .local v7, "x":I
    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 3480
    .local v8, "yDiff":I
    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 3481
    .local v9, "xDiff":I
    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v8, v10, :cond_6

    if-le v8, v9, :cond_6

    .line 3482
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3483
    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3484
    iput v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3485
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 3486
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3523
    .end local v3    # "activePointerId":I
    .end local v4    # "pointerIndex":I
    .end local v6    # "y":I
    .end local v7    # "x":I
    .end local v8    # "yDiff":I
    .end local v9    # "xDiff":I
    :pswitch_1
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3524
    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3525
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 3526
    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3527
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_0

    .line 3492
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 3493
    .local v4, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 3494
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v4

    invoke-direct {v0, v6, v7, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    if-nez v6, :cond_4

    .line 3495
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3496
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 3497
    goto :goto_0

    .line 3504
    :cond_4
    iput v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3505
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3506
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3508
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 3509
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3515
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v5

    .line 3516
    .local v3, "isBeingDragged":Z
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3517
    goto :goto_0

    .line 3531
    .end local v3    # "isBeingDragged":Z
    .end local v4    # "y":I
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3539
    :cond_6
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onKeyguard()Z
    .locals 2

    .line 1464
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onOverScrollFling(ZI)V
    .locals 3
    .param p1, "open"    # Z
    .param p2, "initialVelocity"    # I

    .line 1739
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    .line 1742
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1743
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1744
    return-void
.end method

.method private onPreDrawDuringAnimation()V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 758
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 761
    :cond_0
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v1, p0

    .line 1593
    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1594
    return v3

    .line 1596
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInsideQsContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    .line 1597
    return v3

    .line 1599
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1600
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 1601
    iget-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1605
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 1720
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1723
    :try_start_0
    iget v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1724
    iget v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    goto/16 :goto_6

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "StackScroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in onTouchEvent when ACTION_POINTER_UP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_6

    .line 1713
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1714
    .local v0, "index":I
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1715
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1716
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1717
    goto/16 :goto_6

    .line 1704
    .end local v0    # "index":I
    :pswitch_3
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 1705
    iget-object v8, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v9, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v10, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1706
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1708
    :cond_2
    iput v6, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1709
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_6

    .line 1627
    :pswitch_4
    iget v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1628
    .local v0, "activePointerIndex":I
    if-ne v0, v6, :cond_3

    .line 1629
    const-string v3, "StackScroller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in onTouchEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    goto/16 :goto_6

    .line 1633
    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 1634
    .local v3, "y":I
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 1635
    .local v6, "x":I
    iget v8, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int/2addr v8, v3

    .line 1636
    .local v8, "deltaY":I
    iget v9, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1637
    .local v9, "xDiff":I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1638
    .local v10, "yDiff":I
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v11, :cond_5

    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v10, v11, :cond_5

    if-le v10, v9, :cond_5

    .line 1639
    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1640
    if-lez v8, :cond_4

    .line 1641
    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int/2addr v8, v11

    goto :goto_0

    .line 1643
    :cond_4
    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int/2addr v8, v11

    .line 1646
    :cond_5
    :goto_0
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v11, :cond_11

    .line 1648
    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1649
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v11

    .line 1650
    .local v11, "range":I
    iget-boolean v12, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v12, :cond_6

    .line 1651
    iget v12, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1655
    :cond_6
    if-gez v8, :cond_7

    .line 1656
    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v12

    .local v12, "scrollAmount":F
    goto :goto_1

    .line 1658
    .end local v12    # "scrollAmount":F
    :cond_7
    invoke-direct {v1, v8, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v12

    .line 1663
    .restart local v12    # "scrollAmount":F
    :goto_1
    cmpl-float v5, v12, v5

    if-eqz v5, :cond_8

    .line 1666
    float-to-int v5, v12

    iget v13, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    .line 1666
    invoke-direct {v1, v5, v13, v11, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 1671
    .end local v11    # "range":I
    .end local v12    # "scrollAmount":F
    :cond_8
    goto/16 :goto_6

    .line 1674
    .end local v0    # "activePointerIndex":I
    .end local v3    # "y":I
    .end local v6    # "x":I
    .end local v8    # "deltaY":I
    .end local v9    # "xDiff":I
    .end local v10    # "yDiff":I
    :pswitch_5
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    .line 1675
    iget-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1676
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1677
    iget v8, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    float-to-int v8, v8

    .line 1679
    .local v8, "initialVelocity":I
    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1680
    invoke-direct {v1, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_4

    .line 1682
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_d

    .line 1683
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v9, v10, :cond_c

    .line 1684
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v9

    .line 1685
    .local v9, "currentOverScrollTop":F
    cmpl-float v5, v9, v5

    if-eqz v5, :cond_b

    if-lez v8, :cond_a

    goto :goto_2

    .line 1688
    :cond_a
    invoke-direct {v1, v3, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    .end local v9    # "currentOverScrollTop":F
    goto :goto_3

    .line 1686
    .restart local v9    # "currentOverScrollTop":F
    :cond_b
    :goto_2
    neg-int v3, v8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    .line 1690
    .end local v9    # "currentOverScrollTop":F
    :goto_3
    goto :goto_4

    .line 1691
    :cond_c
    iget-object v10, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v12, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1692
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v16

    .line 1691
    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1693
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1698
    :cond_d
    :goto_4
    iput v6, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1699
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    .line 1700
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v8    # "initialVelocity":I
    goto :goto_6

    .line 1607
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    .line 1610
    :cond_e
    iget-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v7

    .line 1611
    .local v0, "isBeingDragged":Z
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1616
    iget-object v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1617
    iget-object v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5, v7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1621
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1622
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1623
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1624
    goto :goto_6

    .line 1608
    .end local v0    # "isBeingDragged":Z
    :cond_10
    :goto_5
    return v3

    .line 1731
    :cond_11
    :goto_6
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1813
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1814
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1818
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1819
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1820
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1821
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1822
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1825
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private onViewAddedInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 3041
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHideSensitiveForChild(Landroid/view/View;)V

    .line 3042
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 3043
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3044
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3045
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3046
    return-void
.end method

.method private onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 2791
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_0

    .line 2793
    return-void

    .line 2795
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2796
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2797
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2798
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2799
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v1

    .line 2800
    .local v1, "animationGenerated":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2801
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2802
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 2803
    :cond_1
    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 2804
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 2807
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2809
    :cond_3
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 2811
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->focusNextViewIfFocused(Landroid/view/View;)V

    .line 2812
    return-void
.end method

.method private overScrollDown(I)F
    .locals 8
    .param p1, "deltaY"    # I

    .line 1787
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1788
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 1789
    .local v1, "currentBottomAmount":F
    int-to-float v2, p1

    add-float/2addr v2, v1

    .line 1790
    .local v2, "newBottomAmount":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    .line 1791
    invoke-virtual {p0, v2, v0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1796
    :cond_0
    cmpg-float v4, v2, v3

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1797
    .local v4, "scrollAmount":F
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 1798
    .local v5, "newScrollY":F
    cmpg-float v3, v5, v3

    if-gez v3, :cond_2

    .line 1799
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v6

    .line 1801
    .local v6, "currentTopPixels":F
    sub-float v7, v6, v5

    invoke-virtual {p0, v7, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1804
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1805
    const/4 v4, 0x0

    .line 1807
    .end local v6    # "currentTopPixels":F
    :cond_2
    return v4
.end method

.method private overScrollUp(II)F
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "range"    # I

    .line 1754
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1755
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    .line 1756
    .local v2, "currentTopAmount":F
    int-to-float v3, p1

    sub-float v3, v2, v3

    .line 1757
    .local v3, "newTopAmount":F
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    .line 1758
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1763
    :cond_0
    cmpg-float v1, v3, v4

    if-gez v1, :cond_1

    neg-float v4, v3

    nop

    :cond_1
    move v1, v4

    .line 1764
    .local v1, "scrollAmount":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 1765
    .local v4, "newScrollY":F
    int-to-float v5, p2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 1766
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_2

    .line 1767
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v5

    .line 1769
    .local v5, "currentBottomPixels":F
    add-float v6, v5, v4

    int-to-float v7, p2

    sub-float/2addr v6, v7

    invoke-virtual {p0, v6, v0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1773
    .end local v5    # "currentBottomPixels":F
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1774
    const/4 v1, 0x0

    .line 1776
    :cond_3
    return v1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1838
    :cond_0
    return-void
.end method

.method private removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 2880
    const/4 v0, 0x0

    .line 2881
    .local v0, "hasAddEvent":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2882
    .local v2, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2883
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2884
    .local v4, "isHeadsUp":Z
    if-ne p1, v3, :cond_0

    .line 2885
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    or-int/2addr v0, v4

    .line 2888
    .end local v2    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "isHeadsUp":Z
    :cond_0
    goto :goto_0

    .line 2889
    :cond_1
    if-eqz v0, :cond_2

    .line 2891
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2892
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 2894
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2895
    return v0
.end method

.method private requestAnimateEverything()V
    .locals 1

    .line 4206
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 4208
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4211
    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 687
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 689
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 691
    :cond_1
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .line 829
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 832
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 834
    :cond_0
    return-void
.end method

.method private runAnimationFinishedRunnables()V
    .locals 2

    .line 3806
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3807
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3808
    .end local v1    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 3809
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3810
    return-void
.end method

.method private setBackgroundTop(I)V
    .locals 1
    .param p1, "top"    # I

    .line 2403
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 2404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2405
    return-void
.end method

.method private setDarkAmount(F)V
    .locals 3
    .param p1, "darkAmount"    # F

    .line 4027
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    .line 4028
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v0

    .line 4029
    .local v0, "wasFullyDark":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDarkAmount(F)V

    .line 4030
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4031
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4032
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    .line 4033
    .local v1, "dozeParameters":Lcom/android/systemui/statusbar/phone/DozeParameters;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4034
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->fadeInTranslating()V

    .line 4037
    .end local v1    # "dozeParameters":Lcom/android/systemui/statusbar/phone/DozeParameters;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 4038
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 4039
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAntiBurnInTranslation()V

    .line 4040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4041
    return-void
.end method

.method private setDimAmount(F)V
    .locals 0
    .param p1, "dimAmount"    # F

    .line 3834
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    .line 3835
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 3836
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1
    .param p1, "isDragged"    # Z

    .line 3561
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 3562
    if-eqz p1, :cond_0

    .line 3563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 3564
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 3566
    :cond_0
    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .line 3689
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3690
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 3691
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 3692
    if-eqz v0, :cond_2

    .line 3693
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_1

    .line 3694
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 3695
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper;->cancelImmediately()V

    .line 3697
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 3698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometers()V

    .line 3699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3701
    :cond_2
    return-void
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1
    .param p1, "maxLayoutHeight"    # I

    .line 720
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxLayoutHeight(I)V

    .line 722
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 723
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "isRubberbanded"    # Z

    .line 1962
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1963
    if-eqz p3, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    goto :goto_0

    .line 1966
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 1967
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    .line 1968
    if-eqz p2, :cond_1

    .line 1969
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 1971
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1973
    :goto_0
    return-void
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .line 2000
    if-eqz p2, :cond_0

    .line 2001
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_0

    .line 2003
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    .line 2005
    :goto_0
    return-void
.end method

.method private setRequestedClipBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 939
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 941
    return-void
.end method

.method private setStackTranslation(F)V
    .locals 1
    .param p1, "stackTranslation"    # F

    .line 1052
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1053
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    .line 1055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1057
    :cond_0
    return-void
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "isSwiped"    # Z

    .line 1468
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 1469
    if-eqz p1, :cond_0

    .line 1470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1472
    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 2
    .param p1, "topPadding"    # I
    .param p2, "animate"    # Z

    .line 852
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    if-eq v0, p1, :cond_1

    .line 853
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    .line 854
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkSeparatorPadding:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkTopPadding:I

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDarkTopPadding(I)V

    .line 856
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 857
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 858
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 860
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 862
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 865
    :cond_1
    return-void
.end method

.method private shouldHideSensitive(Landroid/view/View;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hideSensitive"    # Z

    .line 5204
    const/4 v0, 0x0

    .line 5205
    .local v0, "lock":Z
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 5206
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5207
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLock()Z

    move-result v0

    .line 5209
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)Z
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 3255
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3256
    const/4 v0, 0x0

    return v0

    .line 3258
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private shouldOverScrollFling(I)Z
    .locals 3
    .param p1, "initialVelocity"    # I

    .line 2580
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 2581
    .local v1, "topOverScroll":F
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private springBack()V
    .locals 7

    .line 2027
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 2028
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2029
    .local v1, "overScrolledTop":Z
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 2030
    .local v4, "overScrolledBottom":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_4

    .line 2033
    :cond_2
    if-eqz v1, :cond_3

    .line 2034
    const/4 v5, 0x1

    .line 2035
    .local v5, "onTop":Z
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    .line 2036
    .local v6, "newAmount":F
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2037
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    goto :goto_2

    .line 2039
    .end local v5    # "onTop":Z
    .end local v6    # "newAmount":F
    :cond_3
    const/4 v5, 0x0

    .line 2040
    .restart local v5    # "onTop":Z
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    .line 2041
    .restart local v6    # "newAmount":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2043
    :goto_2
    invoke-virtual {p0, v6, v5, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2044
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2045
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 2047
    .end local v5    # "onTop":Z
    .end local v6    # "newAmount":F
    :cond_4
    return-void
.end method

.method private startAnimationToState()V
    .locals 5

    .line 3174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    .line 3176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3187
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    .line 3179
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3180
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V

    .line 3182
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 3189
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 3190
    return-void
.end method

.method private startBackgroundAnimation()V
    .locals 2

    .line 2300
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2302
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBottomAnimation()V

    .line 2303
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startTopAnimation()V

    .line 2304
    return-void
.end method

.method private startBottomAnimation()V
    .locals 9

    .line 2355
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 2356
    .local v0, "previousStartValue":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 2357
    .local v1, "previousEndValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 2358
    .local v2, "newEndValue":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2359
    .local v3, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_0

    if-ne v1, v2, :cond_0

    .line 2360
    return-void

    .line 2362
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_2

    .line 2364
    if-eqz v3, :cond_1

    .line 2367
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2368
    .local v4, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v8, v4, v7

    new-array v6, v6, [I

    aput v0, v6, v7

    aput v2, v6, v5

    invoke-virtual {v8, v6}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2369
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 2370
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 2371
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2372
    return-void

    .line 2375
    .end local v4    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundBottom(I)V

    .line 2376
    return-void

    .line 2379
    :cond_2
    if-eqz v3, :cond_3

    .line 2380
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2382
    :cond_3
    const-string v4, "backgroundBottom"

    new-array v6, v6, [I

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    aput v8, v6, v7

    aput v2, v6, v5

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2384
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2385
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2386
    const-wide/16 v6, 0x168

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2388
    new-instance v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2396
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 2397
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 2398
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 2399
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2400
    return-void
.end method

.method private startDarkAmountAnimation()V
    .locals 4

    .line 4048
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DARK_AMOUNT:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 4049
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    aput v2, v1, v3

    .line 4048
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4050
    .local v0, "darkAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4051
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4052
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4058
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 4059
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4061
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    .line 4062
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 4063
    return-void
.end method

.method private startTopAnimation()V
    .locals 9

    .line 2307
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2308
    .local v0, "previousEndValue":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2309
    .local v1, "newEndValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2310
    .local v2, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    .line 2311
    return-void

    .line 2313
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 2315
    if-eqz v2, :cond_1

    .line 2318
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2319
    .local v3, "previousStartValue":I
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 2320
    .local v7, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v8, v7, v6

    new-array v5, v5, [I

    aput v3, v5, v6

    aput v1, v5, v4

    invoke-virtual {v8, v5}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2321
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 2322
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 2323
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2324
    return-void

    .line 2327
    .end local v3    # "previousStartValue":I
    .end local v7    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundTop(I)V

    .line 2328
    return-void

    .line 2331
    :cond_2
    if-eqz v2, :cond_3

    .line 2332
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2334
    :cond_3
    const-string v3, "backgroundTop"

    new-array v5, v5, [I

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    aput v7, v5, v6

    aput v1, v5, v4

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2336
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2337
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2338
    const-wide/16 v5, 0x168

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2340
    new-instance v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2348
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 2349
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2350
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 2351
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2352
    return-void
.end method

.method private targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "positionInLinearLayout"    # I

    .line 1412
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 1413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1412
    return v0
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 3

    .line 726
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkTopPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    .line 728
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setTopPadding(I)V

    .line 730
    return-void
.end method

.method private updateAlgorithmLayoutMinHeight()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    .line 733
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMinHeight(I)V

    .line 735
    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 3089
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 3090
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3089
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 3091
    return-void
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 1
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .line 3114
    instance-of v0, p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3115
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3116
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 3118
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateAntiBurnInTranslation()V
    .locals 2

    .line 4013
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAntiBurnInOffsetX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationX(F)V

    .line 4014
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .line 2260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 2264
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundBounds()V

    .line 2265
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v0, :cond_2

    .line 2267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->areBoundsAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2268
    .local v0, "animate":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2269
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2270
    const/4 v0, 0x0

    .line 2272
    :cond_3
    if-eqz v0, :cond_4

    .line 2273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBackgroundAnimation()V

    goto :goto_2

    .line 2275
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2278
    .end local v0    # "animate":Z
    :goto_2
    goto :goto_3

    .line 2279
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2281
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 2282
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2283
    return-void

    .line 2261
    :cond_6
    :goto_4
    return-void
.end method

.method private updateBackgroundBounds()V
    .locals 10

    .line 2436
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationInWindow([I)V

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v1, v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2440
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2442
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2443
    return-void

    .line 2445
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 2446
    .local v0, "firstView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    const/4 v1, 0x0

    .line 2447
    .local v1, "top":I
    if-eqz v0, :cond_4

    .line 2449
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 2450
    .local v3, "finalTranslationY":I
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eq v4, v3, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ne v4, v3, :cond_2

    goto :goto_0

    .line 2456
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationY()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .end local v3    # "finalTranslationY":I
    goto :goto_1

    .line 2454
    .restart local v3    # "finalTranslationY":I
    :cond_3
    :goto_0
    move v1, v3

    .line 2460
    .end local v3    # "finalTranslationY":I
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->hasItemsInStableShelf()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 2461
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    goto :goto_2

    .line 2462
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 2464
    .local v3, "lastView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    :goto_2
    if-eqz v3, :cond_a

    .line 2466
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v3, v4, :cond_6

    .line 2467
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    .local v4, "finalTranslationY":I
    goto :goto_3

    .line 2469
    .end local v4    # "finalTranslationY":I
    :cond_6
    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v4

    float-to-int v4, v4

    .line 2471
    .restart local v4    # "finalTranslationY":I
    :goto_3
    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v5

    .line 2472
    .local v5, "finalHeight":I
    add-int v6, v4, v5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getClipBottomAmount()I

    move-result v7

    sub-int/2addr v6, v7

    .line 2473
    .local v6, "finalBottom":I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v6, :cond_9

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v6, :cond_8

    goto :goto_4

    .line 2479
    :cond_8
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationY()F

    move-result v7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 2480
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getClipBottomAmount()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .end local v4    # "finalTranslationY":I
    .end local v5    # "finalHeight":I
    .end local v6    # "finalBottom":I
    goto :goto_5

    .line 2477
    .restart local v4    # "finalTranslationY":I
    .restart local v5    # "finalHeight":I
    .restart local v6    # "finalBottom":I
    :cond_9
    :goto_4
    move v7, v6

    .line 2480
    .local v7, "bottom":I
    move v4, v7

    .line 2482
    .end local v5    # "finalHeight":I
    .end local v6    # "finalBottom":I
    .end local v7    # "bottom":I
    .local v4, "bottom":I
    :goto_5
    nop

    .line 2484
    move v9, v4

    move v4, v1

    move v1, v9

    goto :goto_6

    .line 2483
    .end local v4    # "bottom":I
    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 2484
    move v4, v1

    .line 2486
    .local v1, "bottom":I
    .local v4, "top":I
    :goto_6
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    .line 2487
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v2, v5

    int-to-float v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    .end local v4    # "top":I
    .local v2, "top":I
    :goto_7
    goto :goto_8

    .line 2490
    .end local v2    # "top":I
    .restart local v4    # "top":I
    :cond_b
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_7

    .line 2492
    .end local v4    # "top":I
    .restart local v2    # "top":I
    :goto_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 2493
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2494
    return-void
.end method

.method private updateBackgroundDimming()V
    .locals 6

    .line 569
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 570
    return-void

    .line 573
    :cond_0
    const v0, 0x3f333333    # 0.7f

    const v1, 0x3e99999a    # 0.3f

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 575
    .local v0, "alpha":F
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    sub-float/2addr v3, v1

    mul-float/2addr v0, v3

    .line 577
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getBackgroundColor()I

    move-result v1

    .line 578
    .local v1, "scrimColor":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v1, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 582
    .local v2, "awakeColor":I
    sget-object v3, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 583
    .local v3, "colorInterpolation":F
    const/4 v4, -0x1

    invoke-static {v2, v4, v3}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 585
    .local v4, "color":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    if-eq v5, v4, :cond_1

    .line 586
    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    .line 587
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 590
    :cond_1
    return-void
.end method

.method private updateChildren()V
    .locals 3

    .line 742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForAddedChildren()V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const/4 v1, 0x0

    goto :goto_0

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    .line 743
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setCurrentScrollVelocity(F)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setScrollY(I)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_1

    .line 749
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    .line 751
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    .line 753
    :goto_1
    return-void
.end method

.method private updateChronometerForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 3711
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3712
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3713
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 3715
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateChronometers()V
    .locals 3

    .line 3704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3705
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3706
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3708
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateClippingToTopRoundedCorner()V
    .locals 11

    .line 764
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 766
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 764
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 767
    .local v0, "clipStart":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 768
    .local v1, "clipEnd":Ljava/lang/Float;
    const/4 v2, 0x1

    .line 769
    .local v2, "first":Z
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "first":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 770
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    .line 771
    .local v5, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 772
    goto :goto_4

    .line 774
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    .line 775
    .local v6, "start":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 776
    .local v7, "end":F
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v6

    const/4 v9, 0x1

    if-lez v8, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v8, v8, v7

    if-ltz v8, :cond_2

    .line 777
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v8, v8, v7

    if-gtz v8, :cond_3

    :cond_2
    move v8, v9

    goto :goto_1

    :cond_3
    move v8, v3

    .line 778
    .local v8, "clip":Z
    :goto_1
    if-eqz v4, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move v9, v3

    nop

    :cond_5
    :goto_2
    and-int/2addr v8, v9

    .line 779
    if-eqz v8, :cond_6

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float v9, v6, v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_3

    .line 780
    :cond_6
    const/high16 v9, -0x40800000    # -1.0f

    .line 779
    :goto_3
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setDistanceToTopRoundness(F)V

    .line 781
    const/4 v4, 0x0

    .line 769
    .end local v5    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "start":F
    .end local v7    # "end":F
    .end local v8    # "clip":Z
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method private updateContentHeight()V
    .locals 18

    .line 2160
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2161
    .local v1, "height":I
    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    .line 2162
    .local v2, "previousPaddingRequest":F
    const/4 v3, 0x0

    .line 2163
    .local v3, "previousPaddingAmount":F
    const/4 v4, 0x0

    .line 2164
    .local v4, "numShownItems":I
    const/4 v5, 0x0

    .line 2165
    .local v5, "finish":Z
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2166
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2167
    const/4 v6, 0x1

    goto :goto_0

    .line 2166
    :cond_0
    nop

    .line 2167
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 2169
    .local v6, "maxDisplayedNotifications":I
    :goto_0
    move v9, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v9, "height":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_b

    .line 2170
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2171
    .local v10, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-ne v10, v11, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 2172
    .local v11, "footerViewOnLockScreen":Z
    :goto_2
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_a

    .line 2173
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v12

    if-nez v12, :cond_a

    if-nez v11, :cond_a

    .line 2174
    const/4 v12, -0x1

    if-eq v6, v12, :cond_3

    if-lt v4, v6, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 2176
    .local v12, "limitReached":Z
    :goto_3
    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2177
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v13

    if-eqz v13, :cond_4

    instance-of v13, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_4

    move-object v13, v10

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2179
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 2180
    .local v13, "notificationOnAmbientThatIsNotPulsing":Z
    :goto_4
    if-nez v12, :cond_5

    if-eqz v13, :cond_6

    .line 2181
    :cond_5
    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2182
    const/4 v5, 0x1

    .line 2184
    :cond_6
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v14

    .line 2186
    .local v14, "increasedPaddingAmount":F
    const/4 v15, 0x0

    cmpl-float v16, v14, v15

    if-ltz v16, :cond_7

    .line 2187
    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    invoke-static {v2, v15, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    float-to-int v15, v15

    int-to-float v15, v15

    .line 2191
    .local v15, "padding":F
    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v7, v7

    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v8, v8

    invoke-static {v7, v8, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    float-to-int v7, v7

    int-to-float v2, v7

    goto :goto_6

    .line 2196
    .end local v15    # "padding":F
    :cond_7
    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v8, v14

    invoke-static {v15, v7, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    float-to-int v7, v7

    .line 2200
    .local v7, "ownPadding":I
    cmpl-float v8, v3, v15

    if-lez v8, :cond_8

    .line 2201
    int-to-float v8, v7

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    invoke-static {v8, v15, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    .local v8, "padding":F
    goto :goto_5

    .line 2206
    .end local v8    # "padding":F
    :cond_8
    int-to-float v8, v7

    .restart local v8    # "padding":F
    :goto_5
    move v15, v8

    .line 2208
    .end local v8    # "padding":F
    .restart local v15    # "padding":F
    int-to-float v2, v7

    .line 2210
    .end local v7    # "ownPadding":I
    :goto_6
    if-eqz v9, :cond_9

    .line 2211
    int-to-float v7, v9

    add-float/2addr v7, v15

    float-to-int v9, v7

    .line 2213
    :cond_9
    move v3, v14

    .line 2214
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v9, v7

    .line 2215
    add-int/lit8 v4, v4, 0x1

    .line 2216
    if-eqz v5, :cond_a

    .line 2217
    goto :goto_7

    .line 2169
    .end local v10    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v11    # "footerViewOnLockScreen":Z
    .end local v12    # "limitReached":Z
    .end local v13    # "notificationOnAmbientThatIsNotPulsing":Z
    .end local v14    # "increasedPaddingAmount":F
    .end local v15    # "padding":F
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2221
    .end local v1    # "i":I
    :cond_b
    :goto_7
    iput v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    .line 2222
    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v1, v9

    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomMargin:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2223
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 2224
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 2225
    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMaxHeight(I)V

    .line 2226
    return-void
.end method

.method private updateContinuousShadowDrawing()V
    .locals 3

    .line 4883
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 4884
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4885
    .local v0, "continuousShadowUpdate":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    if-eq v0, v1, :cond_3

    .line 4886
    if-eqz v0, :cond_2

    .line 4887
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 4889
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4891
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    .line 4893
    :cond_3
    return-void
.end method

.method private updateFadingState()V
    .locals 0

    .line 4481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 4482
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 4483
    return-void
.end method

.method private updateFirstAndLastBackgroundViews()V
    .locals 5

    .line 3023
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 3024
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v1

    .line 3025
    .local v1, "lastChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_2

    .line 3026
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3027
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v1, v2, :cond_1

    move v3, v4

    nop

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    goto :goto_1

    .line 3029
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3030
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 3032
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 3033
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 3034
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 3035
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setFirstAndLastBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 3037
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 3038
    return-void
.end method

.method private updateForcedScroll()V
    .locals 6

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 809
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 814
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    .line 815
    .local v1, "positionInLinearLayout":I
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v2

    .line 816
    .local v2, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 818
    .local v3, "outOfViewScroll":I
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 822
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v2, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v4, :cond_3

    .line 823
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 826
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v1    # "positionInLinearLayout":I
    .end local v2    # "targetScroll":I
    .end local v3    # "outOfViewScroll":I
    :cond_3
    return-void
.end method

.method private updateForwardAndBackwardScrollability()V
    .locals 5

    .line 2247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2248
    .local v0, "forwardScrollable":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 2249
    .local v3, "backwardsScrollable":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-ne v0, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    .line 2251
    .local v1, "changed":Z
    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    .line 2252
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    .line 2253
    if-eqz v1, :cond_4

    .line 2254
    const/16 v2, 0x800

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->sendAccessibilityEvent(I)V

    .line 2256
    :cond_4
    return-void
.end method

.method private updateHideSensitiveForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 3049
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 3050
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3052
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHideSensitive(Landroid/view/View;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 3055
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 7

    .line 3078
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 3079
    .local v0, "running":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setAnimationsEnabled(Z)V

    .line 3080
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 3081
    .local v3, "childCount":I
    move v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "running":Z
    :goto_2
    if-ge v0, v3, :cond_4

    .line 3082
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3083
    .local v5, "child":Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v6, v1

    :goto_4
    and-int/2addr v4, v6

    .line 3084
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 3081
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3086
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 3743
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3744
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3745
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 3746
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3747
    return-void

    .line 3750
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 3751
    .local v1, "endPosition":F
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3752
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    .line 3754
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 3755
    .local v2, "layoutEnd":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 3756
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 3758
    :cond_2
    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 3759
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    int-to-float v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3760
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 3764
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "endPosition":F
    .end local v2    # "layoutEnd":I
    :cond_3
    return-void
.end method

.method private updateScrollStateForAddedChildren()V
    .locals 8

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    return-void

    .line 789
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 790
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 791
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 792
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v3

    .line 793
    .local v3, "startingPosition":I
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v4

    .line 794
    .local v4, "increasedPaddingAmount":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    goto :goto_1

    .line 795
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 796
    .local v5, "padding":I
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v5

    .line 797
    .local v6, "childHeight":I
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v7, :cond_3

    .line 800
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 789
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "startingPosition":I
    .end local v4    # "increasedPaddingAmount":F
    .end local v5    # "padding":I
    .end local v6    # "childHeight":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 805
    return-void
.end method

.method private updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 6
    .param p1, "removedChild"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 2921
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    .line 2922
    .local v0, "startingPosition":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v1

    .line 2924
    .local v1, "increasedPaddingAmount":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    .line 2925
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    .local v2, "padding":I
    goto :goto_0

    .line 2930
    .end local v2    # "padding":I
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 2935
    .restart local v2    # "padding":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    .line 2936
    .local v3, "childHeight":I
    add-int v4, v0, v3

    .line 2937
    .local v4, "endPosition":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v4, v5, :cond_1

    .line 2940
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1

    .line 2941
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v5, :cond_2

    .line 2944
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2946
    :cond_2
    :goto_1
    return-void
.end method

.method private updateScrollability()V
    .locals 2

    .line 2238
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2239
    .local v0, "scrollable":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v0, v1, :cond_1

    .line 2240
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 2241
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFocusable(Z)V

    .line 2242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 2244
    :cond_1
    return-void
.end method

.method private updateSrcDrawing()V
    .locals 2

    .line 629
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 630
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDrawBackgroundAsSrc:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-nez v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 633
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 636
    return-void
.end method

.method private updateViewShadows()V
    .locals 12

    .line 3906
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3907
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3908
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 3909
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3906
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3912
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3915
    const/4 v1, 0x0

    .line 3916
    .local v1, "previous":Lcom/android/systemui/statusbar/ExpandableView;
    move-object v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "previous":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 3917
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3918
    .local v3, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v4

    .line 3919
    .local v4, "translationZ":F
    if-nez v2, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v5

    .line 3920
    .local v5, "otherZ":F
    :goto_2
    sub-float v6, v5, v4

    .line 3921
    .local v6, "diff":F
    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    if-lez v8, :cond_4

    const v8, 0x3dcccccd    # 0.1f

    cmpl-float v9, v6, v8

    if-ltz v9, :cond_3

    goto :goto_3

    .line 3925
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 3926
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 3927
    .local v7, "yLocation":F
    div-float v8, v6, v8

    .line 3929
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineAlpha()F

    move-result v9

    float-to-int v10, v7

    .line 3930
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineTranslation()I

    move-result v11

    .line 3927
    invoke-virtual {v3, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    .end local v7    # "yLocation":F
    goto :goto_4

    .line 3923
    :cond_4
    :goto_3
    invoke-virtual {v3, v7, v7, v0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    .line 3932
    :goto_4
    move-object v2, v3

    .line 3916
    .end local v3    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "translationZ":F
    .end local v5    # "otherZ":F
    .end local v6    # "diff":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3935
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3936
    return-void
.end method

.method private updateWillNotDraw()V
    .locals 3

    .line 4022
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4023
    .local v0, "willDraw":Z
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setWillNotDraw(Z)V

    .line 4024
    return-void
.end method


# virtual methods
.method public addContainerView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 4361
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 4362
    return-void
.end method

.method public addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4625
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4626
    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 2
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 3109
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandAnimationTopChange(I)V

    .line 3110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3111
    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3101
    new-instance v0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$kf3mstlQ__SBMLTTAvwCr700C4g;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$kf3mstlQ__SBMLTTAvwCr700C4g;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAwayListener(Ljava/util/function/Consumer;)V

    .line 3105
    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1455
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1319
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1320
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1321
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1322
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1319
    :goto_0
    return v0
.end method

.method public cancelExpandHelper()V
    .locals 1

    .line 3963
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 3964
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 3593
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->cancelLongPress()V

    .line 3594
    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newIndex"    # I

    .line 3143
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3145
    .local v0, "currentIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3146
    const/4 v1, 0x0

    .line 3147
    .local v1, "isTransient":Z
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3148
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3149
    const/4 v1, 0x1

    .line 3151
    :cond_0
    const-string v2, "StackScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to re-position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    if-eqz v1, :cond_1

    const-string v4, "transient"

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " view {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3151
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    return-void

    .line 3159
    .end local v1    # "isTransient":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_3

    if-eq v0, p2, :cond_3

    .line 3160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3161
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 3162
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 3163
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 3164
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 3165
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3166
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 3167
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3168
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3171
    :cond_3
    return-void
.end method

.method public checkSnoozeLeavebehind()V
    .locals 8

    .line 3616
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    if-eqz v0, :cond_0

    .line 3617
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 3620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3622
    :cond_0
    return-void
.end method

.method public cleanUpViewState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2776
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2780
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 3578
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3579
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 3582
    :cond_0
    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4901
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 4902
    return-void
.end method

.method protected createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 3543
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;
    .param p3, "delay"    # I
    .param p4, "duration"    # J

    .line 1486
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    int-to-long v4, p3

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 1488
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4595
    const-string v0, "[%s: pulsing=%s qsCustomizerShowing=%s visibility=%s alpha:%f scrollY:%d maxTopPadding:%d showShelfOnly=%s qsExpandFraction=%f]"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    .line 4598
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4599
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-eqz v2, :cond_0

    const-string v2, "T"

    goto :goto_0

    :cond_0
    const-string v2, "f"

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 4600
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "T"

    goto :goto_1

    :cond_1
    const-string v3, "f"

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 4601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_2

    const-string/jumbo v3, "visible"

    goto :goto_2

    .line 4602
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    const-string v3, "gone"

    goto :goto_2

    .line 4603
    :cond_3
    const-string v3, "invisible"

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 4604
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 4605
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 4606
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 4607
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v3, :cond_4

    const-string v3, "T"

    goto :goto_3

    :cond_4
    const-string v3, "f"

    :goto_3
    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    .line 4608
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    .line 4595
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4610
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dumpRows(Ljava/io/PrintWriter;)V

    .line 4612
    return-void
.end method

.method public expansionStateChanged(Z)V
    .locals 1
    .param p1, "isExpanding"    # Z

    .line 1366
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1367
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    .line 1368
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 1371
    :cond_0
    return-void
.end method

.method protected fling(I)V
    .locals 16
    .param p1, "velocityY"    # I

    move-object/from16 v0, p0

    .line 2543
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 2544
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    .line 2546
    .local v12, "scrollRange":I
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    .line 2547
    .local v13, "topAmount":F
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v14

    .line 2548
    .local v14, "bottomAmount":F
    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    if-gez p1, :cond_0

    cmpl-float v5, v13, v4

    if-lez v5, :cond_0

    .line 2549
    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v6, v13

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2550
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2551
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2552
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v4, v1

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v4, v1

    add-float/2addr v4, v13

    iput v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2554
    :cond_0
    if-lez p1, :cond_1

    cmpl-float v1, v14, v4

    if-lez v1, :cond_1

    .line 2555
    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2556
    invoke-virtual {v0, v4, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2557
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 2558
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v3

    mul-float/2addr v1, v3

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v14

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2562
    :cond_1
    iput v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 2564
    :goto_0
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2565
    .local v1, "minScrollY":I
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v3, :cond_2

    .line 2566
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2568
    .end local v1    # "minScrollY":I
    .local v15, "minScrollY":I
    :cond_2
    move v15, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 2569
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ltz v9, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x3fffffff    # 1.9999999f

    .line 2568
    :goto_1
    move v11, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, p1

    move v9, v15

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2571
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 2573
    .end local v12    # "scrollRange":I
    .end local v13    # "topAmount":F
    .end local v14    # "bottomAmount":F
    .end local v15    # "minScrollY":I
    :cond_4
    return-void
.end method

.method public forceNoOverlappingRendering(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 4414
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    .line 4415
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fromMoreCard"    # Z

    .line 3127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_1

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3130
    if-eqz p2, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3135
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_2

    .line 3136
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3137
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3139
    :cond_2
    return-void
.end method

.method public generateChildOrderChangedEvent()V
    .locals 1

    .line 4337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 4339
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4342
    :cond_0
    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "isHeadsUp"    # Z

    .line 4375
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    if-eqz v0, :cond_2

    .line 4376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4378
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 4379
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 4381
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4383
    :cond_2
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .line 3886
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getAppearFraction(F)F
    .locals 4
    .param p1, "height"    # F

    .line 1041
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 1042
    .local v0, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v1

    .line 1043
    .local v1, "appearStartPosition":F
    sub-float v2, p1, v1

    sub-float v3, v0, v1

    div-float/2addr v2, v3

    return v2
.end method

.method public getBottomMostNotificationBottom()F
    .locals 6

    .line 4177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4178
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4179
    .local v1, "max":F
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4180
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4181
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 4182
    goto :goto_1

    .line 4184
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 4185
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 4186
    .local v4, "bottom":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    .line 4187
    move v1, v4

    .line 4179
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "bottom":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4190
    .end local v2    # "childIdx":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v2

    add-float/2addr v2, v1

    return v2
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 1211
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    .line 1212
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1213
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 1214
    .local v2, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1215
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    if-eq v3, v2, :cond_0

    .line 1217
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1218
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1223
    :cond_0
    move-object v0, v2

    .line 1226
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 1266
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 11
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p2, v0

    .line 1233
    .local v0, "localTouchY":F
    const/4 v1, 0x0

    .line 1234
    .local v1, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1237
    .local v2, "minDist":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 1238
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "childIdx":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1239
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1240
    .local v5, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    instance-of v6, v5, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-eqz v6, :cond_0

    .line 1242
    goto :goto_1

    .line 1244
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    .line 1245
    .local v6, "childTop":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 1246
    .local v7, "top":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    .line 1247
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 1249
    .local v8, "bottom":F
    sub-float v9, v7, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v10, v8, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1250
    .local v9, "dist":F
    cmpg-float v10, v9, v2

    if-gez v10, :cond_1

    .line 1251
    move-object v1, v5

    .line 1252
    move v2, v9

    .line 1238
    .end local v5    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "childTop":F
    .end local v7    # "top":F
    .end local v8    # "bottom":F
    .end local v9    # "dist":F
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1255
    .end local v4    # "childIdx":I
    :cond_2
    return-object v1
.end method

.method public getContainerChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .line 4351
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContainerChildCount()I
    .locals 1

    .line 4346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 2156
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .line 1992
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1
    .param p1, "top"    # Z

    .line 1996
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    :goto_0
    return v0
.end method

.method public getDarkAmount()F
    .locals 1

    .line 4044
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    return v0
.end method

.method public getEmptyBottomMargin()I
    .locals 2

    .line 3612
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 1

    .line 4173
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;
    .locals 5

    .line 2066
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2067
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2068
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2069
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2070
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    return-object v3

    .line 2067
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2073
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFirstItemMinHeight()I
    .locals 2

    .line 1070
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 1071
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    :goto_0
    return v1
.end method

.method public getFooterViewHeight()I
    .locals 2

    .line 4169
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FooterView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    .line 3608
    return-object p0
.end method

.method public getIntrinsicContentHeight()I
    .locals 1

    .line 947
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    return v0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .line 3972
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getLastChildNotGone()Landroid/view/View;
    .locals 5

    .line 2130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2131
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2132
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2133
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2134
    return-object v2

    .line 2131
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2137
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLayoutMinHeight()I
    .locals 2

    .line 2615
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2616
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v0

    return v0

    .line 2618
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMaxExpandHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 1375
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v0

    return v0
.end method

.method public getMinExpansionHeight()I
    .locals 3

    .line 4542
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .line 2144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2145
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 2146
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2147
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2148
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v3, v4, :cond_0

    .line 2149
    add-int/lit8 v1, v1, 0x1

    .line 2146
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2152
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 1

    .line 4525
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    .line 3979
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getOpeningHeight()F
    .locals 2

    .line 4565
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 4568
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    return v0
.end method

.method public getPeekHeight()I
    .locals 5

    .line 2639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2640
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    goto :goto_0

    .line 2641
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 2642
    .local v1, "firstChildMinHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 2643
    .local v2, "shelfHeight":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 2644
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    .line 2646
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    return v3
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 13
    .param p1, "requestedView"    # Landroid/view/View;

    .line 2957
    const/4 v0, 0x0

    .line 2958
    .local v0, "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v1, 0x0

    .line 2959
    .local v1, "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInGroup(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2962
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2963
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    move-object v1, v2

    move-object p1, v2

    .line 2965
    :cond_0
    const/4 v2, 0x0

    .line 2966
    .local v2, "position":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v3, v3

    .line 2967
    .local v3, "previousPaddingRequest":F
    const/4 v4, 0x0

    .line 2968
    .local v4, "previousPaddingAmount":F
    const/4 v5, 0x0

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v5

    .local v2, "i":I
    .local v3, "position":I
    .local v4, "previousPaddingRequest":F
    .local v6, "previousPaddingAmount":F
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 2969
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2970
    .local v7, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v5

    .line 2971
    .local v8, "notGone":Z
    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2972
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v9

    .line 2974
    .local v9, "increasedPaddingAmount":F
    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-ltz v11, :cond_2

    .line 2975
    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v10, v10

    invoke-static {v4, v10, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    .line 2979
    .local v10, "padding":F
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v4, v11

    goto :goto_3

    .line 2984
    .end local v10    # "padding":F
    :cond_2
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v9

    invoke-static {v10, v11, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    .line 2988
    .local v11, "ownPadding":I
    cmpl-float v10, v6, v10

    if-lez v10, :cond_3

    .line 2989
    int-to-float v10, v11

    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v10, v12, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    .restart local v10    # "padding":F
    goto :goto_2

    .line 2994
    .end local v10    # "padding":F
    :cond_3
    int-to-float v10, v11

    .line 2996
    .restart local v10    # "padding":F
    :goto_2
    int-to-float v4, v11

    .line 2998
    .end local v11    # "ownPadding":I
    :goto_3
    if-eqz v3, :cond_4

    .line 2999
    int-to-float v11, v3

    add-float/2addr v11, v10

    float-to-int v3, v11

    .line 3001
    :cond_4
    move v6, v9

    .line 3003
    .end local v9    # "increasedPaddingAmount":F
    .end local v10    # "padding":F
    :cond_5
    if-ne v7, p1, :cond_7

    .line 3004
    if-eqz v1, :cond_6

    .line 3005
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v5

    add-int/2addr v3, v5

    .line 3007
    :cond_6
    return v3

    .line 3009
    :cond_7
    if-eqz v8, :cond_8

    .line 3010
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr v3, v9

    .line 2968
    .end local v7    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "notGone":Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3013
    .end local v2    # "i":I
    :cond_9
    return v5
.end method

.method public getStackTranslation()F
    .locals 1

    .line 1048
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    return v0
.end method

.method public getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    return-object v0
.end method

.method public getTopPadding()I
    .locals 1

    .line 848
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    .line 2635
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1500
    return-object p0
.end method

.method public goToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .line 3956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 3957
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 3958
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3960
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 4419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPulsingNotifications()Z
    .locals 1

    .line 2234
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    return v0
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    .line 3121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 3122
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3121
    :goto_0
    return v0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .line 1460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    return v0
.end method

.method public isBelowLastNotification(FF)Z
    .locals 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 4214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4215
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_5

    .line 4216
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4217
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 4218
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getY()F

    move-result v5

    .line 4219
    .local v5, "childTop":F
    cmpl-float v6, v5, p2

    if-lez v6, :cond_0

    .line 4221
    return v3

    .line 4223
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    .line 4224
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpl-float v6, p2, v6

    if-lez v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    .line 4225
    .local v6, "belowChild":Z
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-ne v4, v7, :cond_2

    .line 4226
    if-nez v6, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/FooterView;->getX()F

    move-result v7

    sub-float v7, p1, v7

    sub-float v8, p2, v5

    invoke-virtual {v2, v7, v8}, Lcom/android/systemui/statusbar/FooterView;->isOnEmptySpace(FF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4229
    return v3

    .line 4231
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v4, v7, :cond_3

    .line 4233
    return v2

    .line 4234
    :cond_3
    if-nez v6, :cond_4

    .line 4236
    return v3

    .line 4215
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v5    # "childTop":F
    .end local v6    # "belowChild":Z
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4240
    .end local v1    # "i":I
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v1, v1

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v1, v4

    cmpl-float v1, p2, v1

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    return v2
.end method

.method isDimmed()Z
    .locals 1

    .line 3830
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 4435
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method public isFooterViewContentVisible()Z
    .locals 1

    .line 4165
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FooterView;->isContentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFooterViewNotGone()Z
    .locals 2

    .line 4159
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    .line 4160
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FooterView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    .line 4161
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FooterView;->willBeGone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4159
    :goto_0
    return v0
.end method

.method public isFullyDark()Z
    .locals 1

    .line 4615
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v0

    return v0
.end method

.method public isInContentBounds(F)Z
    .locals 2
    .param p1, "y"    # F

    .line 3557
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 707
    .local v0, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 708
    return v1

    .line 710
    :cond_0
    iget v2, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    and-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_1

    .line 711
    return v1

    .line 713
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 714
    return v1

    .line 716
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected isInsideQsContainer(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .line 3603
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrolledToTop()Z
    .locals 1

    .line 3598
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1384
    return-void

    .line 1386
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1387
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    .line 1388
    return-void
.end method

.method public notifyGroupChildAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;

    .line 3064
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 3065
    return-void
.end method

.method public notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;
    .param p2, "childrenContainer"    # Landroid/view/ViewGroup;

    .line 3059
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 3060
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1418
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 1420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 1421
    .local v0, "range":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v1, v0, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1425
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1429
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    .line 1431
    :cond_1
    :goto_0
    return-object p1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStartDismissing()V

    .line 1171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1172
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    .line 1173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1174
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1175
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1178
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1179
    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 1

    .line 3776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3777
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 3779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTransient()V

    .line 3780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearHeadsUpDisappearRunning()V

    .line 3781
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1088
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1089
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildViewDismissed(Landroid/view/View;)V

    .line 1092
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1093
    .local v1, "transientContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1094
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 1096
    :cond_1
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 1145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1151
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1156
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 1158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1160
    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1476
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1477
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 1478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1479
    .local v0, "densityScale":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setDensityScale(F)V

    .line 1480
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    .line 1481
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setPagingTouchSlop(F)V

    .line 1482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 1483
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStopDismissing()V

    .line 1200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1201
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 515
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 516
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->drawBackground(Landroid/graphics/Canvas;)V

    .line 528
    :cond_1
    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    .line 3629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3630
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 3632
    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    .line 3635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3636
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 3637
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3638
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_0

    .line 3639
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3640
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 3641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViews()V

    .line 3642
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearUserLockedViews()V

    .line 3644
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1561
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1565
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1568
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    .line 1569
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1570
    .local v0, "vscroll":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    .line 1571
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVerticalScrollFactor()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 1572
    .local v1, "delta":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 1573
    .local v2, "range":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1574
    .local v3, "oldScrollY":I
    sub-int v4, v3, v1

    .line 1575
    .local v4, "newScrollY":I
    if-gez v4, :cond_2

    .line 1576
    const/4 v4, 0x0

    goto :goto_0

    .line 1577
    :cond_2
    if-le v4, v2, :cond_3

    .line 1578
    move v4, v2

    .line 1580
    :cond_3
    :goto_0
    if-eq v4, v3, :cond_4

    .line 1581
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1582
    const/4 v5, 0x1

    return v5

    .line 1589
    .end local v0    # "vscroll":F
    .end local v1    # "delta":I
    .end local v2    # "range":I
    .end local v3    # "oldScrollY":I
    .end local v4    # "newScrollY":I
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1563
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public onGoToKeyguard()V
    .locals 0

    .line 4202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimateEverything()V

    .line 4203
    return-void
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 4265
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 4266
    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 3
    .param p1, "changedRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expanded"    # Z

    .line 4245
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 4246
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4247
    .local v0, "animated":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4248
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 4249
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4251
    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 4252
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    if-nez v2, :cond_3

    .line 4253
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 4255
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    .line 4261
    return-void
.end method

.method public onGroupsChanged()V
    .locals 1

    .line 4333
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 4334
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .line 3719
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3720
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3721
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 3722
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 3723
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3724
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0

    .line 3725
    :cond_0
    const/4 v0, 0x0

    .line 3726
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v0, v1, :cond_1

    .line 3727
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-ne v1, v2, :cond_2

    .line 3728
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 3730
    :cond_2
    if-eqz p2, :cond_3

    .line 3731
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 3733
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3734
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 4271
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4272
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4273
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 4274
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 4275
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 4276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 4277
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4281
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v0, :cond_1

    .line 4283
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 4284
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v0, :cond_0

    .line 4285
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4287
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4289
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-eqz v0, :cond_1

    .line 4290
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4291
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4295
    :cond_1
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4296
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2697
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 2698
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 2699
    const/4 v2, 0x0

    .line 2700
    .local v2, "expandWantsIt":Z
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v3, :cond_0

    .line 2701
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, v1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2703
    :cond_0
    const/4 v3, 0x0

    .line 2704
    .local v3, "scrollWantsIt":Z
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v4, :cond_1

    .line 2705
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2707
    :cond_1
    const/4 v4, 0x0

    .line 2708
    .local v4, "swipeWantsIt":Z
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v5, :cond_2

    .line 2713
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 2716
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    .line 2717
    .local v5, "isUp":Z
    :goto_0
    iget-object v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    .line 2718
    .local v8, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 2720
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2721
    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 2725
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 2726
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2728
    :cond_5
    if-nez v4, :cond_7

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    goto :goto_2

    :cond_7
    :goto_1
    move v6, v7

    :goto_2
    return v6
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 667
    .local v0, "centerX":F
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 668
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 671
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    .line 672
    .local v5, "width":F
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    .line 673
    .local v6, "height":F
    div-float v7, v5, v1

    sub-float v7, v0, v7

    float-to-int v7, v7

    div-float v8, v5, v1

    add-float/2addr v8, v0

    float-to-int v8, v8

    float-to-int v9, v6

    invoke-virtual {v4, v7, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 667
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "width":F
    .end local v6    # "height":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 679
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 684
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 650
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 652
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 653
    .local v0, "width":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 654
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 653
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 657
    .local v1, "childWidthSpec":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 658
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 659
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChild(Landroid/view/View;II)V

    .line 658
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 661
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    if-nez v0, :cond_0

    .line 485
    return-void

    .line 487
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 488
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 489
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    const/16 v2, 0x14d

    .line 490
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 492
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 493
    return-void
.end method

.method public onMenuReset(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 499
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 501
    :cond_0
    return-void
.end method

.method public onMenuShown(Landroid/view/View;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 506
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    const/16 v1, 0x14c

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 508
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onMenuShown(Landroid/view/View;)V

    .line 512
    return-void
.end method

.method public onPanelTrackingStarted()V
    .locals 2

    .line 3675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3676
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3677
    return-void
.end method

.method public onPanelTrackingStopped()V
    .locals 2

    .line 3679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3680
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3681
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 3738
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3739
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3740
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 1506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1507
    .local v0, "isCancelOrUp":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 1508
    const/4 v3, 0x0

    .line 1509
    .local v3, "expandWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_3

    .line 1510
    if-eqz v0, :cond_2

    .line 1511
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, v1}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1513
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1514
    .local v4, "wasExpandingBefore":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1515
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v5, :cond_3

    .line 1517
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    .line 1520
    .end local v4    # "wasExpandingBefore":Z
    :cond_3
    const/4 v4, 0x0

    .line 1521
    .local v4, "scrollerWantsIt":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v5, :cond_4

    .line 1523
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1525
    :cond_4
    const/4 v5, 0x0

    .line 1526
    .local v5, "horizontalSwipeWantsIt":Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v6, :cond_5

    .line 1531
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1535
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v6

    .line 1536
    .local v6, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-eqz v6, :cond_8

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1537
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/statusbar/NotificationSnooze;

    if-eqz v7, :cond_8

    .line 1538
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 1539
    .local v7, "ns":Lcom/android/systemui/statusbar/NotificationSnooze;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationSnooze;->isExpanded()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v0, :cond_7

    :cond_6
    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    .line 1543
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 1546
    .end local v7    # "ns":Lcom/android/systemui/statusbar/NotificationSnooze;
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v2, :cond_9

    .line 1547
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 1549
    :cond_9
    if-nez v5, :cond_b

    if-nez v4, :cond_b

    if-nez v3, :cond_b

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_2

    :cond_a
    goto :goto_3

    :cond_b
    :goto_2
    move v1, v2

    :goto_3
    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 3018
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3019
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 3020
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2769
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    if-nez v0, :cond_0

    .line 2770
    invoke-direct {p0, p1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2772
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 3570
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 3571
    if-nez p1, :cond_0

    .line 3572
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 3574
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 4301
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4302
    return v1

    .line 4304
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4305
    return v2

    .line 4307
    :cond_1
    const/4 v0, -0x1

    .line 4308
    .local v0, "direction":I
    const/16 v3, 0x1000

    if-eq p1, v3, :cond_2

    const/16 v3, 0x2000

    if-eq p1, v3, :cond_3

    const v3, 0x1020038

    if-eq p1, v3, :cond_3

    const v3, 0x102003a

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 4312
    :cond_2
    const/4 v0, 0x1

    .line 4317
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4318
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4319
    .local v3, "viewportHeight":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    mul-int v5, v0, v3

    add-int/2addr v4, v5

    .line 4320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4319
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4321
    .local v4, "targetScrollY":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq v4, v5, :cond_4

    .line 4322
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 4323
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 4324
    return v1

    .line 4328
    .end local v3    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_4
    :goto_0
    return v2
.end method

.method public removeContainerView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 4356
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4357
    return-void
.end method

.method public removeOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4632
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4633
    return-void
.end method

.method public requestDisallowDismiss()V
    .locals 1

    .line 3589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 3590
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 2784
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2785
    if-eqz p1, :cond_0

    .line 2786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 2788
    :cond_0
    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    .line 3585
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 3586
    return-void
.end method

.method public resetCheckSnoozeLeavebehind()V
    .locals 1

    .line 3625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3626
    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 4897
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 4898
    return-void
.end method

.method public resetScrollPosition()V
    .locals 1

    .line 3684
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3686
    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 4365
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4366
    return-void
.end method

.method public scrollTo(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 1391
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1392
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    .line 1393
    .local v1, "positionInLinearLayout":I
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v2

    .line 1394
    .local v2, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 1398
    .local v3, "outOfViewScroll":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v5, 0x0

    if-lt v4, v2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 1404
    :cond_0
    return v5

    .line 1399
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v8, v2, v8

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1400
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1402
    return v4
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 1
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 3877
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 3878
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 3880
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3882
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3883
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 4487
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4488
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingOut(Z)V

    .line 4489
    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 2
    .param p1, "animationRunning"    # Z

    .line 4423
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-eq p1, v0, :cond_1

    .line 4424
    if-eqz p1, :cond_0

    .line 4425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 4427
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4429
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    .line 4430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 4432
    :cond_1
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 1
    .param p1, "animationsEnabled"    # Z

    .line 3068
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 3069
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 3070
    if-nez p1, :cond_0

    .line 3071
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3072
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3073
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 3075
    :cond_0
    return-void
.end method

.method public setAntiBurnInOffsetX(I)V
    .locals 0
    .param p1, "antiBurnInOffsetX"    # I

    .line 4590
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAntiBurnInOffsetX:I

    .line 4591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAntiBurnInTranslation()V

    .line 4592
    return-void
.end method

.method public setBackgroundBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .line 2408
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2410
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    .line 701
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    .line 702
    return-void
.end method

.method public setChildTransferInProgress(Z)V
    .locals 0
    .param p1, "childTransferInProgress"    # Z

    .line 2761
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    .line 2762
    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z
    .param p3, "touchWakeUpScreenLocation"    # Landroid/graphics/PointF;

    .line 3991
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3992
    return-void

    .line 3994
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDark(Z)V

    .line 3995
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 3996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 3997
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    .line 3998
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    goto :goto_1

    .line 4000
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 4001
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4003
    :cond_2
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDarkAmount(F)V

    .line 4004
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 4006
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4007
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 4008
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 4009
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4010
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "animate"    # Z

    .line 3816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    and-int/2addr p1, v0

    .line 3817
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDimmed(Z)V

    .line 3818
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3820
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3821
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateDimmed(Z)V

    goto :goto_1

    .line 3823
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    .line 3825
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3826
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .line 4136
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 4137
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDismissAllInProgress(Z)V

    .line 4138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleDismissAllClipping()V

    .line 4139
    return-void
.end method

.method public setDrawBackgroundAsSrc(Z)V
    .locals 0
    .param p1, "asSrc"    # Z

    .line 624
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDrawBackgroundAsSrc:Z

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 626
    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 2
    .param p1, "emptyShadeView"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 4106
    const/4 v0, -0x1

    .line 4107
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v1, :cond_0

    .line 4108
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4109
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4111
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 4112
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4113
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 13
    .param p1, "height"    # F

    .line 873
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    .line 874
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 875
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v1

    .line 876
    .local v1, "minExpansionHeight":I
    int-to-float v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 877
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 878
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 879
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 880
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    float-to-int v5, p1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 881
    int-to-float p1, v1

    .line 882
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 884
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    .line 888
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v4

    .line 889
    .local v4, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v5

    .line 890
    .local v5, "appearStartPosition":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 891
    .local v6, "appearFraction":F
    cmpg-float v7, p1, v4

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 892
    .local v2, "appearing":Z
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setAppearing(Z)V

    .line 893
    if-nez v2, :cond_6

    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, "translationY":F
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v7, :cond_3

    .line 896
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    .local v7, "stackHeight":I
    :goto_3
    goto :goto_6

    .line 897
    .end local v7    # "stackHeight":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-eqz v7, :cond_5

    .line 898
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr v7, v8

    .line 899
    .local v7, "stackStartPosition":I
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 900
    .local v8, "stackEndPosition":I
    if-gt v7, v8, :cond_4

    .line 901
    move v9, v8

    .local v9, "stackHeight":I
    goto :goto_4

    .line 903
    .end local v9    # "stackHeight":I
    :cond_4
    int-to-float v9, v7

    int-to-float v10, v8

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    float-to-int v9, v9

    .end local v7    # "stackStartPosition":I
    .end local v8    # "stackEndPosition":I
    .restart local v9    # "stackHeight":I
    :goto_4
    move v7, v9

    .line 906
    .end local v9    # "stackHeight":I
    .local v7, "stackHeight":I
    goto :goto_6

    .line 907
    .end local v7    # "stackHeight":I
    :cond_5
    float-to-int v7, p1

    goto :goto_3

    .line 910
    .end local v0    # "translationY":F
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v6

    .line 911
    cmpl-float v7, v6, v0

    if-ltz v7, :cond_7

    .line 912
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v7

    invoke-static {v7, v0, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    .local v7, "translationY":F
    goto :goto_5

    .line 917
    .end local v7    # "translationY":F
    :cond_7
    sub-float v7, p1, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v8

    add-float/2addr v7, v8

    .line 919
    .restart local v7    # "translationY":F
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 920
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getPinnedHeadsUpHeight()I

    move-result v8

    .line 921
    .local v8, "stackHeight":I
    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v9, v0, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 923
    .end local v7    # "translationY":F
    .restart local v0    # "translationY":F
    move v7, v8

    goto :goto_6

    .end local v0    # "translationY":F
    .end local v8    # "stackHeight":I
    .restart local v7    # "translationY":F
    :cond_8
    sub-float v0, p1, v7

    float-to-int v0, v0

    move v12, v7

    move v7, v0

    move v0, v12

    .line 926
    .restart local v0    # "translationY":F
    .local v7, "stackHeight":I
    :goto_6
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v7, v8, :cond_9

    .line 927
    iput v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 928
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 929
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 931
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackTranslation(F)V

    .line 932
    nop

    .local v3, "i":I
    :goto_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_a

    .line 933
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/function/BiConsumer;

    .line 934
    .local v8, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 932
    .end local v8    # "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 936
    .end local v3    # "i":I
    :cond_a
    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1446
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    .line 1447
    return-void
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3095
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 3096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3097
    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 1
    .param p1, "expandingVelocity"    # F

    .line 4561
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandingVelocity(F)V

    .line 4562
    return-void
.end method

.method public setExpansionCancelled(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1350
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1351
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 1353
    :cond_0
    return-void
.end method

.method public setFadingOut(Z)V
    .locals 1
    .param p1, "fadingOut"    # Z

    .line 4463
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-eq p1, v0, :cond_0

    .line 4464
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    .line 4465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4467
    :cond_0
    return-void
.end method

.method public setFinishScrollingCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1849
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    .line 1850
    return-void
.end method

.method public setFooterView(Lcom/android/systemui/statusbar/FooterView;)V
    .locals 2
    .param p1, "footerView"    # Lcom/android/systemui/statusbar/FooterView;

    .line 4096
    const/4 v0, -0x1

    .line 4097
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-eqz v1, :cond_0

    .line 4098
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4099
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4101
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    .line 4102
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4103
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 4198
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 4199
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0
    .param p1, "headsUpAnimatingAway"    # Z

    .line 4551
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    .line 4552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4553
    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0
    .param p1, "headsUpAppearanceController"    # Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 4637
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 4638
    return-void
.end method

.method public setHeadsUpBoundaries(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "bottomBarHeight"    # I

    .line 4398
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    sub-int v1, p1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setMaxHeadsUpTranslation(F)V

    .line 4399
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setHeadsUpAppearHeightBottom(I)V

    .line 4400
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4401
    return-void
.end method

.method public setHeadsUpGoingAwayAnimationsAllowed(Z)V
    .locals 0
    .param p1, "headsUpGoingAwayAnimationsAllowed"    # Z

    .line 4586
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    .line 4587
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 4369
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 4370
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 4371
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 4372
    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 4
    .param p1, "hideSensitive"    # Z
    .param p2, "animate"    # Z

    .line 3855
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 3856
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3857
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3858
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3860
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHideSensitive(Landroid/view/View;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 3857
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3863
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    .line 3864
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_1

    .line 3865
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 3866
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3868
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3869
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3871
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method

.method public setInHeadsUpPinnedMode(Z)V
    .locals 0
    .param p1, "inHeadsUpPinnedMode"    # Z

    .line 4546
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    .line 4547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4548
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 1
    .param p1, "intrinsicPadding"    # I

    .line 3967
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 3968
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setIntrinsicPadding(I)V

    .line 3969
    return-void
.end method

.method public setIsFullWidth(Z)V
    .locals 1
    .param p1, "isFullWidth"    # Z

    .line 4573
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelFullWidth(Z)V

    .line 4574
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    .line 1075
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    .line 1076
    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 1
    .param p1, "maxDisplayedNotifications"    # I

    .line 4529
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    if-eq v0, p1, :cond_0

    .line 4530
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 4531
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4532
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4534
    :cond_0
    return-void
.end method

.method public setMaxTopPadding(I)V
    .locals 0
    .param p1, "maxTopPadding"    # I

    .line 2611
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 2612
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 3772
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 3773
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "mOnHeightChangedListener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 3768
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 3769
    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .line 1926
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1927
    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z

    .line 1939
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 1940
    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z
    .param p5, "isRubberbanded"    # Z

    .line 1954
    if-eqz p4, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 1957
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    .line 1958
    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2
    .param p1, "numPixels"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .line 1914
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1915
    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0
    .param p1, "overscrollTopChangedListener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1988
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1989
    return-void
.end method

.method public setOwnScrollY(I)V
    .locals 3
    .param p1, "ownScrollY"    # I

    .line 4502
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, v0, :cond_0

    .line 4504
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 4505
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 4506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 4507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4509
    :cond_0
    return-void
.end method

.method public setParentNotFullyVisible(Z)V
    .locals 1
    .param p1, "parentNotFullyVisible"    # Z

    .line 4470
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_0

    .line 4472
    return-void

    .line 4474
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-eq p1, v0, :cond_1

    .line 4475
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    .line 4476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4478
    :cond_1
    return-void
.end method

.method public setPulsing(ZZ)V
    .locals 2
    .param p1, "pulsing"    # Z
    .param p2, "animated"    # Z

    .line 4439
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 4440
    return-void

    .line 4442
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    .line 4443
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    .line 4444
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPulsing(Z)V

    .line 4445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 4446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 4447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4449
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 4450
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4451
    return-void
.end method

.method public setQsContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "qsContainer"    # Landroid/view/ViewGroup;

    .line 1079
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    .line 1080
    return-void
.end method

.method public setQsCustomizerShowing(Z)V
    .locals 1
    .param p1, "isShowing"    # Z

    .line 4581
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setQsCustomizerShowing(Z)V

    .line 4582
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4583
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0
    .param p1, "qsExpanded"    # Z

    .line 4492
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    .line 4493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 4494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 4495
    return-void
.end method

.method public setQsExpansionFraction(F)V
    .locals 0
    .param p1, "qsExpansionFraction"    # F

    .line 4498
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    .line 4499
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 2
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4409
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4410
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v1, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$3VfNfgMGO3-TgMmei2bv0geU0dY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$3VfNfgMGO3-TgMmei2bv0geU0dY;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V

    .line 4411
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1379
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 1380
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 1
    .param p1, "shadeExpanded"    # Z

    .line 4386
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShadeExpanded(Z)V

    .line 4387
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShadeExpanded(Z)V

    .line 4388
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 2
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4512
    const/4 v0, -0x1

    .line 4513
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    .line 4514
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4515
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4517
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4518
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4519
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4520
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4521
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4522
    return-void
.end method

.method public setShouldShowShelfOnly(Z)V
    .locals 0
    .param p1, "shouldShowShelfOnly"    # Z

    .line 4537
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    .line 4538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 4539
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4194
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4195
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .line 4556
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    .line 4557
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStatusBarState(I)V

    .line 4558
    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4404
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    .line 4405
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 4406
    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 4577
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setUnlockHintRunning(Z)V

    .line 4578
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .line 1328
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 1329
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1330
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1338
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 1340
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 1341
    return-void

    .line 1343
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1344
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    .line 1346
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .line 1357
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1358
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 1361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1362
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 3984
    const/4 v0, 0x1

    return v0
.end method

.method public snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1492
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1494
    .local v0, "animate":Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1495
    .local v1, "targetLeft":F
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapChildIfNeeded(Landroid/view/View;ZF)V

    .line 1496
    return-void
.end method

.method public updateClipping()V
    .locals 4

    .line 951
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 952
    .local v0, "animatingClipping":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-nez v3, :cond_1

    move v1, v2

    nop

    .line 954
    .local v1, "clipped":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eq v2, v1, :cond_2

    .line 955
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 959
    :cond_2
    if-eqz v0, :cond_3

    .line 960
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 961
    :cond_3
    if-eqz v1, :cond_4

    .line 962
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 964
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 966
    :goto_1
    return-void
.end method

.method public updateDecorViews(Z)V
    .locals 3
    .param p1, "lightTheme"    # Z

    .line 3944
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    if-ne p1, v0, :cond_0

    .line 3945
    return-void

    .line 3947
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    .line 3948
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    .line 3949
    if-eqz p1, :cond_1

    const v2, 0x7f12042a

    goto :goto_0

    :cond_1
    const v2, 0x7f120424

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3950
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f040456

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 3951
    .local v1, "textColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/FooterView;->setTextColor(I)V

    .line 3952
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setTextColor(I)V

    .line 3953
    return-void
.end method

.method public updateEmptyShadeView(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 4116
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setVisible(ZZ)V

    .line 4118
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getTextResource()I

    move-result v0

    .line 4119
    .local v0, "oldTextRes":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->areNotificationsHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4120
    const v1, 0x7f110245

    goto :goto_1

    :cond_1
    const v1, 0x7f110253

    .line 4121
    .local v1, "newTextRes":I
    :goto_1
    if-eq v0, v1, :cond_2

    .line 4122
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setText(I)V

    .line 4124
    :cond_2
    return-void
.end method

.method public updateFooterView(ZZ)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "showDismissView"    # Z

    .line 4127
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-nez v0, :cond_0

    .line 4128
    return-void

    .line 4130
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4131
    .local v0, "animate":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/FooterView;->setVisible(ZZ)V

    .line 4132
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/statusbar/FooterView;->setSecondaryVisible(ZZ)V

    .line 4133
    return-void
.end method

.method public updateSpeedBumpIndex(IZ)V
    .locals 1
    .param p1, "newIndex"    # I
    .param p2, "noAmbient"    # Z

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 695
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNoAmbient:Z

    .line 696
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .line 1165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateTopPadding(FZZ)V
    .locals 4
    .param p1, "qsHeight"    # F
    .param p2, "animate"    # Z
    .param p3, "ignoreIntrinsicPadding"    # Z

    .line 2598
    float-to-int v0, p1

    .line 2599
    .local v0, "topPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    .line 2600
    .local v1, "minStackHeight":I
    add-int v2, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2601
    add-int v2, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    .line 2603
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 2605
    :goto_0
    if-eqz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v2

    :goto_1
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 2607
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 2608
    return-void
.end method

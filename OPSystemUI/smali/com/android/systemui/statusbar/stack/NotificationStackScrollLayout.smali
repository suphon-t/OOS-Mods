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

    .line 380
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;

    const-string v1, "darkAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DARK_AMOUNT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 423
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 431
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 435
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPath:Landroid/graphics/Path;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 192
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 195
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 201
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 204
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 230
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 282
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 294
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 296
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 297
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    .line 298
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    .line 301
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    .line 308
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 316
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 317
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 318
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 319
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    .line 322
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 323
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 324
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 325
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    .line 330
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 336
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 346
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 355
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    .line 370
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    .line 379
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    .line 398
    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    .line 409
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    .line 410
    new-instance v0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$jMWJf69jcb2Er7Sg4rletxrm5pw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$jMWJf69jcb2Er7Sg4rletxrm5pw;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    .line 415
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    .line 1435
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 438
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 439
    const v3, 0x7f0602eb

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 440
    const v3, 0x7f0703b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 441
    .local v3, "minHeight":I
    const v4, 0x7f0703ad

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 442
    .local v4, "maxHeight":I
    new-instance v5, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v3, v4}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 444
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 445
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 446
    new-instance v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v1, p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    .line 447
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 448
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 449
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 450
    nop

    .line 451
    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    .line 452
    nop

    .line 453
    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    .line 454
    const v1, 0x7f0706ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorWidth:I

    .line 455
    const v1, 0x7f0706eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorThickness:I

    .line 456
    const v1, 0x7f0706e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkSeparatorPadding:I

    .line 457
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setAnimatedChildren(Ljava/util/HashSet;)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    new-instance v5, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$5BC2kaMAloRxl8auhuScFksFNjA;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$5BC2kaMAloRxl8auhuScFksFNjA;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setOnRoundingChangedCallback(Ljava/lang/Runnable;)V

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/statusbar/stack/-$$Lambda$bam6n-VlBWgcqhwrPMDo0VFka_4;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/stack/-$$Lambda$bam6n-VlBWgcqhwrPMDo0VFka_4;-><init>(Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 462
    const-class v1, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 463
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 464
    .local v1, "blockingHelperManager":Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;
    new-instance v5, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$ORqWctSAOFbrSZfQ2fKGWKeQ46w;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$ORqWctSAOFbrSZfQ2fKGWKeQ46w;-><init>(Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 469
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 476
    return-void
.end method

.method private abortBackgroundAnimators()V
    .locals 1

    .line 2287
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2291
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2293
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/View;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/View;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildViewDismissed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/View;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/View;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPreDrawDuringAnimation()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # F

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # F

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    return v0
.end method

.method private animateDimmed(Z)V
    .locals 4
    .param p1, "dimmed"    # Z

    .line 3840
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3841
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3843
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3844
    .local v0, "target":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 3845
    return-void

    .line 3847
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

    .line 3848
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3849
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3850
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3851
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3852
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 3853
    return-void
.end method

.method private animateScroll()V
    .locals 6

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1855
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1856
    .local v0, "oldY":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 1858
    .local v1, "y":I
    if-eq v0, v1, :cond_4

    .line 1859
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 1860
    .local v2, "range":I
    if-gez v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    .line 1861
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    .line 1862
    .local v3, "currVelocity":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 1863
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1867
    .end local v3    # "currVelocity":F
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    if-eqz v3, :cond_3

    .line 1868
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1870
    :cond_3
    sub-int v3, v1, v0

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v4, v4

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 1874
    .end local v2    # "range":I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1875
    .end local v0    # "oldY":I
    .end local v1    # "y":I
    goto :goto_0

    .line 1876
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 1878
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1881
    :cond_6
    :goto_0
    return-void
.end method

.method private applyCurrentBackgroundBounds()V
    .locals 5

    .line 2416
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 2417
    return-void

    .line 2420
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

    .line 2422
    .local v0, "awake":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-ne v4, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setForceDrawFullViewBehind(Z)V

    .line 2424
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2428
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

    .line 2424
    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExcludedBackgroundArea(Landroid/graphics/Rect;)V

    .line 2430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 2431
    return-void
.end method

.method private applyCurrentState()V
    .locals 1

    .line 3891
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    .line 3892
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    .line 3893
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;->onChildLocationsChanged()V

    .line 3895
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 3896
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3897
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3899
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 3900
    return-void
.end method

.method private areBoundsAnimating()Z
    .locals 1

    .line 2296
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

    .line 2651
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clampScrollPosition()V
    .locals 2

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 843
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 846
    :cond_0
    return-void
.end method

.method private clearHeadsUpDisappearRunning()V
    .locals 6

    .line 3785
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3786
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3787
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 3788
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3789
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3790
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3791
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

    .line 3792
    .local v5, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3793
    .end local v5    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_1

    .line 3785
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3797
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private clearTemporaryViews()V
    .locals 4

    .line 3659
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 3660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3661
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3662
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v2, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 3663
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3664
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 3660
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3667
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 3670
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3671
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    .line 3673
    :cond_0
    return-void
.end method

.method private clearTransient()V
    .locals 2

    .line 3800
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

    .line 3801
    .local v1, "view":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3802
    .end local v1    # "view":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_0

    .line 3803
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3804
    return-void
.end method

.method private clearUserLockedViews()V
    .locals 4

    .line 3648
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3649
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3650
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 3651
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3652
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 3648
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3655
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

    .line 1886
    add-int v0, p2, p1

    .line 1887
    .local v0, "newScrollY":I
    neg-int v1, p4

    .line 1888
    .local v1, "top":I
    add-int v2, p4, p3

    .line 1890
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 1891
    .local v3, "clampedY":Z
    if-le v0, v2, :cond_0

    .line 1892
    move v0, v2

    .line 1893
    const/4 v3, 0x1

    goto :goto_0

    .line 1894
    :cond_0
    if-ge v0, v1, :cond_1

    .line 1895
    move v0, v1

    .line 1896
    const/4 v3, 0x1

    .line 1899
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onCustomOverScrolled(IZ)V

    .line 1901
    return v3
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1554
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1555
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1556
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 1557
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1558
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 532
    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 533
    .local v1, "lockScreenLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v2, v3

    .line 534
    .local v2, "lockScreenRight":I
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 535
    .local v3, "lockScreenTop":I
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 536
    .local v4, "lockScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 537
    .local v5, "darkLeft":I
    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorWidth:I

    add-int/2addr v6, v5

    .line 538
    .local v6, "darkRight":I
    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    int-to-float v7, v7

    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorThickness:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 539
    .local v7, "darkTop":I
    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSeparatorThickness:I

    add-int/2addr v8, v7

    .line 541
    .local v8, "darkBottom":I
    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 565
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

    .line 543
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

    .line 545
    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v9, :cond_0

    .line 546
    int-to-float v11, v5

    int-to-float v12, v7

    int-to-float v13, v6

    int-to-float v14, v8

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 549
    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    sub-float/2addr v10, v11

    .line 550
    .local v10, "inverseDark":F
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    .line 551
    .local v11, "yProgress":F
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    mul-float/2addr v9, v10

    .line 552
    invoke-interface {v12, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 554
    .local v9, "xProgress":F
    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    int-to-float v13, v5

    int-to-float v14, v1

    .line 555
    invoke-static {v13, v14, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    float-to-int v13, v13

    int-to-float v14, v7

    int-to-float v15, v3

    .line 556
    invoke-static {v14, v15, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v15, v6

    move/from16 v16, v1

    int-to-float v1, v2

    .line 557
    .end local v1    # "lockScreenLeft":I
    .restart local v16    # "lockScreenLeft":I
    invoke-static {v15, v1, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v15, v8

    move/from16 v17, v2

    int-to-float v2, v4

    .line 558
    .end local v2    # "lockScreenRight":I
    .restart local v17    # "lockScreenRight":I
    invoke-static {v15, v2, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 554
    invoke-virtual {v12, v13, v14, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 559
    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v1, :cond_1

    .line 560
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

    .line 565
    .end local v9    # "xProgress":F
    .end local v10    # "inverseDark":F
    .end local v11    # "yProgress":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 566
    return-void
.end method

.method private dumpRows(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 5224
    .local v0, "n":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5225
    if-nez v2, :cond_0

    .line 5226
    const-string v3, "  ExpandableNotificationRow"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5228
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5229
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    .line 5230
    const-string v4, "      [%d] "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5231
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dump(Ljava/io/PrintWriter;)V

    .line 5224
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5234
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private endDrag()V
    .locals 4

    .line 2679
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 2683
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2684
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2686
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2687
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2689
    :cond_1
    return-void
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 3
    .param p1, "screenLocation"    # Landroid/graphics/PointF;

    .line 4067
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    .line 4070
    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 4071
    const/4 v0, -0x2

    return v0

    .line 4073
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .line 4074
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 4075
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v0

    return v0

    .line 4077
    :cond_2
    return v0

    .line 4068
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    :goto_0
    return v0
.end method

.method private focusNextViewIfFocused(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 2816
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 2817
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2818
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldRefocusOnDismiss()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2819
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAfterViewWhenDismissed()Landroid/view/View;

    move-result-object v1

    .line 2820
    .local v1, "nextView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 2821
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupParentWhenDismissed()Landroid/view/View;

    move-result-object v2

    .line 2822
    .local v2, "groupParentWhenDismissed":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2823
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    goto :goto_0

    .line 2824
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    :goto_0
    const/4 v4, 0x1

    .line 2822
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v1

    .line 2826
    .end local v2    # "groupParentWhenDismissed":Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    .line 2827
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2832
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "nextView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private generateActivateEvent()V
    .locals 4

    .line 3381
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3385
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 3386
    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .line 3389
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3390
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3393
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 3394
    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .line 3350
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

    .line 3351
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3352
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v5, 0x168

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3356
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3359
    .end local v1    # "child":Landroid/view/View;
    :goto_1
    goto :goto_0

    .line 3360
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3361
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3362
    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 1

    .line 3194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimationEvents()V

    .line 3195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 3196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 3197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 3198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    .line 3199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    .line 3200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 3201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 3202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 3203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 3204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    .line 3205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 3206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 3207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGroupExpansionEvent()V

    .line 3208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    .line 3209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePulsingAnimationEvent()V

    .line 3210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3211
    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 10

    .line 3296
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

    .line 3297
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3300
    .local v2, "childWasSwipedOut":Z
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 3301
    .local v3, "removedTranslation":F
    const/4 v4, 0x1

    .line 3302
    .local v4, "ignoreChildren":Z
    instance-of v5, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 3303
    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3304
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3305
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v3

    .line 3306
    const/4 v4, 0x0

    .line 3308
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

    .line 3310
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    if-nez v2, :cond_4

    .line 3311
    invoke-virtual {v1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 3312
    .local v5, "clipBounds":Landroid/graphics/Rect;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_3

    move v6, v7

    nop

    :cond_3
    move v2, v6

    .line 3314
    if-eqz v2, :cond_4

    instance-of v6, v1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_4

    .line 3318
    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v6

    .line 3319
    .local v6, "transientContainer":Landroid/view/ViewGroup;
    if-eqz v6, :cond_4

    .line 3320
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 3324
    .end local v5    # "clipBounds":Landroid/graphics/Rect;
    .end local v6    # "transientContainer":Landroid/view/ViewGroup;
    :cond_4
    if-eqz v2, :cond_5

    .line 3325
    const/4 v7, 0x2

    nop

    .line 3326
    :cond_5
    move v5, v7

    .line 3327
    .local v5, "animationType":I
    new-instance v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v6, v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3328
    .local v6, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 3330
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3331
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3332
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childWasSwipedOut":Z
    .end local v3    # "removedTranslation":F
    .end local v4    # "ignoreChildren":Z
    .end local v5    # "animationType":I
    .end local v6    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    goto/16 :goto_0

    .line 3333
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3334
    return-void
.end method

.method private generateDarkEvent()V
    .locals 5

    .line 3413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3414
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v1, 0x0

    const/16 v2, 0x9

    new-instance v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 3417
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 3418
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;ILcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 3419
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    .line 3420
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startDarkAmountAnimation()V

    .line 3423
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 3424
    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .line 3397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3398
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3401
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3402
    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    .line 3288
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

    .line 3289
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3291
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3293
    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .line 3427
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3428
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3431
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 3432
    return-void
.end method

.method private generateGroupExpansionEvent()V
    .locals 4

    .line 3264
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3265
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 3269
    :cond_0
    return-void
.end method

.method private generateHeadsUpAnimationEvents()V
    .locals 11

    .line 3214
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

    .line 3215
    .local v1, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3216
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3217
    .local v3, "isHeadsUp":Z
    const/16 v4, 0x11

    .line 3218
    .local v4, "type":I
    const/4 v5, 0x0

    .line 3219
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

    .line 3220
    .local v6, "pinnedAndClosed":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v9, :cond_2

    if-nez v3, :cond_2

    .line 3221
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasJustClicked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3222
    const/16 v7, 0x10

    goto :goto_2

    .line 3223
    :cond_1
    const/16 v7, 0xf

    :goto_2
    move v4, v7

    .line 3224
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3226
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3227
    goto :goto_0

    .line 3230
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v9

    .line 3231
    .local v9, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v9, :cond_3

    .line 3234
    goto :goto_0

    .line 3236
    :cond_3
    if-eqz v3, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v6, :cond_8

    .line 3237
    :cond_4
    if-nez v6, :cond_6

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    .line 3242
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 3239
    :cond_6
    :goto_3
    const/16 v4, 0xe

    .line 3244
    :goto_4
    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    move v7, v8

    :goto_5
    move v5, v7

    .line 3247
    .end local v9    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_8
    new-instance v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v7, v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3248
    .local v7, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iput-boolean v5, v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    .line 3249
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3250
    .end local v1    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "isHeadsUp":Z
    .end local v4    # "type":I
    .end local v5    # "onBottom":Z
    .end local v6    # "pinnedAndClosed":Z
    .end local v7    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    goto :goto_0

    .line 3251
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3252
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3253
    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .line 3405
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3406
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 3410
    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 5

    .line 3337
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

    .line 3338
    .local v1, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3340
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 3341
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    if-eqz v0, :cond_1

    .line 3343
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 3347
    :cond_1
    return-void
.end method

.method private generatePulsingAnimationEvent()V
    .locals 4

    .line 4455
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4456
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    .line 4457
    :cond_0
    const/16 v0, 0x14

    .line 4458
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4459
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    .line 4461
    .end local v0    # "type":I
    :cond_1
    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 2847
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2848
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2849
    return v1

    .line 2851
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isClickedHeadsUp(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2853
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2854
    return v2

    .line 2856
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInInvisibleGroup(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2857
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2859
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2860
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2861
    return v2

    .line 2863
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2864
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2865
    return v1

    .line 2868
    :cond_3
    return v1
.end method

.method private generateSnapBackEvents()V
    .locals 5

    .line 3280
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

    .line 3281
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 3284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3285
    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 5

    .line 3365
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_1

    .line 3367
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3368
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v3, 0x226

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    .local v0, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    goto :goto_0

    .line 3372
    .end local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3375
    .restart local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3377
    .end local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 3378
    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    .line 3272
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    .line 3273
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3276
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 3277
    return-void
.end method

.method private getAppearEndPosition()F
    .locals 4

    .line 1015
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    .line 1016
    .local v0, "notGoneChildCount":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1018
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1021
    :cond_0
    const/4 v1, 0x0

    .line 1022
    .local v1, "appearPosition":I
    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 1023
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 1019
    .end local v1    # "appearPosition":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v1

    .restart local v1    # "appearPosition":I
    goto :goto_1

    .line 1027
    .end local v1    # "appearPosition":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v1

    .line 1029
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

    .line 982
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getPinnedHeadsUpHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    .line 985
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

    .line 1282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 1283
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 1284
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1285
    .local v2, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v2, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-eqz v3, :cond_0

    .line 1287
    goto/16 :goto_1

    .line 1289
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v3

    .line 1290
    .local v3, "childTop":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 1291
    .local v4, "top":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 1292
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 1296
    .local v5, "bottom":F
    const/4 v6, 0x0

    .line 1297
    .local v6, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v7

    .line 1299
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

    .line 1301
    instance-of v8, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_3

    .line 1302
    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1303
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

    .line 1304
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v9, v8, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1306
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v10

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    .line 1305
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v9

    if-eq v9, v8, :cond_2

    .line 1308
    goto :goto_1

    .line 1310
    :cond_2
    sub-float v9, p2, v3

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v9

    return-object v9

    .line 1312
    .end local v8    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-object v2

    .line 1283
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

    .line 1315
    .end local v1    # "childIdx":I
    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExpandTranslationStart()F
    .locals 1

    .line 974
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    neg-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method private getFirstChildBelowTranlsationY(FZ)Landroid/view/View;
    .locals 10
    .param p1, "translationY"    # F
    .param p2, "ignoreChildren"    # Z

    .line 2100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2101
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2102
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2103
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 2104
    goto :goto_2

    .line 2106
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 2107
    .local v4, "rowTranslation":F
    cmpl-float v5, v4, p1

    if-ltz v5, :cond_1

    .line 2108
    return-object v3

    .line 2109
    :cond_1
    if-nez p2, :cond_3

    instance-of v5, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    .line 2110
    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2111
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2112
    nop

    .line 2113
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    .line 2114
    .local v6, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move v7, v1

    .local v7, "childIndex":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 2116
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2117
    .local v8, "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v9

    add-float/2addr v9, v4

    cmpl-float v9, v9, p1

    if-ltz v9, :cond_2

    .line 2118
    return-object v8

    .line 2115
    .end local v8    # "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2101
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "rowTranslation":F
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v7    # "childIndex":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2124
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFirstChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 5

    .line 2525
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2526
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2527
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2528
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2530
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v3

    .line 2526
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2533
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getImeInset()I
    .locals 3

    .line 2060
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

    .line 2950
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 2951
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2952
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 2954
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private getLastChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 5

    .line 2513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2514
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2515
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2516
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2518
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v3

    .line 2514
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2521
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLayoutHeight()I
    .locals 2

    .line 1067
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 4082
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4083
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4084
    .local v1, "notGoneIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4085
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4086
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 4087
    return v1

    .line 4089
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 4090
    add-int/lit8 v1, v1, 0x1

    .line 4084
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4093
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method private getRubberBandFactor(Z)F
    .locals 2
    .param p1, "onTop"    # Z

    .line 2655
    const v0, 0x3eb33333    # 0.35f

    if-nez p1, :cond_0

    .line 2656
    return v0

    .line 2658
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v1, :cond_1

    .line 2659
    const v0, 0x3e19999a    # 0.15f

    return v0

    .line 2660
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2662
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v1, :cond_3

    .line 2663
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2665
    :cond_3
    return v0

    .line 2661
    :cond_4
    :goto_0
    const v0, 0x3e570a3d    # 0.21f

    return v0
.end method

.method private getScrollRange()I
    .locals 6

    .line 2051
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    .line 2052
    .local v0, "contentHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2053
    .local v1, "scrollRange":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v3

    .line 2054
    .local v3, "imeInset":I
    nop

    .line 2055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v4, v5

    .line 2054
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2056
    return v1
.end method

.method private getTopHeadsUpPinnedHeight()I
    .locals 4

    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 995
    .local v0, "topEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 996
    const/4 v1, 0x0

    return v1

    .line 998
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 999
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1000
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1001
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 1002
    .local v2, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    .line 1003
    move-object v1, v2

    .line 1006
    .end local v2    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight()I

    move-result v2

    return v2
.end method

.method private handleChildViewDismissed(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 1106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v0, :cond_0

    .line 1107
    return-void

    .line 1110
    :cond_0
    const/4 v0, 0x0

    .line 1112
    .local v0, "isBlockingHelperShown":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1113
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1117
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 1118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1120
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_3

    .line 1121
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1122
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1123
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addSwipedOutNotification(Ljava/lang/String;)V

    .line 1125
    :cond_2
    nop

    .line 1126
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performDismissWithBlockingHelper(Z)Z

    move-result v0

    .line 1129
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    if-nez v0, :cond_4

    .line 1130
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDismissed()V

    .line 1133
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1134
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1141
    :cond_5
    return-void
.end method

.method private handleDismissAllClipping()V
    .locals 7

    .line 4143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4144
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4145
    .local v1, "previousChildWillBeDismissed":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "previousChildWillBeDismissed":Z
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4146
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4147
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 4148
    goto :goto_2

    .line 4150
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 4151
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    goto :goto_1

    .line 4153
    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    .line 4155
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    .line 4145
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4157
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2735
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

    .line 2736
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

    .line 2737
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 2741
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 2742
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2743
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    .line 2747
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

    .line 2750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 2752
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 2753
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 2754
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 2755
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 2756
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 2757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 2759
    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1843
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1847
    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1829
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1830
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1832
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 594
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 595
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDescendantFocusability(I)V

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    .line 597
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 598
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 599
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 600
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 601
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 603
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 604
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0703b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 605
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 606
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 607
    nop

    .line 608
    const v2, 0x7f070398

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 607
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 609
    nop

    .line 610
    const v2, 0x7f070399

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 611
    const v2, 0x7f070326

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 613
    const v2, 0x7f070649

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 614
    const v2, 0x7f0703b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomMargin:I

    .line 615
    const v2, 0x7f0703c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 616
    const v2, 0x7f0703b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    .line 618
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    .line 619
    const v3, 0x1010571

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    .line 618
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCornerRadius:I

    .line 620
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    const v3, 0x7f0701f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    .line 622
    return-void
.end method

.method private isChildInGroup(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2835
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2837
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 2836
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2835
    :goto_0
    return v0
.end method

.method private isChildInInvisibleGroup(Landroid/view/View;)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .line 2905
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2906
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2907
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 2908
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 2909
    .local v2, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_1

    .line 2910
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 2913
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v1
.end method

.method private isClickedHeadsUp(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2872
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->isClickedHeadsUpNotification(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isHeadsUp(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1191
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1192
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1193
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    return v1

    .line 1195
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHeadsUpTransition()Z
    .locals 2

    .line 1033
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 1034
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1033
    :goto_0
    return v0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    return v0
.end method

.method public static isPinnedHeadsUp(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 1183
    instance-of v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1184
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1185
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

    .line 1187
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v1
.end method

.method private isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2230
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method

.method private isRubberbanded(Z)Z
    .locals 1
    .param p1, "onTop"    # Z

    .line 2674
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

    .line 1451
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .line 4875
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 4876
    return v0

    .line 4878
    :cond_0
    instance-of v1, p2, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_1

    .line 4879
    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    goto :goto_0

    .line 4880
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4881
    .local v1, "height":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 4882
    .local v2, "rx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 4883
    .local v3, "ry":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4884
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v0, v4, v0

    .line 4885
    .local v0, "x":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 4886
    .local v4, "y":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    add-int v7, v4, v1

    invoke-direct {v5, v0, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4887
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    .line 4888
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

    .line 3103
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 3104
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 3105
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

    .line 465
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->setNotificationShadeExpanded(F)V

    .line 466
    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 641
    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 647
    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .line 1977
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

    .line 1978
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    .line 1979
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1980
    return-void

    .line 1982
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_2

    .line 1983
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    .line 1985
    :cond_2
    return-void
.end method

.method private onCustomOverScrolled(IZ)V
    .locals 3
    .param p1, "scrollY"    # I
    .param p2, "clampedY"    # Z

    .line 2010
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2011
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2012
    if-eqz p2, :cond_0

    .line 2013
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    goto :goto_1

    .line 2015
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 2016
    .local v1, "overScrollTop":F
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v2, :cond_1

    .line 2017
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2019
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 2021
    .end local v1    # "overScrollTop":F
    :goto_0
    goto :goto_1

    .line 2023
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2025
    :goto_1
    return-void
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 3435
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3436
    return v3

    .line 3449
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 3450
    .local v2, "action":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    .line 3451
    return v5

    .line 3454
    :cond_1
    and-int/lit16 v4, v2, 0xff

    const/4 v6, 0x6

    if-eq v4, v6, :cond_5

    const/4 v6, -0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 3465
    :pswitch_0
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3466
    .local v3, "activePointerId":I
    if-ne v3, v6, :cond_2

    .line 3468
    goto/16 :goto_0

    .line 3471
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 3472
    .local v4, "pointerIndex":I
    if-ne v4, v6, :cond_3

    .line 3473
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

    .line 3475
    goto/16 :goto_0

    .line 3478
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 3479
    .local v6, "y":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    .line 3480
    .local v7, "x":I
    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 3481
    .local v8, "yDiff":I
    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 3482
    .local v9, "xDiff":I
    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v8, v10, :cond_6

    if-le v8, v9, :cond_6

    .line 3483
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3484
    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3485
    iput v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3486
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 3487
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3524
    .end local v3    # "activePointerId":I
    .end local v4    # "pointerIndex":I
    .end local v6    # "y":I
    .end local v7    # "x":I
    .end local v8    # "yDiff":I
    .end local v9    # "xDiff":I
    :pswitch_1
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3525
    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3526
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 3527
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

    .line 3528
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_0

    .line 3493
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 3494
    .local v4, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 3495
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v4

    invoke-direct {v0, v6, v7, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    if-nez v6, :cond_4

    .line 3496
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3497
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 3498
    goto :goto_0

    .line 3505
    :cond_4
    iput v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3506
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3507
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3509
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 3510
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3516
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v5

    .line 3517
    .local v3, "isBeingDragged":Z
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3518
    goto :goto_0

    .line 3532
    .end local v3    # "isBeingDragged":Z
    .end local v4    # "y":I
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3540
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

    .line 1465
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

    .line 1740
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    .line 1743
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1744
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1745
    return-void
.end method

.method private onPreDrawDuringAnimation()V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 758
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 759
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 762
    :cond_0
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v1, p0

    .line 1594
    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1595
    return v3

    .line 1597
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInsideQsContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    .line 1598
    return v3

    .line 1600
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1601
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 1602
    iget-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1604
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1606
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 1721
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1724
    :try_start_0
    iget v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1725
    iget v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    goto/16 :goto_6

    .line 1726
    :catch_0
    move-exception v0

    .line 1727
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

    .line 1714
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1715
    .local v0, "index":I
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1716
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1717
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1718
    goto/16 :goto_6

    .line 1705
    .end local v0    # "index":I
    :pswitch_3
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 1706
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

    .line 1707
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1709
    :cond_2
    iput v6, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1710
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_6

    .line 1628
    :pswitch_4
    iget v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1629
    .local v0, "activePointerIndex":I
    if-ne v0, v6, :cond_3

    .line 1630
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

    .line 1631
    goto/16 :goto_6

    .line 1634
    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 1635
    .local v3, "y":I
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 1636
    .local v6, "x":I
    iget v8, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int/2addr v8, v3

    .line 1637
    .local v8, "deltaY":I
    iget v9, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1638
    .local v9, "xDiff":I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1639
    .local v10, "yDiff":I
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v11, :cond_5

    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v10, v11, :cond_5

    if-le v10, v9, :cond_5

    .line 1640
    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1641
    if-lez v8, :cond_4

    .line 1642
    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int/2addr v8, v11

    goto :goto_0

    .line 1644
    :cond_4
    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int/2addr v8, v11

    .line 1647
    :cond_5
    :goto_0
    iget-boolean v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v11, :cond_11

    .line 1649
    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1650
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v11

    .line 1651
    .local v11, "range":I
    iget-boolean v12, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v12, :cond_6

    .line 1652
    iget v12, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1656
    :cond_6
    if-gez v8, :cond_7

    .line 1657
    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v12

    .local v12, "scrollAmount":F
    goto :goto_1

    .line 1659
    .end local v12    # "scrollAmount":F
    :cond_7
    invoke-direct {v1, v8, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v12

    .line 1664
    .restart local v12    # "scrollAmount":F
    :goto_1
    cmpl-float v5, v12, v5

    if-eqz v5, :cond_8

    .line 1667
    float-to-int v5, v12

    iget v13, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    .line 1667
    invoke-direct {v1, v5, v13, v11, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 1670
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 1672
    .end local v11    # "range":I
    .end local v12    # "scrollAmount":F
    :cond_8
    goto/16 :goto_6

    .line 1675
    .end local v0    # "activePointerIndex":I
    .end local v3    # "y":I
    .end local v6    # "x":I
    .end local v8    # "deltaY":I
    .end local v9    # "xDiff":I
    .end local v10    # "yDiff":I
    :pswitch_5
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    .line 1676
    iget-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1677
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1678
    iget v8, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    float-to-int v8, v8

    .line 1680
    .local v8, "initialVelocity":I
    invoke-direct {v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1681
    invoke-direct {v1, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_4

    .line 1683
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_d

    .line 1684
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v9, v10, :cond_c

    .line 1685
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v9

    .line 1686
    .local v9, "currentOverScrollTop":F
    cmpl-float v5, v9, v5

    if-eqz v5, :cond_b

    if-lez v8, :cond_a

    goto :goto_2

    .line 1689
    :cond_a
    invoke-direct {v1, v3, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    .end local v9    # "currentOverScrollTop":F
    goto :goto_3

    .line 1687
    .restart local v9    # "currentOverScrollTop":F
    :cond_b
    :goto_2
    neg-int v3, v8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    .line 1691
    .end local v9    # "currentOverScrollTop":F
    :goto_3
    goto :goto_4

    .line 1692
    :cond_c
    iget-object v10, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v11, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v12, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1693
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v16

    .line 1692
    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1694
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1699
    :cond_d
    :goto_4
    iput v6, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1700
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    .line 1701
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v8    # "initialVelocity":I
    goto :goto_6

    .line 1608
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    .line 1611
    :cond_e
    iget-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v7

    .line 1612
    .local v0, "isBeingDragged":Z
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1617
    iget-object v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1618
    iget-object v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5, v7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1622
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1623
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1624
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1625
    goto :goto_6

    .line 1609
    .end local v0    # "isBeingDragged":Z
    :cond_10
    :goto_5
    return v3

    .line 1732
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

    .line 1812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1814
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1815
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1819
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1820
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1821
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1822
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1823
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1826
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private onViewAddedInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 3042
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHideSensitiveForChild(Landroid/view/View;)V

    .line 3043
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 3044
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3045
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3046
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3047
    return-void
.end method

.method private onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 2792
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_0

    .line 2794
    return-void

    .line 2796
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2797
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2798
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2799
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2800
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v1

    .line 2801
    .local v1, "animationGenerated":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2802
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2803
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 2804
    :cond_1
    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 2805
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 2808
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2810
    :cond_3
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 2812
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->focusNextViewIfFocused(Landroid/view/View;)V

    .line 2813
    return-void
.end method

.method private overScrollDown(I)F
    .locals 8
    .param p1, "deltaY"    # I

    .line 1788
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1789
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 1790
    .local v1, "currentBottomAmount":F
    int-to-float v2, p1

    add-float/2addr v2, v1

    .line 1791
    .local v2, "newBottomAmount":F
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    .line 1792
    invoke-virtual {p0, v2, v0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1797
    :cond_0
    cmpg-float v4, v2, v3

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1798
    .local v4, "scrollAmount":F
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 1799
    .local v5, "newScrollY":F
    cmpg-float v3, v5, v3

    if-gez v3, :cond_2

    .line 1800
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v6

    .line 1802
    .local v6, "currentTopPixels":F
    sub-float v7, v6, v5

    invoke-virtual {p0, v7, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1805
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1806
    const/4 v4, 0x0

    .line 1808
    .end local v6    # "currentTopPixels":F
    :cond_2
    return v4
.end method

.method private overScrollUp(II)F
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "range"    # I

    .line 1755
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1756
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    .line 1757
    .local v2, "currentTopAmount":F
    int-to-float v3, p1

    sub-float v3, v2, v3

    .line 1758
    .local v3, "newTopAmount":F
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    .line 1759
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1764
    :cond_0
    cmpg-float v1, v3, v4

    if-gez v1, :cond_1

    neg-float v4, v3

    nop

    :cond_1
    move v1, v4

    .line 1765
    .local v1, "scrollAmount":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 1766
    .local v4, "newScrollY":F
    int-to-float v5, p2

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 1767
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_2

    .line 1768
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v5

    .line 1770
    .local v5, "currentBottomPixels":F
    add-float v6, v5, v4

    int-to-float v7, p2

    sub-float/2addr v6, v7

    invoke-virtual {p0, v6, v0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1774
    .end local v5    # "currentBottomPixels":F
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1775
    const/4 v1, 0x0

    .line 1777
    :cond_3
    return v1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1839
    :cond_0
    return-void
.end method

.method private removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 2881
    const/4 v0, 0x0

    .line 2882
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

    .line 2883
    .local v2, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2884
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2885
    .local v4, "isHeadsUp":Z
    if-ne p1, v3, :cond_0

    .line 2886
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2887
    or-int/2addr v0, v4

    .line 2889
    .end local v2    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "isHeadsUp":Z
    :cond_0
    goto :goto_0

    .line 2890
    :cond_1
    if-eqz v0, :cond_2

    .line 2892
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2893
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 2895
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2896
    return v0
.end method

.method private requestAnimateEverything()V
    .locals 1

    .line 4207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 4209
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4212
    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 688
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 690
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 692
    :cond_1
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .line 830
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 833
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 835
    :cond_0
    return-void
.end method

.method private runAnimationFinishedRunnables()V
    .locals 2

    .line 3807
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

    .line 3808
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3809
    .end local v1    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 3810
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3811
    return-void
.end method

.method private setBackgroundTop(I)V
    .locals 1
    .param p1, "top"    # I

    .line 2404
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 2405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2406
    return-void
.end method

.method private setDarkAmount(F)V
    .locals 3
    .param p1, "darkAmount"    # F

    .line 4028
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    .line 4029
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v0

    .line 4030
    .local v0, "wasFullyDark":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDarkAmount(F)V

    .line 4031
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4032
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4033
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    .line 4034
    .local v1, "dozeParameters":Lcom/android/systemui/statusbar/phone/DozeParameters;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4035
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->fadeInTranslating()V

    .line 4038
    .end local v1    # "dozeParameters":Lcom/android/systemui/statusbar/phone/DozeParameters;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 4039
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 4040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAntiBurnInTranslation()V

    .line 4041
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4042
    return-void
.end method

.method private setDimAmount(F)V
    .locals 0
    .param p1, "dimAmount"    # F

    .line 3835
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    .line 3836
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 3837
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1
    .param p1, "isDragged"    # Z

    .line 3562
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 3563
    if-eqz p1, :cond_0

    .line 3564
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 3565
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 3567
    :cond_0
    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .line 3690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3691
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 3692
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 3693
    if-eqz v0, :cond_2

    .line 3694
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_1

    .line 3695
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 3696
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper;->cancelImmediately()V

    .line 3698
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 3699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometers()V

    .line 3700
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3702
    :cond_2
    return-void
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1
    .param p1, "maxLayoutHeight"    # I

    .line 721
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxLayoutHeight(I)V

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 724
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "isRubberbanded"    # Z

    .line 1963
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1964
    if-eqz p3, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    goto :goto_0

    .line 1967
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 1968
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    .line 1969
    if-eqz p2, :cond_1

    .line 1970
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 1972
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1974
    :goto_0
    return-void
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .line 2001
    if-eqz p2, :cond_0

    .line 2002
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_0

    .line 2004
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    .line 2006
    :goto_0
    return-void
.end method

.method private setRequestedClipBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 940
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    .line 941
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 942
    return-void
.end method

.method private setStackTranslation(F)V
    .locals 1
    .param p1, "stackTranslation"    # F

    .line 1053
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1054
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1058
    :cond_0
    return-void
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "isSwiped"    # Z

    .line 1469
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 1470
    if-eqz p1, :cond_0

    .line 1471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1473
    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 2
    .param p1, "topPadding"    # I
    .param p2, "animate"    # Z

    .line 853
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    if-eq v0, p1, :cond_1

    .line 854
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    .line 855
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkSeparatorPadding:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkTopPadding:I

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDarkTopPadding(I)V

    .line 857
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 858
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 859
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 861
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 863
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 864
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 866
    :cond_1
    return-void
.end method

.method private shouldHideSensitive(Landroid/view/View;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hideSensitive"    # Z

    .line 5213
    const/4 v0, 0x0

    .line 5214
    .local v0, "lock":Z
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 5215
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5216
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLock()Z

    move-result v0

    .line 5218
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

    .line 3256
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3257
    const/4 v0, 0x0

    return v0

    .line 3259
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private shouldOverScrollFling(I)Z
    .locals 3
    .param p1, "initialVelocity"    # I

    .line 2581
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 2582
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

    .line 2028
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 2029
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2030
    .local v1, "overScrolledTop":Z
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 2031
    .local v4, "overScrolledBottom":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_4

    .line 2034
    :cond_2
    if-eqz v1, :cond_3

    .line 2035
    const/4 v5, 0x1

    .line 2036
    .local v5, "onTop":Z
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    .line 2037
    .local v6, "newAmount":F
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2038
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    goto :goto_2

    .line 2040
    .end local v5    # "onTop":Z
    .end local v6    # "newAmount":F
    :cond_3
    const/4 v5, 0x0

    .line 2041
    .restart local v5    # "onTop":Z
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    .line 2042
    .restart local v6    # "newAmount":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2044
    :goto_2
    invoke-virtual {p0, v6, v5, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2045
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2046
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 2048
    .end local v5    # "onTop":Z
    .end local v6    # "newAmount":F
    :cond_4
    return-void
.end method

.method private startAnimationToState()V
    .locals 5

    .line 3175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    .line 3177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3179
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3188
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    .line 3180
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3181
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V

    .line 3183
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 3190
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 3191
    return-void
.end method

.method private startBackgroundAnimation()V
    .locals 2

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2302
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2303
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBottomAnimation()V

    .line 2304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startTopAnimation()V

    .line 2305
    return-void
.end method

.method private startBottomAnimation()V
    .locals 9

    .line 2356
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 2357
    .local v0, "previousStartValue":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 2358
    .local v1, "previousEndValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 2359
    .local v2, "newEndValue":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2360
    .local v3, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_0

    if-ne v1, v2, :cond_0

    .line 2361
    return-void

    .line 2363
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_2

    .line 2365
    if-eqz v3, :cond_1

    .line 2368
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2369
    .local v4, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v8, v4, v7

    new-array v6, v6, [I

    aput v0, v6, v7

    aput v2, v6, v5

    invoke-virtual {v8, v6}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2370
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 2371
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 2372
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2373
    return-void

    .line 2376
    .end local v4    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundBottom(I)V

    .line 2377
    return-void

    .line 2380
    :cond_2
    if-eqz v3, :cond_3

    .line 2381
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2383
    :cond_3
    const-string v4, "backgroundBottom"

    new-array v6, v6, [I

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    aput v8, v6, v7

    aput v2, v6, v5

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2385
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2386
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2387
    const-wide/16 v6, 0x168

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2389
    new-instance v6, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2397
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 2398
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 2399
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 2400
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2401
    return-void
.end method

.method private startDarkAmountAnimation()V
    .locals 4

    .line 4049
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DARK_AMOUNT:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 4050
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

    .line 4049
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4051
    .local v0, "darkAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4052
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4053
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4059
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 4060
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4062
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    .line 4063
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 4064
    return-void
.end method

.method private startTopAnimation()V
    .locals 9

    .line 2308
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2309
    .local v0, "previousEndValue":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2310
    .local v1, "newEndValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2311
    .local v2, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    .line 2312
    return-void

    .line 2314
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 2316
    if-eqz v2, :cond_1

    .line 2319
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2320
    .local v3, "previousStartValue":I
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 2321
    .local v7, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v8, v7, v6

    new-array v5, v5, [I

    aput v3, v5, v6

    aput v1, v5, v4

    invoke-virtual {v8, v5}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2322
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 2323
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 2324
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2325
    return-void

    .line 2328
    .end local v3    # "previousStartValue":I
    .end local v7    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundTop(I)V

    .line 2329
    return-void

    .line 2332
    :cond_2
    if-eqz v2, :cond_3

    .line 2333
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2335
    :cond_3
    const-string v3, "backgroundTop"

    new-array v5, v5, [I

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    aput v7, v5, v6

    aput v1, v5, v4

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2337
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2338
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2339
    const-wide/16 v5, 0x168

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2341
    new-instance v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2349
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 2350
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2351
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 2352
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2353
    return-void
.end method

.method private targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "positionInLinearLayout"    # I

    .line 1413
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 1414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1413
    return v0
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 3

    .line 727
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRegularTopPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkTopPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    .line 729
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setTopPadding(I)V

    .line 731
    return-void
.end method

.method private updateAlgorithmLayoutMinHeight()V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    .line 734
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMinHeight(I)V

    .line 736
    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 3090
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 3091
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

    .line 3090
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 3092
    return-void
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 1
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .line 3115
    instance-of v0, p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3116
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3117
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 3119
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateAntiBurnInTranslation()V
    .locals 2

    .line 4014
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAntiBurnInOffsetX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationX(F)V

    .line 4015
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .line 2261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 2265
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundBounds()V

    .line 2266
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2267
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v0, :cond_2

    .line 2268
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

    .line 2269
    .local v0, "animate":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2271
    const/4 v0, 0x0

    .line 2273
    :cond_3
    if-eqz v0, :cond_4

    .line 2274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBackgroundAnimation()V

    goto :goto_2

    .line 2276
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2279
    .end local v0    # "animate":Z
    :goto_2
    goto :goto_3

    .line 2280
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2282
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 2283
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2284
    return-void

    .line 2262
    :cond_6
    :goto_4
    return-void
.end method

.method private updateBackgroundBounds()V
    .locals 10

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationInWindow([I)V

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2439
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v1, v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2441
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2443
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2444
    return-void

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 2447
    .local v0, "firstView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    const/4 v1, 0x0

    .line 2448
    .local v1, "top":I
    if-eqz v0, :cond_4

    .line 2450
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 2451
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

    .line 2457
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationY()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .end local v3    # "finalTranslationY":I
    goto :goto_1

    .line 2455
    .restart local v3    # "finalTranslationY":I
    :cond_3
    :goto_0
    move v1, v3

    .line 2461
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

    .line 2462
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    goto :goto_2

    .line 2463
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 2465
    .local v3, "lastView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    :goto_2
    if-eqz v3, :cond_a

    .line 2467
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v3, v4, :cond_6

    .line 2468
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    .local v4, "finalTranslationY":I
    goto :goto_3

    .line 2470
    .end local v4    # "finalTranslationY":I
    :cond_6
    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v4

    float-to-int v4, v4

    .line 2472
    .restart local v4    # "finalTranslationY":I
    :goto_3
    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v5

    .line 2473
    .local v5, "finalHeight":I
    add-int v6, v4, v5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getClipBottomAmount()I

    move-result v7

    sub-int/2addr v6, v7

    .line 2474
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

    .line 2480
    :cond_8
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationY()F

    move-result v7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 2481
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getClipBottomAmount()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .end local v4    # "finalTranslationY":I
    .end local v5    # "finalHeight":I
    .end local v6    # "finalBottom":I
    goto :goto_5

    .line 2478
    .restart local v4    # "finalTranslationY":I
    .restart local v5    # "finalHeight":I
    .restart local v6    # "finalBottom":I
    :cond_9
    :goto_4
    move v7, v6

    .line 2481
    .local v7, "bottom":I
    move v4, v7

    .line 2483
    .end local v5    # "finalHeight":I
    .end local v6    # "finalBottom":I
    .end local v7    # "bottom":I
    .local v4, "bottom":I
    :goto_5
    nop

    .line 2485
    move v9, v4

    move v4, v1

    move v1, v9

    goto :goto_6

    .line 2484
    .end local v4    # "bottom":I
    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 2485
    move v4, v1

    .line 2487
    .local v1, "bottom":I
    .local v4, "top":I
    :goto_6
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    .line 2488
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

    .line 2491
    .end local v2    # "top":I
    .restart local v4    # "top":I
    :cond_b
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_7

    .line 2493
    .end local v4    # "top":I
    .restart local v2    # "top":I
    :goto_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 2494
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2495
    return-void
.end method

.method private updateBackgroundDimming()V
    .locals 6

    .line 570
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 571
    return-void

    .line 574
    :cond_0
    const v0, 0x3f333333    # 0.7f

    const v1, 0x3e99999a    # 0.3f

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 576
    .local v0, "alpha":F
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    sub-float/2addr v3, v1

    mul-float/2addr v0, v3

    .line 578
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getBackgroundColor()I

    move-result v1

    .line 579
    .local v1, "scrimColor":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v1, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 583
    .local v2, "awakeColor":I
    sget-object v3, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 584
    .local v3, "colorInterpolation":F
    const/4 v4, -0x1

    invoke-static {v2, v4, v3}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 586
    .local v4, "color":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    if-eq v5, v4, :cond_1

    .line 587
    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    .line 588
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 591
    :cond_1
    return-void
.end method

.method private updateChildren()V
    .locals 3

    .line 743
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForAddedChildren()V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    const/4 v1, 0x0

    goto :goto_0

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    .line 744
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setCurrentScrollVelocity(F)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setScrollY(I)V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 749
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_1

    .line 750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    .line 752
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    .line 754
    :goto_1
    return-void
.end method

.method private updateChronometerForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 3712
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3713
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3714
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 3716
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateChronometers()V
    .locals 3

    .line 3705
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3706
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3707
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3709
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateClippingToTopRoundedCorner()V
    .locals 11

    .line 765
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 767
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 765
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 768
    .local v0, "clipStart":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 769
    .local v1, "clipEnd":Ljava/lang/Float;
    const/4 v2, 0x1

    .line 770
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

    .line 771
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    .line 772
    .local v5, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 773
    goto :goto_4

    .line 775
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    .line 776
    .local v6, "start":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 777
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

    .line 778
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

    .line 779
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

    .line 780
    if-eqz v8, :cond_6

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float v9, v6, v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    goto :goto_3

    .line 781
    :cond_6
    const/high16 v9, -0x40800000    # -1.0f

    .line 780
    :goto_3
    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setDistanceToTopRoundness(F)V

    .line 782
    const/4 v4, 0x0

    .line 770
    .end local v5    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "start":F
    .end local v7    # "end":F
    .end local v8    # "clip":Z
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method private updateContentHeight()V
    .locals 18

    .line 2161
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2162
    .local v1, "height":I
    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    .line 2163
    .local v2, "previousPaddingRequest":F
    const/4 v3, 0x0

    .line 2164
    .local v3, "previousPaddingAmount":F
    const/4 v4, 0x0

    .line 2165
    .local v4, "numShownItems":I
    const/4 v5, 0x0

    .line 2166
    .local v5, "finish":Z
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2167
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2168
    const/4 v6, 0x1

    goto :goto_0

    .line 2167
    :cond_0
    nop

    .line 2168
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 2170
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

    .line 2171
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2172
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

    .line 2173
    .local v11, "footerViewOnLockScreen":Z
    :goto_2
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_a

    .line 2174
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v12

    if-nez v12, :cond_a

    if-nez v11, :cond_a

    .line 2175
    const/4 v12, -0x1

    if-eq v6, v12, :cond_3

    if-lt v4, v6, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 2177
    .local v12, "limitReached":Z
    :goto_3
    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2178
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v13

    if-eqz v13, :cond_4

    instance-of v13, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_4

    move-object v13, v10

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2180
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 2181
    .local v13, "notificationOnAmbientThatIsNotPulsing":Z
    :goto_4
    if-nez v12, :cond_5

    if-eqz v13, :cond_6

    .line 2182
    :cond_5
    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2183
    const/4 v5, 0x1

    .line 2185
    :cond_6
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v14

    .line 2187
    .local v14, "increasedPaddingAmount":F
    const/4 v15, 0x0

    cmpl-float v16, v14, v15

    if-ltz v16, :cond_7

    .line 2188
    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    invoke-static {v2, v15, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    float-to-int v15, v15

    int-to-float v15, v15

    .line 2192
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

    .line 2197
    .end local v15    # "padding":F
    :cond_7
    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v8, v14

    invoke-static {v15, v7, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    float-to-int v7, v7

    .line 2201
    .local v7, "ownPadding":I
    cmpl-float v8, v3, v15

    if-lez v8, :cond_8

    .line 2202
    int-to-float v8, v7

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    invoke-static {v8, v15, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    .local v8, "padding":F
    goto :goto_5

    .line 2207
    .end local v8    # "padding":F
    :cond_8
    int-to-float v8, v7

    .restart local v8    # "padding":F
    :goto_5
    move v15, v8

    .line 2209
    .end local v8    # "padding":F
    .restart local v15    # "padding":F
    int-to-float v2, v7

    .line 2211
    .end local v7    # "ownPadding":I
    :goto_6
    if-eqz v9, :cond_9

    .line 2212
    int-to-float v7, v9

    add-float/2addr v7, v15

    float-to-int v9, v7

    .line 2214
    :cond_9
    move v3, v14

    .line 2215
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v9, v7

    .line 2216
    add-int/lit8 v4, v4, 0x1

    .line 2217
    if-eqz v5, :cond_a

    .line 2218
    goto :goto_7

    .line 2170
    .end local v10    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v11    # "footerViewOnLockScreen":Z
    .end local v12    # "limitReached":Z
    .end local v13    # "notificationOnAmbientThatIsNotPulsing":Z
    .end local v14    # "increasedPaddingAmount":F
    .end local v15    # "padding":F
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2222
    .end local v1    # "i":I
    :cond_b
    :goto_7
    iput v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    .line 2223
    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v1, v9

    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomMargin:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2224
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 2225
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 2226
    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMaxHeight(I)V

    .line 2227
    return-void
.end method

.method private updateContinuousShadowDrawing()V
    .locals 3

    .line 4892
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 4893
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

    .line 4894
    .local v0, "continuousShadowUpdate":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    if-eq v0, v1, :cond_3

    .line 4895
    if-eqz v0, :cond_2

    .line 4896
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 4898
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4900
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    .line 4902
    :cond_3
    return-void
.end method

.method private updateFadingState()V
    .locals 0

    .line 4482
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 4483
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 4484
    return-void
.end method

.method private updateFirstAndLastBackgroundViews()V
    .locals 5

    .line 3024
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 3025
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildWithBackground()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v1

    .line 3026
    .local v1, "lastChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_2

    .line 3027
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3028
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v1, v2, :cond_1

    move v3, v4

    nop

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    goto :goto_1

    .line 3030
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3031
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 3033
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 3034
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 3035
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 3036
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setFirstAndLastBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 3038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 3039
    return-void
.end method

.method private updateForcedScroll()V
    .locals 6

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 810
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 815
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    .line 816
    .local v1, "positionInLinearLayout":I
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v2

    .line 817
    .local v2, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 819
    .local v3, "outOfViewScroll":I
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 823
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v2, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v4, :cond_3

    .line 824
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 827
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v1    # "positionInLinearLayout":I
    .end local v2    # "targetScroll":I
    .end local v3    # "outOfViewScroll":I
    :cond_3
    return-void
.end method

.method private updateForwardAndBackwardScrollability()V
    .locals 5

    .line 2248
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

    .line 2249
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

    .line 2250
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

    .line 2252
    .local v1, "changed":Z
    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    .line 2253
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    .line 2254
    if-eqz v1, :cond_4

    .line 2255
    const/16 v2, 0x800

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->sendAccessibilityEvent(I)V

    .line 2257
    :cond_4
    return-void
.end method

.method private updateHideSensitiveForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 3050
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 3051
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3053
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHideSensitive(Landroid/view/View;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 3056
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 7

    .line 3079
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

    .line 3080
    .local v0, "running":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setAnimationsEnabled(Z)V

    .line 3081
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 3082
    .local v3, "childCount":I
    move v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "running":Z
    :goto_2
    if-ge v0, v3, :cond_4

    .line 3083
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3084
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

    .line 3085
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 3082
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3087
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 3744
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3745
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3746
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 3747
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3748
    return-void

    .line 3751
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 3752
    .local v1, "endPosition":F
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3753
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    .line 3755
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 3756
    .local v2, "layoutEnd":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 3757
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 3759
    :cond_2
    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 3760
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    int-to-float v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3761
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 3765
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "endPosition":F
    .end local v2    # "layoutEnd":I
    :cond_3
    return-void
.end method

.method private updateScrollStateForAddedChildren()V
    .locals 8

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    return-void

    .line 790
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 791
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 792
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 793
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v3

    .line 794
    .local v3, "startingPosition":I
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v4

    .line 795
    .local v4, "increasedPaddingAmount":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    goto :goto_1

    .line 796
    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 797
    .local v5, "padding":I
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v5

    .line 798
    .local v6, "childHeight":I
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v7, :cond_3

    .line 801
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 790
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "startingPosition":I
    .end local v4    # "increasedPaddingAmount":F
    .end local v5    # "padding":I
    .end local v6    # "childHeight":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 806
    return-void
.end method

.method private updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 6
    .param p1, "removedChild"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 2922
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    .line 2923
    .local v0, "startingPosition":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v1

    .line 2925
    .local v1, "increasedPaddingAmount":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    .line 2926
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    .local v2, "padding":I
    goto :goto_0

    .line 2931
    .end local v2    # "padding":I
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 2936
    .restart local v2    # "padding":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    .line 2937
    .local v3, "childHeight":I
    add-int v4, v0, v3

    .line 2938
    .local v4, "endPosition":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v4, v5, :cond_1

    .line 2941
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1

    .line 2942
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v5, :cond_2

    .line 2945
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2947
    :cond_2
    :goto_1
    return-void
.end method

.method private updateScrollability()V
    .locals 2

    .line 2239
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2240
    .local v0, "scrollable":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v0, v1, :cond_1

    .line 2241
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 2242
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFocusable(Z)V

    .line 2243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 2245
    :cond_1
    return-void
.end method

.method private updateSrcDrawing()V
    .locals 2

    .line 630
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDrawBackgroundAsSrc:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-nez v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 634
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 637
    return-void
.end method

.method private updateViewShadows()V
    .locals 12

    .line 3907
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3908
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3909
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 3910
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3907
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3913
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3916
    const/4 v1, 0x0

    .line 3917
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

    .line 3918
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3919
    .local v3, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v4

    .line 3920
    .local v4, "translationZ":F
    if-nez v2, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v5

    .line 3921
    .local v5, "otherZ":F
    :goto_2
    sub-float v6, v5, v4

    .line 3922
    .local v6, "diff":F
    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    if-lez v8, :cond_4

    const v8, 0x3dcccccd    # 0.1f

    cmpl-float v9, v6, v8

    if-ltz v9, :cond_3

    goto :goto_3

    .line 3926
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 3927
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 3928
    .local v7, "yLocation":F
    div-float v8, v6, v8

    .line 3930
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineAlpha()F

    move-result v9

    float-to-int v10, v7

    .line 3931
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineTranslation()I

    move-result v11

    .line 3928
    invoke-virtual {v3, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    .end local v7    # "yLocation":F
    goto :goto_4

    .line 3924
    :cond_4
    :goto_3
    invoke-virtual {v3, v7, v7, v0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    .line 3933
    :goto_4
    move-object v2, v3

    .line 3917
    .end local v3    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "translationZ":F
    .end local v5    # "otherZ":F
    .end local v6    # "diff":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3936
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3937
    return-void
.end method

.method private updateWillNotDraw()V
    .locals 3

    .line 4023
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4024
    .local v0, "willDraw":Z
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setWillNotDraw(Z)V

    .line 4025
    return-void
.end method


# virtual methods
.method public addContainerView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 4362
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 4363
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

    .line 4631
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4632
    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 2
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 3110
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandAnimationTopChange(I)V

    .line 3111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3112
    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3102
    new-instance v0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$kf3mstlQ__SBMLTTAvwCr700C4g;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$kf3mstlQ__SBMLTTAvwCr700C4g;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAwayListener(Ljava/util/function/Consumer;)V

    .line 3106
    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1456
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1320
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1321
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1322
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1323
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1320
    :goto_0
    return v0
.end method

.method public cancelExpandHelper()V
    .locals 1

    .line 3964
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 3965
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 3594
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->cancelLongPress()V

    .line 3595
    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newIndex"    # I

    .line 3144
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3146
    .local v0, "currentIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3147
    const/4 v1, 0x0

    .line 3148
    .local v1, "isTransient":Z
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3149
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3150
    const/4 v1, 0x1

    .line 3152
    :cond_0
    const-string v2, "StackScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to re-position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    if-eqz v1, :cond_1

    const-string/jumbo v4, "transient"

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

    .line 3152
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    return-void

    .line 3160
    .end local v1    # "isTransient":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_3

    if-eq v0, p2, :cond_3

    .line 3161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3162
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 3163
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 3164
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 3165
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 3166
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3167
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 3168
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3169
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3172
    :cond_3
    return-void
.end method

.method public checkSnoozeLeavebehind()V
    .locals 8

    .line 3617
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    if-eqz v0, :cond_0

    .line 3618
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

    .line 3621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3623
    :cond_0
    return-void
.end method

.method public cleanUpViewState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2777
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 2780
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2781
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 3579
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3580
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 3583
    :cond_0
    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4910
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 4911
    return-void
.end method

.method protected createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 3544
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

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    int-to-long v4, p3

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 1489
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4601
    const-string v0, "[%s: pulsing=%s qsCustomizerShowing=%s visibility=%s alpha:%f scrollY:%d maxTopPadding:%d showShelfOnly=%s qsExpandFraction=%f]"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    .line 4604
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4605
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

    .line 4606
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

    .line 4607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_2

    const-string/jumbo v3, "visible"

    goto :goto_2

    .line 4608
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    const-string v3, "gone"

    goto :goto_2

    .line 4609
    :cond_3
    const-string v3, "invisible"

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 4610
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 4611
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 4612
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 4613
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v3, :cond_4

    const-string v3, "T"

    goto :goto_3

    :cond_4
    const-string v3, "f"

    :goto_3
    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    .line 4614
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    .line 4601
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dumpRows(Ljava/io/PrintWriter;)V

    .line 4618
    return-void
.end method

.method public expansionStateChanged(Z)V
    .locals 1
    .param p1, "isExpanding"    # Z

    .line 1367
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1368
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    .line 1369
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    .line 1370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 1372
    :cond_0
    return-void
.end method

.method protected fling(I)V
    .locals 16
    .param p1, "velocityY"    # I

    move-object/from16 v0, p0

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 2545
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    .line 2547
    .local v12, "scrollRange":I
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    .line 2548
    .local v13, "topAmount":F
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v14

    .line 2549
    .local v14, "bottomAmount":F
    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    if-gez p1, :cond_0

    cmpl-float v5, v13, v4

    if-lez v5, :cond_0

    .line 2550
    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v6, v13

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2551
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2552
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2553
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

    .line 2555
    :cond_0
    if-lez p1, :cond_1

    cmpl-float v1, v14, v4

    if-lez v1, :cond_1

    .line 2556
    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, v14

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2557
    invoke-virtual {v0, v4, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2558
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 2559
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v3

    mul-float/2addr v1, v3

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v14

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2563
    :cond_1
    iput v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 2565
    :goto_0
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2566
    .local v1, "minScrollY":I
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v3, :cond_2

    .line 2567
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2569
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

    .line 2570
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ltz v9, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x3fffffff    # 1.9999999f

    .line 2569
    :goto_1
    move v11, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, p1

    move v9, v15

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2572
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 2574
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

    .line 4415
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    .line 4416
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fromMoreCard"    # Z

    .line 3128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_1

    .line 3130
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3131
    if-eqz p2, :cond_0

    .line 3132
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3136
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_2

    .line 3137
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3138
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3140
    :cond_2
    return-void
.end method

.method public generateChildOrderChangedEvent()V
    .locals 1

    .line 4338
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 4340
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4343
    :cond_0
    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "isHeadsUp"    # Z

    .line 4376
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    if-eqz v0, :cond_2

    .line 4377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4379
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 4380
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 4382
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4384
    :cond_2
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .line 3887
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getAppearFraction(F)F
    .locals 4
    .param p1, "height"    # F

    .line 1042
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 1043
    .local v0, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v1

    .line 1044
    .local v1, "appearStartPosition":F
    sub-float v2, p1, v1

    sub-float v3, v0, v1

    div-float/2addr v2, v3

    return v2
.end method

.method public getBottomMostNotificationBottom()F
    .locals 6

    .line 4178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4179
    .local v0, "count":I
    const/4 v1, 0x0

    .line 4180
    .local v1, "max":F
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4181
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4182
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 4183
    goto :goto_1

    .line 4185
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 4186
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 4187
    .local v4, "bottom":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    .line 4188
    move v1, v4

    .line 4180
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "bottom":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4191
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

    .line 1211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 1212
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    .line 1213
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1214
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 1215
    .local v2, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1216
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    if-eq v3, v2, :cond_0

    .line 1218
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1219
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1224
    :cond_0
    move-object v0, v2

    .line 1227
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 1267
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZ)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1262
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

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p2, v0

    .line 1234
    .local v0, "localTouchY":F
    const/4 v1, 0x0

    .line 1235
    .local v1, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1238
    .local v2, "minDist":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 1239
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "childIdx":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1240
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1241
    .local v5, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    instance-of v6, v5, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-eqz v6, :cond_0

    .line 1243
    goto :goto_1

    .line 1245
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    .line 1246
    .local v6, "childTop":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 1247
    .local v7, "top":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    .line 1248
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 1250
    .local v8, "bottom":F
    sub-float v9, v7, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v10, v8, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1251
    .local v9, "dist":F
    cmpg-float v10, v9, v2

    if-gez v10, :cond_1

    .line 1252
    move-object v1, v5

    .line 1253
    move v2, v9

    .line 1239
    .end local v5    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "childTop":F
    .end local v7    # "top":F
    .end local v8    # "bottom":F
    .end local v9    # "dist":F
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1256
    .end local v4    # "childIdx":I
    :cond_2
    return-object v1
.end method

.method public getContainerChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .line 4352
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContainerChildCount()I
    .locals 1

    .line 4347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 2157
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .line 1993
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1
    .param p1, "top"    # Z

    .line 1997
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

    .line 4045
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmount:F

    return v0
.end method

.method public getEmptyBottomMargin()I
    .locals 2

    .line 3613
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

    .line 4174
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .line 1206
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

    .line 2067
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2068
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2069
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2070
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2071
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    return-object v3

    .line 2068
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2074
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFirstItemMinHeight()I
    .locals 2

    .line 1071
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 1072
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

    .line 4170
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

    .line 3609
    return-object p0
.end method

.method public getIntrinsicContentHeight()I
    .locals 1

    .line 948
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    return v0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .line 3973
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getLastChildNotGone()Landroid/view/View;
    .locals 5

    .line 2131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2132
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2133
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2134
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2135
    return-object v2

    .line 2132
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2138
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLayoutMinHeight()I
    .locals 2

    .line 2616
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v0

    return v0

    .line 2619
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

    .line 1376
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v0

    return v0
.end method

.method public getMinExpansionHeight()I
    .locals 2

    .line 4546
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    .line 4547
    .local v0, "shelf":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .line 2145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2146
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 2147
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2148
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2149
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

    .line 2150
    add-int/lit8 v1, v1, 0x1

    .line 2147
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2153
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 1

    .line 4526
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    .line 3980
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getOpeningHeight()F
    .locals 2

    .line 4571
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4572
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 4574
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    return v0
.end method

.method public getPeekHeight()I
    .locals 5

    .line 2640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2641
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    goto :goto_0

    .line 2642
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 2643
    .local v1, "firstChildMinHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 2644
    .local v2, "shelfHeight":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 2645
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    .line 2647
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    return v3
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 13
    .param p1, "requestedView"    # Landroid/view/View;

    .line 2958
    const/4 v0, 0x0

    .line 2959
    .local v0, "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v1, 0x0

    .line 2960
    .local v1, "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInGroup(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2963
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2964
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    move-object v1, v2

    move-object p1, v2

    .line 2966
    :cond_0
    const/4 v2, 0x0

    .line 2967
    .local v2, "position":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v3, v3

    .line 2968
    .local v3, "previousPaddingRequest":F
    const/4 v4, 0x0

    .line 2969
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

    .line 2970
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2971
    .local v7, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v5

    .line 2972
    .local v8, "notGone":Z
    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2973
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v9

    .line 2975
    .local v9, "increasedPaddingAmount":F
    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-ltz v11, :cond_2

    .line 2976
    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v10, v10

    invoke-static {v4, v10, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    .line 2980
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

    .line 2985
    .end local v10    # "padding":F
    :cond_2
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v9

    invoke-static {v10, v11, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    .line 2989
    .local v11, "ownPadding":I
    cmpl-float v10, v6, v10

    if-lez v10, :cond_3

    .line 2990
    int-to-float v10, v11

    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v10, v12, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    .restart local v10    # "padding":F
    goto :goto_2

    .line 2995
    .end local v10    # "padding":F
    :cond_3
    int-to-float v10, v11

    .line 2997
    .restart local v10    # "padding":F
    :goto_2
    int-to-float v4, v11

    .line 2999
    .end local v11    # "ownPadding":I
    :goto_3
    if-eqz v3, :cond_4

    .line 3000
    int-to-float v11, v3

    add-float/2addr v11, v10

    float-to-int v3, v11

    .line 3002
    :cond_4
    move v6, v9

    .line 3004
    .end local v9    # "increasedPaddingAmount":F
    .end local v10    # "padding":F
    :cond_5
    if-ne v7, p1, :cond_7

    .line 3005
    if-eqz v1, :cond_6

    .line 3006
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v5

    add-int/2addr v3, v5

    .line 3008
    :cond_6
    return v3

    .line 3010
    :cond_7
    if-eqz v8, :cond_8

    .line 3011
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr v3, v9

    .line 2969
    .end local v7    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "notGone":Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3014
    .end local v2    # "i":I
    :cond_9
    return v5
.end method

.method public getStackTranslation()F
    .locals 1

    .line 1049
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    return v0
.end method

.method public getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    return-object v0
.end method

.method public getTopPadding()I
    .locals 1

    .line 849
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    .line 2636
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1501
    return-object p0
.end method

.method public goToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .line 3957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 3958
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 3959
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3960
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3961
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 4420
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

    .line 2235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    return v0
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    .line 3122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 3123
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

    .line 3122
    :goto_0
    return v0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .line 1461
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    return v0
.end method

.method public isBelowLastNotification(FF)Z
    .locals 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .line 4215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4216
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_5

    .line 4217
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4218
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 4219
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getY()F

    move-result v5

    .line 4220
    .local v5, "childTop":F
    cmpl-float v6, v5, p2

    if-lez v6, :cond_0

    .line 4222
    return v3

    .line 4224
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    .line 4225
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

    .line 4226
    .local v6, "belowChild":Z
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-ne v4, v7, :cond_2

    .line 4227
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

    .line 4230
    return v3

    .line 4232
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v4, v7, :cond_3

    .line 4234
    return v2

    .line 4235
    :cond_3
    if-nez v6, :cond_4

    .line 4237
    return v3

    .line 4216
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v5    # "childTop":F
    .end local v6    # "belowChild":Z
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4241
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

    .line 3831
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 4436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method public isFooterViewContentVisible()Z
    .locals 1

    .line 4166
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

    .line 4160
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    .line 4161
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FooterView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    .line 4162
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FooterView;->willBeGone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4160
    :goto_0
    return v0
.end method

.method public isFullyDark()Z
    .locals 1

    .line 4621
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v0

    return v0
.end method

.method public isInContentBounds(F)Z
    .locals 2
    .param p1, "y"    # F

    .line 3558
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

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 708
    .local v0, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 709
    return v1

    .line 711
    :cond_0
    iget v2, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    and-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_1

    .line 712
    return v1

    .line 714
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    return v1

    .line 717
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected isInsideQsContainer(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1736
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

    .line 3604
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

    .line 3599
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

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1385
    return-void

    .line 1387
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1388
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    .line 1389
    return-void
.end method

.method public notifyGroupChildAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;

    .line 3065
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 3066
    return-void
.end method

.method public notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;
    .param p2, "childrenContainer"    # Landroid/view/ViewGroup;

    .line 3060
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 3061
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1419
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 1421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 1422
    .local v0, "range":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v1, v0, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1426
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1427
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1430
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    .line 1432
    :cond_1
    :goto_0
    return-object p1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStartDismissing()V

    .line 1172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    .line 1174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1175
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1179
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1180
    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 1

    .line 3777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 3780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTransient()V

    .line 3781
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearHeadsUpDisappearRunning()V

    .line 3782
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1089
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1090
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1091
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildViewDismissed(Landroid/view/View;)V

    .line 1093
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1094
    .local v1, "transientContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1095
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 1097
    :cond_1
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1152
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1157
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1161
    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1477
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070649

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 1479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1480
    .local v0, "densityScale":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setDensityScale(F)V

    .line 1481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    .line 1482
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setPagingTouchSlop(F)V

    .line 1483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 1484
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStopDismissing()V

    .line 1201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1202
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 516
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 517
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->drawBackground(Landroid/graphics/Canvas;)V

    .line 529
    :cond_1
    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    .line 3630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3631
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 3633
    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    .line 3636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3637
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 3638
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3639
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_0

    .line 3640
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3641
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 3642
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViews()V

    .line 3643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearUserLockedViews()V

    .line 3645
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1562
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

    .line 1566
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1569
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    .line 1570
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1571
    .local v0, "vscroll":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    .line 1572
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVerticalScrollFactor()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 1573
    .local v1, "delta":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 1574
    .local v2, "range":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1575
    .local v3, "oldScrollY":I
    sub-int v4, v3, v1

    .line 1576
    .local v4, "newScrollY":I
    if-gez v4, :cond_2

    .line 1577
    const/4 v4, 0x0

    goto :goto_0

    .line 1578
    :cond_2
    if-le v4, v2, :cond_3

    .line 1579
    move v4, v2

    .line 1581
    :cond_3
    :goto_0
    if-eq v4, v3, :cond_4

    .line 1582
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1583
    const/4 v5, 0x1

    return v5

    .line 1590
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

    .line 1564
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public onGoToKeyguard()V
    .locals 0

    .line 4203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimateEverything()V

    .line 4204
    return-void
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 4266
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 4267
    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 3
    .param p1, "changedRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expanded"    # Z

    .line 4246
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 4247
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4248
    .local v0, "animated":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4249
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 4250
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4252
    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 4253
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    if-nez v2, :cond_3

    .line 4254
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 4256
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    .line 4262
    return-void
.end method

.method public onGroupsChanged()V
    .locals 1

    .line 4334
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 4335
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .line 3720
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3721
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3722
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 3723
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 3724
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3725
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0

    .line 3726
    :cond_0
    const/4 v0, 0x0

    .line 3727
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v0, v1, :cond_1

    .line 3728
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-ne v1, v2, :cond_2

    .line 3729
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 3731
    :cond_2
    if-eqz p2, :cond_3

    .line 3732
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 3734
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3735
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 4272
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4274
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 4275
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 4276
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 4277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 4278
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4282
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4283
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v0, :cond_1

    .line 4284
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 4285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v0, :cond_0

    .line 4286
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4288
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4290
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-eqz v0, :cond_1

    .line 4291
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4292
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4296
    :cond_1
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4297
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 2698
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 2699
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 2700
    const/4 v2, 0x0

    .line 2701
    .local v2, "expandWantsIt":Z
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v3, :cond_0

    .line 2702
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, v1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2704
    :cond_0
    const/4 v3, 0x0

    .line 2705
    .local v3, "scrollWantsIt":Z
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v4, :cond_1

    .line 2706
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2708
    :cond_1
    const/4 v4, 0x0

    .line 2709
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

    .line 2714
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 2717
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

    .line 2718
    .local v5, "isUp":Z
    :goto_0
    iget-object v8, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    .line 2719
    .local v8, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 2721
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2722
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

    .line 2726
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 2727
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2729
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

    .line 667
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 668
    .local v0, "centerX":F
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 669
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 672
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    .line 673
    .local v5, "width":F
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    .line 674
    .local v6, "height":F
    div-float v7, v5, v1

    sub-float v7, v0, v7

    float-to-int v7, v7

    div-float v8, v5, v1

    add-float/2addr v8, v0

    float-to-int v8, v8

    float-to-int v9, v6

    invoke-virtual {v4, v7, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 668
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "width":F
    .end local v6    # "height":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    .line 684
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 685
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 651
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 653
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 654
    .local v0, "width":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 655
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 654
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 658
    .local v1, "childWidthSpec":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 659
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 660
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChild(Landroid/view/View;II)V

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 662
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

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    if-nez v0, :cond_0

    .line 486
    return-void

    .line 488
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 489
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 490
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    const/16 v2, 0x14d

    .line 491
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 493
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 494
    return-void
.end method

.method public onMenuReset(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 500
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 502
    :cond_0
    return-void
.end method

.method public onMenuShown(Landroid/view/View;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 507
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    const/16 v1, 0x14c

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 509
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 510
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onMenuShown(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method public onPanelTrackingStarted()V
    .locals 2

    .line 3676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3677
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3678
    return-void
.end method

.method public onPanelTrackingStopped()V
    .locals 2

    .line 3680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3681
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3682
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 3739
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3740
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3741
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 1507
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

    .line 1508
    .local v0, "isCancelOrUp":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 1509
    const/4 v3, 0x0

    .line 1510
    .local v3, "expandWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_3

    .line 1511
    if-eqz v0, :cond_2

    .line 1512
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, v1}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1514
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1515
    .local v4, "wasExpandingBefore":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1516
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v5, :cond_3

    .line 1518
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    .line 1521
    .end local v4    # "wasExpandingBefore":Z
    :cond_3
    const/4 v4, 0x0

    .line 1522
    .local v4, "scrollerWantsIt":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v5, :cond_4

    .line 1524
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1526
    :cond_4
    const/4 v5, 0x0

    .line 1527
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

    .line 1532
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1536
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v6

    .line 1537
    .local v6, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-eqz v6, :cond_8

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1538
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/statusbar/NotificationSnooze;

    if-eqz v7, :cond_8

    .line 1539
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 1540
    .local v7, "ns":Lcom/android/systemui/statusbar/NotificationSnooze;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationSnooze;->isExpanded()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v0, :cond_7

    :cond_6
    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    .line 1544
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 1547
    .end local v7    # "ns":Lcom/android/systemui/statusbar/NotificationSnooze;
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v2, :cond_9

    .line 1548
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 1550
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

    .line 3019
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3020
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 3021
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2767
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2770
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    if-nez v0, :cond_0

    .line 2771
    invoke-direct {p0, p1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2773
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 3571
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 3572
    if-nez p1, :cond_0

    .line 3573
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 3575
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 4302
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4303
    return v1

    .line 4305
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4306
    return v2

    .line 4308
    :cond_1
    const/4 v0, -0x1

    .line 4309
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

    .line 4313
    :cond_2
    const/4 v0, 0x1

    .line 4318
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

    .line 4319
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4320
    .local v3, "viewportHeight":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    mul-int v5, v0, v3

    add-int/2addr v4, v5

    .line 4321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4320
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4322
    .local v4, "targetScrollY":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq v4, v5, :cond_4

    .line 4323
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 4324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 4325
    return v1

    .line 4329
    .end local v3    # "viewportHeight":I
    .end local v4    # "targetScrollY":I
    :cond_4
    :goto_0
    return v2
.end method

.method public removeContainerView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 4357
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4358
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

    .line 4638
    .local p1, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4639
    return-void
.end method

.method public requestDisallowDismiss()V
    .locals 1

    .line 3590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 3591
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 2785
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2786
    if-eqz p1, :cond_0

    .line 2787
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 2789
    :cond_0
    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    .line 3586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 3587
    return-void
.end method

.method public resetCheckSnoozeLeavebehind()V
    .locals 1

    .line 3626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3627
    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 4906
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 4907
    return-void
.end method

.method public resetScrollPosition()V
    .locals 1

    .line 3685
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3687
    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 4366
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4367
    return-void
.end method

.method public scrollTo(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 1392
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1393
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    .line 1394
    .local v1, "positionInLinearLayout":I
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v2

    .line 1395
    .local v2, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 1399
    .local v3, "outOfViewScroll":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v5, 0x0

    if-lt v4, v2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 1405
    :cond_0
    return v5

    .line 1400
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v8, v2, v8

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1401
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1403
    return v4
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 1
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 3878
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 3879
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 3881
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3883
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3884
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 4488
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4489
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingOut(Z)V

    .line 4490
    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 2
    .param p1, "animationRunning"    # Z

    .line 4424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-eq p1, v0, :cond_1

    .line 4425
    if-eqz p1, :cond_0

    .line 4426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 4428
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4430
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    .line 4431
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 4433
    :cond_1
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 1
    .param p1, "animationsEnabled"    # Z

    .line 3069
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 3070
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 3071
    if-nez p1, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3073
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3074
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    .line 3076
    :cond_0
    return-void
.end method

.method public setAntiBurnInOffsetX(I)V
    .locals 0
    .param p1, "antiBurnInOffsetX"    # I

    .line 4596
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAntiBurnInOffsetX:I

    .line 4597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAntiBurnInTranslation()V

    .line 4598
    return-void
.end method

.method public setBackgroundBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .line 2409
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2410
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2411
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    .line 702
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;

    .line 703
    return-void
.end method

.method public setChildTransferInProgress(Z)V
    .locals 0
    .param p1, "childTransferInProgress"    # Z

    .line 2762
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    .line 2763
    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z
    .param p3, "touchWakeUpScreenLocation"    # Landroid/graphics/PointF;

    .line 3992
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 3993
    return-void

    .line 3995
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDark(Z)V

    .line 3996
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 3997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 3998
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    .line 3999
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    goto :goto_1

    .line 4001
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 4002
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAmountAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4004
    :cond_2
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDarkAmount(F)V

    .line 4005
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 4007
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4008
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 4009
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 4010
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4011
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "animate"    # Z

    .line 3817
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    and-int/2addr p1, v0

    .line 3818
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDimmed(Z)V

    .line 3819
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3821
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3822
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateDimmed(Z)V

    goto :goto_1

    .line 3824
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    .line 3826
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3827
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .line 4137
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 4138
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDismissAllInProgress(Z)V

    .line 4139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleDismissAllClipping()V

    .line 4140
    return-void
.end method

.method public setDrawBackgroundAsSrc(Z)V
    .locals 0
    .param p1, "asSrc"    # Z

    .line 625
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDrawBackgroundAsSrc:Z

    .line 626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 627
    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 2
    .param p1, "emptyShadeView"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 4107
    const/4 v0, -0x1

    .line 4108
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v1, :cond_0

    .line 4109
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4110
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4112
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 4113
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4114
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 13
    .param p1, "height"    # F

    .line 874
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    .line 875
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

    .line 876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v1

    .line 877
    .local v1, "minExpansionHeight":I
    int-to-float v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 878
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 879
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 880
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 881
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    float-to-int v5, p1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 882
    int-to-float p1, v1

    .line 883
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 885
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    .line 889
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v4

    .line 890
    .local v4, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v5

    .line 891
    .local v5, "appearStartPosition":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 892
    .local v6, "appearFraction":F
    cmpg-float v7, p1, v4

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 893
    .local v2, "appearing":Z
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setAppearing(Z)V

    .line 894
    if-nez v2, :cond_6

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "translationY":F
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v7, :cond_3

    .line 897
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    .local v7, "stackHeight":I
    :goto_3
    goto :goto_6

    .line 898
    .end local v7    # "stackHeight":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-eqz v7, :cond_5

    .line 899
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr v7, v8

    .line 900
    .local v7, "stackStartPosition":I
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 901
    .local v8, "stackEndPosition":I
    if-gt v7, v8, :cond_4

    .line 902
    move v9, v8

    .local v9, "stackHeight":I
    goto :goto_4

    .line 904
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

    .line 907
    .end local v9    # "stackHeight":I
    .local v7, "stackHeight":I
    goto :goto_6

    .line 908
    .end local v7    # "stackHeight":I
    :cond_5
    float-to-int v7, p1

    goto :goto_3

    .line 911
    .end local v0    # "translationY":F
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v6

    .line 912
    cmpl-float v7, v6, v0

    if-ltz v7, :cond_7

    .line 913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v7

    invoke-static {v7, v0, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    .local v7, "translationY":F
    goto :goto_5

    .line 918
    .end local v7    # "translationY":F
    :cond_7
    sub-float v7, p1, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v8

    add-float/2addr v7, v8

    .line 920
    .restart local v7    # "translationY":F
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 921
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getPinnedHeadsUpHeight()I

    move-result v8

    .line 922
    .local v8, "stackHeight":I
    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v9, v0, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 924
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

    .line 927
    .restart local v0    # "translationY":F
    .local v7, "stackHeight":I
    :goto_6
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v7, v8, :cond_9

    .line 928
    iput v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 929
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 930
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 932
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackTranslation(F)V

    .line 933
    nop

    .local v3, "i":I
    :goto_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_a

    .line 934
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/function/BiConsumer;

    .line 935
    .local v8, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 933
    .end local v8    # "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Float;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 937
    .end local v3    # "i":I
    :cond_a
    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    .line 1448
    return-void
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3096
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 3097
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3098
    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 1
    .param p1, "expandingVelocity"    # F

    .line 4567
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandingVelocity(F)V

    .line 4568
    return-void
.end method

.method public setExpansionCancelled(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1351
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1352
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 1354
    :cond_0
    return-void
.end method

.method public setFadingOut(Z)V
    .locals 1
    .param p1, "fadingOut"    # Z

    .line 4464
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-eq p1, v0, :cond_0

    .line 4465
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    .line 4466
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4468
    :cond_0
    return-void
.end method

.method public setFinishScrollingCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1850
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    .line 1851
    return-void
.end method

.method public setFooterView(Lcom/android/systemui/statusbar/FooterView;)V
    .locals 2
    .param p1, "footerView"    # Lcom/android/systemui/statusbar/FooterView;

    .line 4097
    const/4 v0, -0x1

    .line 4098
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-eqz v1, :cond_0

    .line 4099
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4100
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4102
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    .line 4103
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4104
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 4199
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 4200
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0
    .param p1, "headsUpAnimatingAway"    # Z

    .line 4557
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    .line 4558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4559
    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0
    .param p1, "headsUpAppearanceController"    # Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 4643
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 4644
    return-void
.end method

.method public setHeadsUpBoundaries(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "bottomBarHeight"    # I

    .line 4399
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    sub-int v1, p1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setMaxHeadsUpTranslation(F)V

    .line 4400
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setHeadsUpAppearHeightBottom(I)V

    .line 4401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4402
    return-void
.end method

.method public setHeadsUpGoingAwayAnimationsAllowed(Z)V
    .locals 0
    .param p1, "headsUpGoingAwayAnimationsAllowed"    # Z

    .line 4592
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    .line 4593
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 4370
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 4371
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 4372
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 4373
    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 4
    .param p1, "hideSensitive"    # Z
    .param p2, "animate"    # Z

    .line 3856
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 3857
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3858
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3859
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3861
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHideSensitive(Landroid/view/View;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 3858
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3864
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    .line 3865
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_1

    .line 3866
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 3867
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3869
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3872
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method

.method public setInHeadsUpPinnedMode(Z)V
    .locals 0
    .param p1, "inHeadsUpPinnedMode"    # Z

    .line 4552
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    .line 4553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4554
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 1
    .param p1, "intrinsicPadding"    # I

    .line 3968
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 3969
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setIntrinsicPadding(I)V

    .line 3970
    return-void
.end method

.method public setIsFullWidth(Z)V
    .locals 1
    .param p1, "isFullWidth"    # Z

    .line 4579
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelFullWidth(Z)V

    .line 4580
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    .line 1076
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    .line 1077
    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 1
    .param p1, "maxDisplayedNotifications"    # I

    .line 4530
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    if-eq v0, p1, :cond_0

    .line 4531
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 4532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4533
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4535
    :cond_0
    return-void
.end method

.method public setMaxTopPadding(I)V
    .locals 0
    .param p1, "maxTopPadding"    # I

    .line 2612
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 2613
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 3773
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 3774
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "mOnHeightChangedListener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 3769
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 3770
    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .line 1927
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1928
    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z

    .line 1940
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 1941
    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z
    .param p5, "isRubberbanded"    # Z

    .line 1955
    if-eqz p4, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 1958
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    .line 1959
    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2
    .param p1, "numPixels"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .line 1915
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1916
    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0
    .param p1, "overscrollTopChangedListener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1989
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1990
    return-void
.end method

.method public setOwnScrollY(I)V
    .locals 3
    .param p1, "ownScrollY"    # I

    .line 4503
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, v0, :cond_0

    .line 4505
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 4506
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 4507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 4508
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4510
    :cond_0
    return-void
.end method

.method public setParentNotFullyVisible(Z)V
    .locals 1
    .param p1, "parentNotFullyVisible"    # Z

    .line 4471
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_0

    .line 4473
    return-void

    .line 4475
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-eq p1, v0, :cond_1

    .line 4476
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    .line 4477
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4479
    :cond_1
    return-void
.end method

.method public setPulsing(ZZ)V
    .locals 2
    .param p1, "pulsing"    # Z
    .param p2, "animated"    # Z

    .line 4440
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 4441
    return-void

    .line 4443
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Z

    .line 4444
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedingPulseAnimation:Landroid/view/View;

    .line 4445
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPulsing(Z)V

    .line 4446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 4447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 4448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4449
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4450
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 4451
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4452
    return-void
.end method

.method public setQsContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "qsContainer"    # Landroid/view/ViewGroup;

    .line 1080
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    .line 1081
    return-void
.end method

.method public setQsCustomizerShowing(Z)V
    .locals 1
    .param p1, "isShowing"    # Z

    .line 4587
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setQsCustomizerShowing(Z)V

    .line 4588
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4589
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0
    .param p1, "qsExpanded"    # Z

    .line 4493
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    .line 4494
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 4495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 4496
    return-void
.end method

.method public setQsExpansionFraction(F)V
    .locals 0
    .param p1, "qsExpansionFraction"    # F

    .line 4499
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    .line 4500
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 2
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4410
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4411
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v1, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$3VfNfgMGO3-TgMmei2bv0geU0dY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$3VfNfgMGO3-TgMmei2bv0geU0dY;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V

    .line 4412
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1380
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 1381
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 1
    .param p1, "shadeExpanded"    # Z

    .line 4387
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShadeExpanded(Z)V

    .line 4388
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShadeExpanded(Z)V

    .line 4389
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 2
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4513
    const/4 v0, -0x1

    .line 4514
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    .line 4515
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4516
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4518
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4519
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4520
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4521
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4522
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4523
    return-void
.end method

.method public setShouldShowShelfOnly(Z)V
    .locals 0
    .param p1, "shouldShowShelfOnly"    # Z

    .line 4538
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    .line 4539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 4540
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4195
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4196
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .line 4562
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    .line 4563
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStatusBarState(I)V

    .line 4564
    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4405
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    .line 4406
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 4407
    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 4583
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setUnlockHintRunning(Z)V

    .line 4584
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .line 1329
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 1330
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1331
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 1341
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 1342
    return-void

    .line 1344
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1345
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    .line 1347
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .line 1358
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1359
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1361
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 1362
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1363
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 3985
    const/4 v0, 0x1

    return v0
.end method

.method public snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1493
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

    .line 1495
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

    .line 1496
    .local v1, "targetLeft":F
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapChildIfNeeded(Landroid/view/View;ZF)V

    .line 1497
    return-void
.end method

.method public updateClipping()V
    .locals 4

    .line 952
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

    .line 953
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

    .line 955
    .local v1, "clipped":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eq v2, v1, :cond_2

    .line 956
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 960
    :cond_2
    if-eqz v0, :cond_3

    .line 961
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 962
    :cond_3
    if-eqz v1, :cond_4

    .line 963
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 965
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 967
    :goto_1
    return-void
.end method

.method public updateDecorViews(Z)V
    .locals 3
    .param p1, "lightTheme"    # Z

    .line 3945
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    if-ne p1, v0, :cond_0

    .line 3946
    return-void

    .line 3948
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    .line 3949
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    .line 3950
    if-eqz p1, :cond_1

    const v2, 0x7f12042b

    goto :goto_0

    :cond_1
    const v2, 0x7f120425

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3951
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f040468

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 3952
    .local v1, "textColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/FooterView;->setTextColor(I)V

    .line 3953
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setTextColor(I)V

    .line 3954
    return-void
.end method

.method public updateEmptyShadeView(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 4117
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

    .line 4119
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getTextResource()I

    move-result v0

    .line 4120
    .local v0, "oldTextRes":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->areNotificationsHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4121
    const v1, 0x7f11024a

    goto :goto_1

    :cond_1
    const v1, 0x7f110258

    .line 4122
    .local v1, "newTextRes":I
    :goto_1
    if-eq v0, v1, :cond_2

    .line 4123
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setText(I)V

    .line 4125
    :cond_2
    return-void
.end method

.method public updateFooterView(ZZ)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "showDismissView"    # Z

    .line 4128
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-nez v0, :cond_0

    .line 4129
    return-void

    .line 4131
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4132
    .local v0, "animate":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/FooterView;->setVisible(ZZ)V

    .line 4133
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/statusbar/FooterView;->setSecondaryVisible(ZZ)V

    .line 4134
    return-void
.end method

.method public updateSpeedBumpIndex(IZ)V
    .locals 1
    .param p1, "newIndex"    # I
    .param p2, "noAmbient"    # Z

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 696
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNoAmbient:Z

    .line 697
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .line 1166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateTopPadding(FZZ)V
    .locals 4
    .param p1, "qsHeight"    # F
    .param p2, "animate"    # Z
    .param p3, "ignoreIntrinsicPadding"    # Z

    .line 2599
    float-to-int v0, p1

    .line 2600
    .local v0, "topPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    .line 2601
    .local v1, "minStackHeight":I
    add-int v2, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2602
    add-int v2, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    .line 2604
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 2606
    :goto_0
    if-eqz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v2

    :goto_1
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 2608
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 2609
    return-void
.end method

.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/ActivatableNotificationView;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;",
        ">;"
    }
.end annotation


# static fields
.field private static final TRANSLATE_CONTENT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAboveShelf:Z

.field private mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

.field private mAppName:Ljava/lang/String;

.field private mChildAfterViewWhenDismissed:Landroid/view/View;

.field private mChildIsExpanding:Z

.field private mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

.field private mChildrenContainerStub:Landroid/view/ViewStub;

.field private mChildrenExpanded:Z

.field private mContentTransformationAmount:F

.field private mDark:Z

.field private mDismissed:Z

.field private mEnableNonGroupedNotificationExpand:Z

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mExpandAnimationRunning:Z

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedWhenPinned:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mForceUnlocked:Z

.field private mGroupExpansionChanging:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGroupParentWhenDismissed:Landroid/view/View;

.field private mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mGutsStub:Landroid/view/ViewStub;

.field private mHasUserChangedExpansion:Z

.field private mHeaderVisibleAmount:F

.field private mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsupDisappearRunning:Z

.field private mHideSensitiveForIntrinsicHeight:Z

.field private mIconAnimationRunning:Z

.field private mIconTransformContentShift:I

.field private mIconTransformContentShiftNoIcon:I

.field private mIconsVisible:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mIsBlockingHelperShowing:Z

.field private mIsColorized:Z

.field private mIsHeadsUp:Z

.field private mIsLastChild:Z

.field private mIsLowPriority:Z

.field private mIsPinned:Z

.field private mIsSummaryWithChildren:Z

.field private mIsSystemChildExpanded:Z

.field private mIsSystemExpanded:Z

.field private mJustClicked:Z

.field private mKeepInParent:Z

.field private mLastChronometerRunning:Z

.field private mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

.field private mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

.field private mLock:Z

.field private mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

.field private mLowPriorityStateUpdated:Z

.field private mMaxHeadsUpHeight:I

.field private mMaxHeadsUpHeightBeforeP:I

.field private mMaxHeadsUpHeightIncreased:I

.field private mMaxHeadsUpHeightLegacy:I

.field private mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mMustStayOnScreen:Z

.field private mNotificationAmbientHeight:I

.field private mNotificationColor:I

.field private mNotificationColorAmbient:I

.field private final mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

.field private mNotificationLaunchHeight:I

.field private mNotificationMaxHeight:I

.field private mNotificationMinHeight:I

.field private mNotificationMinHeightBeforeP:I

.field private mNotificationMinHeightLarge:I

.field private mNotificationMinHeightLegacy:I

.field private mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mNotificationViewState:Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

.field private mOnAppOpsClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDismissRunnable:Ljava/lang/Runnable;

.field private mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

.field private mOnKeyguard:Z

.field private mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mRefocusOnDismiss:Z

.field private mRemoved:Z

.field private mSecureStateProvider:Ljava/util/function/BooleanSupplier;

.field private mSensitive:Z

.field private mSensitiveHiddenInGeneral:Z

.field private mShowAmbient:Z

.field private mShowGroupBackgroundWhenExpanded:Z

.field private mShowNoBackground:Z

.field private mShowingPublic:Z

.field private mShowingPublicInitialized:Z

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;

.field private mTranslateAnim:Landroid/animation/Animator;

.field private mTranslateableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationWhenRemoved:F

.field private mUseIncreasedCollapsedHeight:Z

.field private mUseIncreasedHeadsUpHeight:Z

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mWasChildInGroupWhenRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 273
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;

    const-string/jumbo v1, "translate"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1492
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 238
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 291
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 305
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;

    .line 1493
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 1494
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    .line 1495
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    .line 1497
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Landroid/view/ViewStub;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 108
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    return v0
.end method

.method private animateShowingPublic(JJZ)V
    .locals 16
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "showingPublic"    # Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 2349
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 2350
    new-array v5, v6, [Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    aput-object v8, v5, v7

    goto :goto_0

    .line 2351
    :cond_0
    new-array v5, v6, [Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    aput-object v8, v5, v7

    .line 2352
    .local v5, "privateViews":[Landroid/view/View;
    :goto_0
    new-array v6, v6, [Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    aput-object v8, v6, v7

    .line 2353
    .local v6, "publicViews":[Landroid/view/View;
    if-eqz p5, :cond_1

    move-object v8, v5

    goto :goto_1

    :cond_1
    move-object v8, v6

    .line 2354
    .local v8, "hiddenChildren":[Landroid/view/View;
    :goto_1
    if-eqz p5, :cond_2

    move-object v9, v6

    goto :goto_2

    :cond_2
    move-object v9, v5

    .line 2355
    .local v9, "shownChildren":[Landroid/view/View;
    :goto_2
    array-length v10, v8

    move v11, v7

    :goto_3
    const/4 v12, 0x0

    if-ge v11, v10, :cond_3

    aget-object v13, v8, v11

    .line 2356
    .local v13, "hiddenView":Landroid/view/View;
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2357
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2358
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    .line 2359
    invoke-virtual {v14, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 2360
    invoke-virtual {v12, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    .line 2361
    invoke-virtual {v12, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;

    invoke-direct {v14, v0, v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 2362
    invoke-virtual {v12, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2355
    .end local v13    # "hiddenView":Landroid/view/View;
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2369
    :cond_3
    array-length v10, v9

    move v11, v7

    :goto_4
    if-ge v11, v10, :cond_4

    aget-object v13, v9, v11

    .line 2370
    .local v13, "showView":Landroid/view/View;
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2371
    invoke-virtual {v13, v12}, Landroid/view/View;->setAlpha(F)V

    .line 2372
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2373
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2374
    invoke-virtual {v14, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2375
    invoke-virtual {v7, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 2376
    invoke-virtual {v7, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2369
    .end local v13    # "showView":Landroid/view/View;
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_4

    .line 2378
    :cond_4
    return-void
.end method

.method private applyChildrenRoundness()V
    .locals 2

    .line 2879
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCurrentBottomRoundness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setCurrentBottomRoundness(F)V

    .line 2882
    :cond_0
    return-void
.end method

.method private cacheIsSystemNotification()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    :cond_0
    return-void
.end method

.method private doLongClickCallback()V
    .locals 2

    .line 1614
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->doLongClickCallback(II)V

    .line 1615
    return-void
.end method

.method private doLongClickCallback(IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "menuItem"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 1627
    :cond_0
    return-void
.end method

.method private getHeadsUpHeight()I
    .locals 1

    .line 2445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpHeight()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0

    :goto_1
    return v0
.end method

.method private getPinnedHeadsUpHeight(Z)I
    .locals 2
    .param p1, "atLeastMinHeight"    # Z

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isQuickReply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getQuickReplyHeight()I

    move-result v0

    return v0

    .line 875
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 878
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v0, :cond_2

    .line 879
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 880
    :cond_2
    if-eqz p1, :cond_3

    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 883
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v0

    return v0
.end method

.method private getQuickReplyHeight()I
    .locals 1

    .line 2439
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getQuickReplyHeadsUpHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getQuickReplyHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private hasNoRounding()Z
    .locals 2

    .line 2898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCurrentBottomRoundness()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCurrentTopRoundness()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initDimens()V
    .locals 2

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703b5

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703b3

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightBeforeP:I

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703b2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703b4

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703ad

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f070390

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationAmbientHeight:I

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703ac

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703aa

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeP:I

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703a9

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v1, 0x7f0703ab

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .line 1521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1522
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    .line 1524
    const v1, 0x7f0703a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShiftNoIcon:I

    .line 1526
    nop

    .line 1527
    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    .line 1528
    nop

    .line 1529
    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowGroupBackgroundWhenExpanded:Z

    .line 1530
    return-void
.end method

.method private isColorized()Z
    .locals 1

    .line 2692
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsColorized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBgTint:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHeadsUpAllowed()Z
    .locals 1

    .line 2165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemChildExpanded()Z
    .locals 1

    .line 2238
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    return v0
.end method

.method private static isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .line 319
    nop

    .line 320
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 319
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 321
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 324
    .local v1, "isSystemNotification":Ljava/lang/Boolean;
    nop

    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    .line 324
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 327
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 328
    invoke-static {v3, v0, v2}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 332
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 330
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ExpandableNotifRow"

    const-string v4, "cacheIsSystemNotification: Could not find package info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v1
.end method

.method public static synthetic lambda$setAppOpsOnClickListener$0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;Landroid/view/View;)V
    .locals 3
    .param p1, "l"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;
    .param p2, "v"    # Landroid/view/View;

    .line 1555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getAppOpsMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    .line 1557
    .local v0, "menuItem":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;->onClick(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 1560
    :cond_0
    return-void
.end method

.method private onChildrenCountChanged()V
    .locals 3

    .line 2174
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2175
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 2176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2177
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 2180
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 2181
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 2182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 2183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 2184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenRoundness()V

    .line 2185
    return-void
.end method

.method private onExpansionChanged(ZZ)V
    .locals 3
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .line 2714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 2715
    .local v0, "nowExpanded":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 2716
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 2718
    :cond_1
    if-eq v0, p2, :cond_3

    .line 2719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 2720
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v1, :cond_2

    .line 2721
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    .line 2723
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_3

    .line 2724
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 2727
    :cond_3
    return-void
.end method

.method private setChildIsExpanding(Z)V
    .locals 0
    .param p1, "isExpanding"    # Z

    .line 1938
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 1939
    return-void
.end method

.method private setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 917
    if-eqz p2, :cond_2

    .line 918
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move p1, v0

    .line 919
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 920
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 921
    .local v1, "expandedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    .line 922
    .local v2, "headsUpChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 923
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 924
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 926
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    .end local v2    # "headsUpChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setChronometerRunningForChild(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .line 929
    if-eqz p2, :cond_0

    .line 930
    const v0, 0x10201fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 931
    .local v0, "chronometer":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    .line 932
    move-object v1, v0

    check-cast v1, Landroid/widget/Chronometer;

    invoke-virtual {v1, p1}, Landroid/widget/Chronometer;->setStarted(Z)V

    .line 935
    .end local v0    # "chronometer":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 381
    if-eqz p2, :cond_0

    .line 382
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, "expandedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    .line 385
    .local v2, "headsUpChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 386
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 387
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 389
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    .end local v2    # "headsUpChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .line 392
    if-eqz p2, :cond_0

    .line 393
    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 394
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 395
    const v1, 0x10203b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 397
    .local v1, "rightIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 399
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "rightIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "running"    # Z

    .line 402
    if-eqz p1, :cond_3

    .line 403
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 404
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 405
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 406
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p2, :cond_0

    .line 407
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 411
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_3

    .line 412
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 413
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-eqz p2, :cond_2

    .line 414
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 420
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :cond_3
    :goto_1
    return-void
.end method

.method private shouldShowPublic()Z
    .locals 1

    .line 2397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateChildAccessibilityImportance(Landroid/view/View;Z)V
    .locals 1
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "isEnabled"    # Z

    .line 1710
    if-eqz p2, :cond_0

    .line 1711
    const/4 v0, 0x0

    goto :goto_0

    .line 1712
    :cond_0
    const/4 v0, 0x4

    .line 1710
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1713
    return-void
.end method

.method private updateChildrenVisibility()V
    .locals 5

    .line 1811
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1812
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1813
    .local v0, "hideContentWhileLaunching":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1814
    nop

    .line 1813
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 1814
    nop

    .line 1813
    move v3, v1

    goto :goto_1

    .line 1814
    :cond_1
    nop

    .line 1813
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1815
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_3

    .line 1816
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 1817
    nop

    .line 1816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 1817
    goto :goto_2

    .line 1818
    :cond_2
    nop

    .line 1816
    move v1, v4

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setVisibility(I)V

    .line 1821
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    .line 1822
    return-void
.end method

.method private updateClickAndFocus()V
    .locals 4

    .line 984
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 985
    .local v0, "normalChild":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 986
    .local v1, "clickable":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isFocusable()Z

    move-result v2

    if-eq v2, v0, :cond_3

    .line 987
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFocusable(Z)V

    .line 989
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClickable()Z

    move-result v2

    if-eq v2, v1, :cond_4

    .line 990
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClickable(Z)V

    .line 992
    :cond_4
    return-void
.end method

.method private updateContentAccessibilityImportanceForGuts(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .line 1691
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildAccessibilityImportance(Landroid/view/View;Z)V

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1696
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildAccessibilityImportance(Landroid/view/View;Z)V

    .line 1695
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1700
    :cond_1
    if-eqz p1, :cond_2

    .line 1701
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestAccessibilityFocus()Z

    .line 1703
    :cond_2
    return-void
.end method

.method private updateContentShiftHeight()V
    .locals 4

    .line 2274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 2275
    .local v0, "notificationHeader":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 2276
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    .line 2277
    .local v1, "icon":Lcom/android/internal/widget/CachingIconView;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/widget/CachingIconView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    .line 2278
    .end local v1    # "icon":Lcom/android/internal/widget/CachingIconView;
    goto :goto_0

    .line 2279
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShiftNoIcon:I

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    .line 2281
    :goto_0
    return-void
.end method

.method private updateContentTransformation()V
    .locals 6

    .line 1374
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 1375
    return-void

    .line 1378
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1379
    .local v0, "translationY":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 1380
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    sub-float v1, v2, v1

    .line 1381
    .local v1, "contentAlpha":F
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v3, v1, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1382
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1383
    .end local v1    # "contentAlpha":F
    .local v2, "contentAlpha":F
    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 1385
    .end local v2    # "contentAlpha":F
    :cond_1
    nop

    .restart local v2    # "contentAlpha":F
    :goto_0
    move v1, v2

    .line 1387
    .end local v2    # "contentAlpha":F
    .restart local v1    # "contentAlpha":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1388
    .local v5, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1389
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setTranslationY(F)V

    .line 1387
    .end local v5    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1391
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_3

    .line 1392
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 1393
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setTranslationY(F)V

    .line 1396
    :cond_3
    return-void
.end method

.method private updateIconVisibilities()V
    .locals 5

    .line 1399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1402
    .local v0, "visible":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 1403
    .local v4, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setIconsVisible(Z)V

    .line 1402
    .end local v4    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1405
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v1, :cond_3

    .line 1406
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setIconsVisible(Z)V

    .line 1408
    :cond_3
    return-void
.end method

.method private updateLimits()V
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 544
    .local v3, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 543
    .end local v3    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_0
    return-void
.end method

.method private updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 9
    .param p1, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 549
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020426

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 551
    .local v0, "customView":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 552
    .local v4, "beforeN":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v6, 0x1c

    if-ge v5, v6, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 554
    .local v5, "beforeP":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-nez v6, :cond_4

    .line 555
    if-eqz v4, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    goto :goto_3

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightBeforeP:I

    :goto_3
    goto :goto_4

    .line 556
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne p1, v6, :cond_5

    .line 557
    iget v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    .local v6, "minHeight":I
    :goto_4
    goto :goto_5

    .line 559
    .end local v6    # "minHeight":I
    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    .line 561
    .restart local v6    # "minHeight":I
    :goto_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 562
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v1, :cond_6

    move v2, v3

    nop

    :cond_6
    move v1, v2

    .line 565
    .local v1, "headsUpCustom":Z
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    .line 566
    if-eqz v4, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    goto :goto_6

    :cond_7
    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightBeforeP:I

    :goto_6
    goto :goto_7

    .line 567
    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne p1, v2, :cond_9

    .line 568
    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .local v2, "headsUpheight":I
    :goto_7
    goto :goto_8

    .line 570
    .end local v2    # "headsUpheight":I
    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .line 572
    .restart local v2    # "headsUpheight":I
    :goto_8
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    .line 574
    .local v3, "headsUpWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v3, :cond_a

    .line 575
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getMinLayoutHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 577
    :cond_a
    iget v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    iget v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationAmbientHeight:I

    invoke-virtual {p1, v6, v2, v7, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeights(IIII)V

    .line 579
    return-void
.end method

.method private updateNotificationColor()V
    .locals 3

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    .line 1138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    .line 1139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v2

    .line 1137
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColor:I

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    .line 1141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    .line 1140
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColorAmbient:I

    .line 1142
    return-void
.end method

.method private updateRippleAllowed()V
    .locals 1

    .line 2105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2106
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2107
    .local v0, "allowed":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRippleAllowed(Z)V

    .line 2108
    return-void
.end method


# virtual methods
.method public addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 675
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 676
    return-void
.end method

.method public animateTranslateNotification(F)V
    .locals 1
    .param p1, "leftTarget"    # F

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1723
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1727
    :cond_1
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 1
    .param p2, "visualStabilityManager"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    .line 786
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 799
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 802
    :cond_0
    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 10
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 1857
    if-nez p1, :cond_0

    .line 1858
    return-void

    .line 1860
    :cond_0
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x32

    .line 1861
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result v1

    .line 1860
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1862
    .local v0, "zProgress":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getStartTranslationZ()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationLaunchHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 1865
    .local v1, "translationZ":F
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTranslationZ(F)V

    .line 1866
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOutlineRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    .line 1867
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    add-float/2addr v2, v3

    .line 1868
    .local v2, "extraWidthForClipping":F
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExtraWidthForClipping(F)V

    .line 1869
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTop()I

    move-result v3

    .line 1870
    .local v3, "top":I
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress()F

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1871
    .local v4, "interpolation":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getStartClipTopAmount()I

    move-result v6

    .line 1872
    .local v6, "startClipTopAmount":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_2

    .line 1873
    int-to-float v5, v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v7

    sub-float/2addr v5, v7

    float-to-int v3, v5

    .line 1874
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTranslationZ(F)V

    .line 1875
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getParentStartClipTopAmount()I

    move-result v5

    .line 1876
    .local v5, "parentStartClipTopAmount":I
    if-eqz v6, :cond_1

    .line 1877
    int-to-float v7, v5

    sub-int v8, v5, v6

    int-to-float v8, v8

    invoke-static {v7, v8, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    float-to-int v7, v7

    .line 1880
    .local v7, "clipTopAmount":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipTopAmount(I)V

    .line 1882
    .end local v7    # "clipTopAmount":I
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExtraWidthForClipping(F)V

    .line 1883
    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1884
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1883
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setMinimumHeightForClipping(I)V

    .line 1885
    .end local v5    # "parentStartClipTopAmount":I
    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    .line 1886
    int-to-float v7, v6

    invoke-static {v7, v5, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    .line 1887
    .local v5, "clipTopAmount":I
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipTopAmount(I)V

    .line 1889
    .end local v5    # "clipTopAmount":I
    :cond_3
    :goto_0
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTranslationY(F)V

    .line 1890
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getHeight()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    .line 1892
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 1893
    return-void
.end method

.method protected applyRoundness()V
    .locals 0

    .line 2874
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->applyRoundness()V

    .line 2875
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenRoundness()V

    .line 2876
    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    return v0
.end method

.method public areGutsExposed()Z
    .locals 1

    .line 2450
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canViewBeDismissed()Z
    .locals 1

    .line 2392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLock()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 2853
    instance-of v0, p1, Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 2854
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2855
    .local v0, "contentView":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClippingNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2856
    return v1

    .line 2857
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasNoRounding()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2858
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCurrentTopRoundness()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2859
    move v2, v1

    goto :goto_0

    .line 2858
    :cond_1
    nop

    .line 2859
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCurrentBottomRoundness()F

    move-result v5

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_2

    .line 2858
    move v4, v1

    goto :goto_1

    .line 2859
    :cond_2
    nop

    .line 2858
    :goto_1
    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2860
    return v1

    .line 2862
    .end local v0    # "contentView":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_3
    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-ne p1, v0, :cond_6

    .line 2863
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClippingNeeded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasNoRounding()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2864
    :cond_5
    return v1

    .line 2866
    :cond_6
    instance-of v0, p1, Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_7

    .line 2867
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasNoRounding()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 2869
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->childNeedsClipping(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public closeRemoteInput()V
    .locals 4

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1121
    .local v3, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->closeRemoteInput()V

    .line 1120
    .end local v3    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1123
    :cond_0
    return-void
.end method

.method public createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 3

    .line 1047
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 1050
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1052
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 2
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 2808
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationViewState:Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    .line 2809
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationViewState:Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    return-object v0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2697
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2698
    const/4 v0, 0x0

    return v0

    .line 2700
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2701
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2702
    .local v1, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    .line 2703
    .local v2, "header":Landroid/view/NotificationHeaderView;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    sub-float v4, v0, v4

    invoke-virtual {v2, v4, v1}, Landroid/view/NotificationHeaderView;->isInTouchRect(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2704
    return v3

    .line 2706
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2707
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->disallowSingleClick(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2708
    return v3

    .line 2710
    :cond_3
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public doLongClickCallback(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1618
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    .line 1620
    .local v0, "menuItem":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->doLongClickCallback(IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 1621
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3035
    const-string v0, "key=%s isAboveShelf=%s mOnKeyguard=%s mIsPinned=%s mHeadsupDisappearRunning=%s mIsHeadsUp=%s mAboveShelf=%s mExpandAnimationRunning=%s mChildIsExpanding=%s"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    .line 3038
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 3039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "T"

    goto :goto_1

    :cond_1
    const-string v3, "f"

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 3040
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v3, :cond_2

    const-string v3, "T"

    goto :goto_2

    :cond_2
    const-string v3, "f"

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 3041
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v3, :cond_3

    const-string v3, "T"

    goto :goto_3

    :cond_3
    const-string v3, "f"

    :goto_3
    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 3042
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v3, :cond_4

    const-string v3, "T"

    goto :goto_4

    :cond_4
    const-string v3, "f"

    :goto_4
    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 3043
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v3, :cond_5

    const-string v3, "T"

    goto :goto_5

    :cond_5
    const-string v3, "f"

    :goto_5
    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 3044
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelf:Z

    if-eqz v3, :cond_6

    const-string v3, "T"

    goto :goto_6

    :cond_6
    const-string v3, "f"

    :goto_6
    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 3045
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-eqz v3, :cond_7

    const-string v3, "T"

    goto :goto_7

    :cond_7
    const-string v3, "f"

    :goto_7
    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 3046
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-eqz v3, :cond_8

    const-string v3, "T"

    goto :goto_8

    :cond_8
    const-string v3, "f"

    :goto_8
    aput-object v3, v1, v2

    .line 3035
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    return-void
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 1

    .line 1716
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getActiveRemoteInputText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 1149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getAppOpsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnAppOpsClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getChildAfterViewWhenDismissed()Landroid/view/View;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method public getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 792
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 794
    .local v0, "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 796
    .end local v0    # "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .line 2558
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v0

    return v0

    .line 2561
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0
.end method

.method public getContentTranslation()F
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .line 2464
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2465
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0

    .line 2467
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    return-object v0
.end method

.method public getContractedNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 962
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 2886
    instance-of v0, p1, Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2887
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipPath(ZZ)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    .line 2890
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    .line 2891
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipPath(ZZ)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    .line 2894
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getExtraBottomPadding()I
    .locals 1

    .line 2489
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2490
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    return v0

    .line 2492
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupParentWhenDismissed()Landroid/view/View;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getHeaderVisibleAmount()F
    .locals 1

    .line 654
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    return v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .line 2679
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    .line 2680
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2681
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2682
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2683
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIncreasedPaddingAmount()F

    move-result v0

    return v0

    .line 2685
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2686
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2688
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 2134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    return v0

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 2139
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2140
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    return v0

    .line 2141
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    if-eqz v0, :cond_3

    .line 2142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0

    .line 2144
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isQuickReply()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getQuickReplyHeight()I

    move-result v0

    return v0

    .line 2147
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    if-eqz v0, :cond_6

    .line 2148
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 2149
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_b

    .line 2150
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_8

    goto :goto_0

    .line 2152
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2155
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2151
    :cond_a
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0

    .line 2157
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    return v0

    .line 2160
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getIsNonblockable()Z
    .locals 4

    .line 449
    const-class v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 450
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->isNonblockablePackage(Ljava/lang/String;)Z

    move-result v0

    .line 454
    .local v0, "isNonblockable":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSystemNotificationAsyncTask:Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$SystemNotificationAsyncTask;->cancel(Z)Z

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemNotification(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    .line 462
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    .line 465
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    const/4 v0, 0x1

    .line 470
    :cond_1
    return v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .line 2529
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v0

    return v0

    .line 2532
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 2533
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    return v1
.end method

.method public getMaxExpandHeight()I
    .locals 1

    .line 2434
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 2
    .param p1, "ignoreTemporaryStates"    # Z

    .line 2539
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isQuickReply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getQuickReplyHeight()I

    move-result v0

    return v0

    .line 2542
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2543
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 2544
    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 2545
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isTrackingHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2546
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0

    .line 2547
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2548
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight()I

    move-result v0

    return v0

    .line 2549
    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_4

    .line 2550
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeadsUpHeight()I

    move-result v0

    return v0

    .line 2552
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 2553
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    return v1
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNotificationColor()I
    .locals 1

    .line 1133
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColor:I

    return v0
.end method

.method public getNotificationColorAmbient()I
    .locals 1

    .line 1484
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColorAmbient:I

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationIcon()Landroid/view/View;
    .locals 2

    .line 1322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1323
    .local v0, "notificationHeader":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    return-object v1

    .line 1326
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNotificationInflater()Lcom/android/systemui/statusbar/notification/NotificationInflater;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    return-object v0
.end method

.method public getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method public getNumUniqueChannels()I
    .locals 9

    .line 2191
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2193
    .local v0, "channels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/NotificationChannel;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2197
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    .line 2198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 2199
    .local v1, "childrenRows":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2200
    .local v2, "numChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2201
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2202
    .local v4, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    .line 2203
    .local v5, "childChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 2204
    .local v6, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2205
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2206
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2200
    .end local v4    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "childChannel":Landroid/app/NotificationChannel;
    .end local v6    # "childSbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2210
    .end local v1    # "childrenRows":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v2    # "numChildren":I
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    return v1
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    .line 861
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0
.end method

.method public getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I
    .locals 1
    .param p1, "childRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2658
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2659
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2661
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method public getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getRelativeTopPadding(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1419
    const/4 v0, 0x0

    .line 1420
    .local v0, "topPadding":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Landroid/view/View;

    .line 1423
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 1424
    return v0

    .line 1427
    :cond_1
    return v0
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .line 2597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    return-object v0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 3
    .param p1, "leftTarget"    # F
    .param p2, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1772
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1775
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1777
    const/4 v0, 0x0

    return-object v0

    .line 1779
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1781
    .local v0, "translateAnim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_2

    .line 1782
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1784
    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1800
    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 1801
    return-object v0
.end method

.method public getTranslation()F
    .locals 2

    .line 1758
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShouldTranslateContents:Z

    if-nez v0, :cond_0

    .line 1759
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationX()F

    move-result v0

    return v0

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1764
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0

    .line 1767
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationWhenRemoved()F
    .locals 1

    .line 1230
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    return v0
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 2
    .param p1, "y"    # F

    .line 817
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 821
    .local v0, "view":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 818
    .end local v0    # "view":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    :goto_1
    return-object p0
.end method

.method public getViewState()Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;
    .locals 1

    .line 2813
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationViewState:Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    return-object v0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 949
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method protected handleSlideBack()Z
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    .line 744
    const/4 v0, 0x1

    return v0

    .line 746
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasExpandingChild()Z
    .locals 1

    .line 1943
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildIsExpanding:Z

    return v0
.end method

.method public hasLowPriorityStateUpdated()Z
    .locals 1

    .line 1449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLowPriorityStateUpdated:Z

    return v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    .line 1989
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public inflateGuts()V
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-nez v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1808
    :cond_0
    return-void
.end method

.method public isAboveShelf()Z
    .locals 1

    .line 2818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelf:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlockingHelperShowing()Z
    .locals 1

    .line 1314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsBlockingHelperShowing:Z

    return v0
.end method

.method public isChildInGroup()Z
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClearable()Z
    .locals 5

    .line 2116
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2119
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    .line 2120
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2121
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 2122
    .local v0, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2123
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2124
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2125
    return v1

    .line 2122
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2129
    .end local v0    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2117
    :cond_3
    :goto_1
    return v1
.end method

.method public isContentExpandable()Z
    .locals 2

    .line 2455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2456
    const/4 v0, 0x1

    return v0

    .line 2458
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 2459
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v1

    return v1
.end method

.method public isDimmable()Z
    .locals 1

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    return v0

    .line 539
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    .line 1199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    return v0
.end method

.method public isExpandAnimationRunning()Z
    .locals 1

    .line 1953
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    return v0
.end method

.method public isExpandable()Z
    .locals 2

    .line 1968
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1969
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    xor-int/2addr v0, v1

    return v0

    .line 1971
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEnableNonGroupedNotificationExpand:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExpanded()Z
    .locals 1

    .line 2228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    return v0
.end method

.method public isExpanded(Z)Z
    .locals 1
    .param p1, "allowOnKeyguard"    # Z

    .line 2232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 2233
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemChildExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2234
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2232
    :goto_0
    return v0
.end method

.method public isGroupExpanded()Z
    .locals 2

    .line 2170
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    return v0

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return v0
.end method

.method public isHeadsUp()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return v0
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 1

    .line 1260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    return v0
.end method

.method public isLock()Z
    .locals 1

    .line 3030
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLock:Z

    return v0
.end method

.method public isLowPriority()Z
    .locals 1

    .line 1453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 1

    .line 1153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    return v0
.end method

.method public isOnlyChildInGroup()Z
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 856
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 1212
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    return v0
.end method

.method public isShowingAmbient()Z
    .locals 1

    .line 2902
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    return v0
.end method

.method public isShowingIcon()Z
    .locals 2

    .line 1333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1334
    return v1

    .line 1336
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isSoundEffectsEnabled()Z
    .locals 4

    .line 1962
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDark:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    .line 1963
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1964
    .local v0, "mute":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isSoundEffectsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    .line 756
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    return v0
.end method

.method public isSystemExpanded()Z
    .locals 1

    .line 2062
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .line 1993
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .line 2042
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mForceUnlocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keepInParent()Z
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    return v0
.end method

.method public makeActionsVisibile()V
    .locals 3

    .line 2401
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 2402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2403
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2405
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2406
    return-void
.end method

.method public mustStayOnScreen()Z
    .locals 1

    .line 2382
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMustStayOnScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyHeightChanged(Z)V
    .locals 2
    .param p1, "needsAnimation"    # Z

    .line 2285
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->notifyHeightChanged(Z)V

    .line 2286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->requestSelectLayout(Z)V

    .line 2287
    return-void
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 7
    .param p1, "wasAppearing"    # Z

    .line 2472
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    .line 2473
    if-eqz p1, :cond_1

    .line 2476
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 2478
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2480
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 2481
    .local v6, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 2482
    invoke-virtual {v6, v3, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2480
    .end local v6    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2485
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1007
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAttachedToWindow()V

    .line 1008
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 1010
    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    .line 1370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 1371
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onConfigurationChanged()V

    .line 1101
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 5

    .line 1063
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onDensityOrFontScaleChanged()V

    .line 1064
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    .line 1065
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initBackground()V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1073
    .local v0, "oldGuts":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1074
    .local v2, "index":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 1075
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00f3

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1077
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1078
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    .line 1080
    .end local v0    # "oldGuts":Landroid/view/View;
    .end local v2    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    .line 1081
    .local v0, "oldMenu":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1082
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1083
    .local v2, "menuIndex":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 1084
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v3, p0, v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V

    .line 1085
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 1086
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    .line 1088
    .end local v2    # "menuIndex":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 1089
    .local v4, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->initView()V

    .line 1090
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->reInflateViews()V

    .line 1088
    .end local v4    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1092
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->onDensityOrFontScaleChanged()V

    .line 1093
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated()V

    .line 1094
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1014
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onDetachedFromWindow()V

    .line 1015
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 1016
    return-void
.end method

.method public onExpandedByGesture(Z)V
    .locals 3
    .param p1, "userExpanded"    # Z

    .line 2670
    const/16 v0, 0x199

    .line 2671
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2672
    const/16 v0, 0x19a

    .line 2674
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 2675
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 1565
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 1566
    const v0, 0x7f0a014b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1567
    const v0, 0x7f0a014a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1568
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1571
    .local v4, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 1572
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1570
    .end local v4    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1574
    :cond_0
    const v0, 0x7f0a02a6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1584
    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1600
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShouldTranslateContents:Z

    if-eqz v0, :cond_2

    .line 1602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 1603
    nop

    .local v2, "i":I
    :goto_1
    move v0, v2

    .end local v2    # "i":I
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1604
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 1607
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1611
    :cond_2
    return-void
.end method

.method public onFinishedExpansionChange()V
    .locals 1

    .line 2624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 2625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2626
    return-void
.end method

.method onGutsClosed()V
    .locals 1

    .line 1682
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentAccessibilityImportanceForGuts(Z)V

    .line 1683
    return-void
.end method

.method onGutsOpened()V
    .locals 1

    .line 1677
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    .line 1678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentAccessibilityImportanceForGuts(Z)V

    .line 1679
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2731
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2732
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2734
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2736
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    .line 2737
    .local v0, "expandable":Z
    const/4 v1, 0x0

    .line 2738
    .local v1, "isExpanded":Z
    if-nez v0, :cond_3

    .line 2739
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_2

    .line 2740
    const/4 v0, 0x1

    .line 2741
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2742
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    goto :goto_0

    .line 2745
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v0

    .line 2746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    .line 2749
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 2750
    if-eqz v1, :cond_4

    .line 2751
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 2753
    :cond_4
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2756
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    .line 2757
    .local v2, "provider":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    if-eqz v2, :cond_6

    .line 2758
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v3

    .line 2759
    .local v3, "snoozeMenu":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    if-eqz v3, :cond_6

    .line 2760
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x7f0a002d

    .line 2761
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110424

    .line 2762
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 2763
    .local v4, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2766
    .end local v3    # "snoozeMenu":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .end local v4    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1631
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1633
    const/4 v0, 0x1

    return v0

    .line 1635
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1651
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->doLongClickCallback()V

    .line 1653
    const/4 v0, 0x1

    return v0

    .line 1655
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1640
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1641
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1642
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performClick()Z

    .line 1644
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1646
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 2255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 2256
    .local v0, "intrinsicBefore":I
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 2257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2258
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2260
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2261
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onHeightUpdate()V

    .line 2263
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentShiftHeight()V

    .line 2264
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    if-eqz v1, :cond_2

    .line 2265
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;->onLayout()V

    .line 2267
    :cond_2
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 6

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 475
    .local v4, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 474
    .end local v4    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsColorized:Z

    .line 478
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotificationColor()V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 484
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onNotificationUpdated()V

    .line 488
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 494
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateRippleAllowed()V

    .line 501
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 108
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1021
    .local v0, "existed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 1024
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1025
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->useDefaultMenuItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1026
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuItems(Ljava/util/ArrayList;)V

    .line 1032
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 1033
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1035
    :cond_3
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 108
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1040
    .local v0, "existed":Z
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1041
    if-eqz v0, :cond_1

    .line 1042
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1044
    :cond_1
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1826
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1829
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1830
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1831
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1832
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1833
    const/4 v1, 0x1

    return v1

    .line 1835
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 2770
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2771
    return v1

    .line 2773
    :cond_0
    const/16 v0, 0x20

    if-eq p1, v0, :cond_6

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_5

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_5

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a002d

    if-eq p1, v0, :cond_1

    .line 2795
    const/4 v0, 0x0

    return v0

    .line 2785
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    .line 2786
    .local v0, "provider":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    if-nez v0, :cond_2

    .line 2787
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    .line 2789
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    .line 2790
    .local v2, "snoozeMenu":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    if-eqz v2, :cond_3

    .line 2791
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v3, v4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->doLongClickCallback(IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 2793
    :cond_3
    return v1

    .line 2775
    .end local v0    # "provider":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .end local v2    # "snoozeMenu":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performDismissWithBlockingHelper(Z)Z

    .line 2776
    return v1

    .line 2779
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2780
    return v1

    .line 2782
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->doLongClickCallback()V

    .line 2783
    return v1
.end method

.method public performDismiss(Z)V
    .locals 2
    .param p1, "fromAccessibility"    # Z

    .line 1292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnlyChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1294
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 1295
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performDismiss(Z)V

    .line 1301
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDismissed(Z)V

    .line 1302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1307
    :cond_1
    return-void
.end method

.method public performDismissWithBlockingHelper(Z)Z
    .locals 5
    .param p1, "fromAccessibility"    # Z

    .line 1279
    const-class v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 1280
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 1281
    .local v0, "manager":Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->perhapsShowBlockingHelper(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Z

    move-result v1

    .line 1283
    .local v1, "isBlockingHelperShown":Z
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    const-string v3, "notification_dismissed"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performDismiss(Z)V

    .line 1288
    return v1
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 805
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 808
    :cond_0
    return-void
.end method

.method public reinflateQuickReply(Z)V
    .locals 1
    .param p1, "showQuickReply"    # Z

    .line 3052
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getQuickReplyContractedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 3053
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getQuickReplyHeadsUpChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3054
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->reinflateQuickReply()V

    .line 3056
    :cond_1
    return-void
.end method

.method public removeAllChildren()V
    .locals 6

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 1158
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 1159
    .local v0, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1160
    .local v1, "clonedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1161
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1162
    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1163
    goto :goto_1

    .line 1165
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1166
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1160
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1168
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 1169
    return-void
.end method

.method public removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 683
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setBottomRoundness(FZ)Z

    .line 685
    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 2250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .line 2251
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 1537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onHeightReset()V

    .line 1538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestLayout()V

    .line 1539
    return-void
.end method

.method public resetTranslation()V
    .locals 4

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1663
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShouldTranslateContents:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1664
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTranslationX(F)V

    goto :goto_1

    .line 1665
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1666
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1667
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1669
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    .line 1670
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScrollX(I)V

    .line 1673
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 1674
    return-void
.end method

.method public resetUserExpansion()V
    .locals 2

    .line 2032
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 2033
    .local v0, "changed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 2034
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 2035
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 2036
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 2038
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 2039
    return-void
.end method

.method public setAboveShelf(Z)V
    .locals 3
    .param p1, "aboveShelf"    # Z

    .line 2906
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 2907
    .local v0, "wasAboveShelf":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelf:Z

    .line 2908
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2909
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    .line 2911
    :cond_0
    return-void
.end method

.method public setAboveShelfChangedListener(Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;)V
    .locals 0
    .param p1, "aboveShelfChangedListener"    # Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 523
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    .line 524
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 6
    .param p1, "height"    # I
    .param p2, "notifyListeners"    # Z

    .line 2497
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2498
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    .line 2499
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2504
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 2505
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 2508
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2509
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 2510
    return-void

    .line 2512
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2513
    .local v2, "contentHeight":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 2514
    .local v5, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeight(I)V

    .line 2513
    .end local v5    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2516
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_4

    .line 2517
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setActualHeight(I)V

    .line 2519
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_5

    .line 2520
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 2522
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2523
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onHeightUpdate()V

    .line 2525
    :cond_6
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeightAnimating(Z)V

    .line 353
    :cond_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .line 623
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 627
    :cond_0
    return-void
.end method

.method protected setAppOpsOnClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

    .line 1554
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableNotificationRow$-ffBYE9PVKSnfJECJygWoqM2POs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableNotificationRow$-ffBYE9PVKSnfJECJygWoqM2POs;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnAppOpsClickListener:Landroid/view/View$OnClickListener;

    .line 1561
    return-void
.end method

.method protected setBackgroundTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1112
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1114
    .local v0, "view":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setBackgroundTintColor(I)V

    .line 1117
    :cond_0
    return-void
.end method

.method public setBlockingHelperShowing(Z)V
    .locals 0
    .param p1, "isBlockingHelperShowing"    # Z

    .line 1310
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsBlockingHelperShowing:Z

    .line 1311
    return-void
.end method

.method protected setChildrenContainer(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V
    .locals 0
    .param p1, "childrenContainer"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2969
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2970
    return-void
.end method

.method public setChildrenExpanded(ZZ)V
    .locals 1
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .line 2409
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 2410
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setChildrenExpanded(Z)V

    .line 2413
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 2415
    return-void
.end method

.method public setChronometerRunning(Z)V
    .locals 3
    .param p1, "running"    # Z

    .line 903
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 908
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 909
    .local v0, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 910
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 911
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 909
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v0    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 4
    .param p1, "clipBottomAmount"    # I

    .line 2577
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 2578
    return-void

    .line 2580
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mClipBottomAmount:I

    if-eq p1, v0, :cond_2

    .line 2581
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipBottomAmount(I)V

    .line 2582
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2583
    .local v3, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBottomAmount(I)V

    .line 2582
    .end local v3    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2585
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_2

    .line 2586
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipBottomAmount(I)V

    .line 2589
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-nez v0, :cond_3

    .line 2592
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setClipBottomAmount(I)V

    .line 2594
    :cond_3
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 4
    .param p1, "clipToActualHeight"    # Z

    .line 1981
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    invoke-super {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToActualHeight(Z)V

    .line 1982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v2

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    nop

    :cond_3
    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipToActualHeight(Z)V

    .line 1983
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 4
    .param p1, "clipTopAmount"    # I

    .line 2566
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 2567
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2568
    .local v3, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 2567
    .end local v3    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2570
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    .line 2571
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 2573
    :cond_1
    return-void
.end method

.method public setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 1
    .param p1, "customBackgroundColor"    # I
    .param p2, "animate"    # Z
    .param p3, "notificationContentView"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 1106
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(IZ)V

    .line 1108
    :cond_0
    return-void
.end method

.method public setContentTransformationAmount(FZ)V
    .locals 4
    .param p1, "contentTransformationAmount"    # F
    .param p2, "isLastChild"    # Z

    .line 1349
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1350
    .local v0, "changeTransformation":Z
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    or-int/2addr v0, v1

    .line 1351
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    .line 1352
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    .line 1353
    if-eqz v0, :cond_2

    .line 1354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentTransformation()V

    .line 1356
    :cond_2
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 1840
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 1841
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDark:Z

    .line 1842
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    .line 1844
    const/4 p2, 0x0

    .line 1846
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1847
    .local v0, "showing":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v0, :cond_1

    .line 1848
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1850
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    .line 1851
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setDark(ZZJ)V

    .line 1853
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 1854
    return-void
.end method

.method public setDismissed(Z)V
    .locals 4
    .param p1, "fromAccessibility"    # Z

    .line 1182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;)V

    .line 1183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    .line 1184
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    .line 1185
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    .line 1186
    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDismissed()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1190
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 1191
    .local v0, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1192
    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 1193
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 1196
    .end local v0    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 5
    .param p1, "expandAnimationRunning"    # Z

    .line 1897
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .local v0, "contentView":Landroid/view/View;
    goto :goto_0

    .line 1900
    .end local v0    # "contentView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1902
    .restart local v0    # "contentView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1903
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1905
    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1906
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1907
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x43

    .line 1908
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1909
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1910
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 1911
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 1912
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationViewState:Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->cancelAnimations(Landroid/view/View;)V

    .line 1913
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getNotificationLaunchHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationLaunchHeight:I

    goto :goto_1

    .line 1915
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 1916
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 1917
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    .line 1918
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationGuts;->setAlpha(F)V

    .line 1920
    :cond_3
    if-eqz v0, :cond_4

    .line 1921
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1923
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExtraWidthForClipping(F)V

    .line 1924
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_5

    .line 1925
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExtraWidthForClipping(F)V

    .line 1926
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setMinimumHeightForClipping(I)V

    .line 1929
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_6

    .line 1930
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildIsExpanding(Z)V

    .line 1932
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 1933
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClipping()V

    .line 1934
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setExpandAnimationRunning(Z)V

    .line 1935
    return-void
.end method

.method public setExpandable(Z)V
    .locals 2
    .param p1, "expandable"    # Z

    .line 1975
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1977
    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    .param p2, "key"    # Ljava/lang/String;

    .line 2665
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    .line 2666
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 2667
    return-void
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0
    .param p1, "changing"    # Z

    .line 345
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 346
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 614
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 616
    return-void
.end method

.method public setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 999
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    .line 1000
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setGutsContent(Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;)V

    .line 1003
    :cond_0
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1
    .param p1, "headerVisibleAmount"    # F

    .line 642
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 643
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeaderVisibleAmount:F

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeaderVisibleAmount(F)V

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setHeaderVisibleAmount(F)V

    .line 648
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 650
    :cond_1
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 4
    .param p1, "isHeadsUp"    # Z

    .line 594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 595
    .local v0, "wasAboveShelf":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    .line 596
    .local v1, "intrinsicBefore":I
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 597
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUp(Z)V

    .line 598
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 603
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 605
    :cond_1
    if-eqz p1, :cond_2

    .line 606
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMustStayOnScreen:Z

    .line 607
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-eq v2, v0, :cond_3

    .line 609
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    .line 611
    :cond_3
    :goto_0
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 4
    .param p1, "headsUpAnimatingAway"    # Z

    .line 1238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 1239
    .local v0, "wasAboveShelf":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1240
    .local v1, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1241
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpAnimatingAway(Z)V

    .line 1242
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    if-eqz v2, :cond_1

    .line 1243
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1245
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 1246
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    .line 1248
    :cond_2
    return-void
.end method

.method public setHeadsUpAnimatingAwayListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1251
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpAnimatingAwayListener:Ljava/util/function/Consumer;

    .line 1252
    return-void
.end method

.method public setHeadsUpIsVisible()V
    .locals 1

    .line 659
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setHeadsUpIsVisible()V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMustStayOnScreen:Z

    .line 661
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 995
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 996
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 12
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    move-object v6, p0

    move v7, p2

    .line 2310
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2313
    return-void

    .line 2315
    :cond_0
    iget-boolean v8, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 2317
    .local v8, "oldShowingPublic":Z
    iget-boolean v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLock()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    move v0, v10

    :goto_0
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 2319
    iget-boolean v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v0, v8, :cond_3

    .line 2320
    return-void

    .line 2324
    :cond_3
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 2326
    :cond_4
    if-nez v7, :cond_7

    .line 2327
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2328
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2329
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 2330
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2331
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 2333
    :cond_5
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 2334
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 2335
    iget-object v0, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v1, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_6

    move v1, v10

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 2336
    invoke-direct {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    goto :goto_2

    .line 2338
    :cond_7
    iget-boolean v5, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    move-object v0, v6

    move-wide v1, p3

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJZ)V

    .line 2340
    :goto_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 2341
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 2342
    iget-object v1, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 2343
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 2344
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 2345
    iput-boolean v9, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 2346
    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 3
    .param p1, "hideSensitive"    # Z

    .line 2296
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    .line 2297
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2299
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 2300
    .local v0, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2301
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2302
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 2300
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2305
    .end local v0    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setIconAnimationRunning(Z)V
    .locals 5
    .param p1, "running"    # Z

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 365
    .local v4, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 364
    .end local v4    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 371
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 373
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 374
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 372
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_1

    .line 377
    .end local v0    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v2    # "i":I
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    .line 378
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 1
    .param p1, "iconsVisible"    # Z

    .line 1362
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    if-eq p1, v0, :cond_0

    .line 1363
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 1364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 1366
    :cond_0
    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 1471
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    .line 1472
    return-void
.end method

.method public setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4
    .param p1, "isChildInGroup"    # Z
    .param p2, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 708
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 709
    .local v0, "childInGroup":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    .line 710
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildIsExpanding(Z)V

    .line 711
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExtraWidthForClipping(F)V

    .line 712
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setMinimumHeightForClipping(I)V

    .line 714
    :cond_1
    if-eqz v0, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 715
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setIsChildInGroup(Z)V

    .line 716
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setIsChildInGroup(Z)V

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 719
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 720
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_3

    .line 721
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    .line 723
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDistanceToTopRoundness(F)V

    .line 724
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 726
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 727
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundClipping()V

    .line 728
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 2
    .param p1, "isLowPriority"    # Z

    .line 1435
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setIsLowPriority(Z)V

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setIsLowPriority(Z)V

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setIsLowPriority(Z)V

    .line 1441
    :cond_0
    return-void
.end method

.method public setJustClicked(Z)V
    .locals 0
    .param p1, "justClicked"    # Z

    .line 892
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    .line 893
    return-void
.end method

.method public setKeepInParent(Z)V
    .locals 0
    .param p1, "keepInParent"    # Z

    .line 1207
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    .line 1208
    return-void
.end method

.method public setLayoutListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .line 2246
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .line 2247
    return-void
.end method

.method public setLegacy(Z)V
    .locals 4
    .param p1, "legacy"    # Z

    .line 2601
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2602
    .local v3, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setLegacy(Z)V

    .line 2601
    .end local v3    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2604
    :cond_0
    return-void
.end method

.method public setLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .line 3026
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLock:Z

    .line 3027
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;)V
    .locals 0
    .param p1, "longPressListener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    .line 973
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    .line 974
    return-void
.end method

.method public setLowPriorityStateUpdated(Z)V
    .locals 0
    .param p1, "lowPriorityStateUpdated"    # Z

    .line 1445
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLowPriorityStateUpdated:Z

    .line 1446
    return-void
.end method

.method public setNeedsRedaction(Z)V
    .locals 1
    .param p1, "needsRedaction"    # Z

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setRedactAmbient(Z)V

    .line 1476
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 978
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 980
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 981
    return-void
.end method

.method public setOnDismissRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onDismissRunnable"    # Ljava/lang/Runnable;

    .line 1318
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    .line 1319
    return-void
.end method

.method public setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V
    .locals 0
    .param p1, "onExpandClickListener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    .line 969
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    .line 970
    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 4
    .param p1, "onKeyguard"    # Z

    .line 2086
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eq p1, v0, :cond_2

    .line 2087
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    .line 2088
    .local v0, "wasAboveShelf":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    .line 2089
    .local v1, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 2090
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 2091
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 2092
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    .line 2093
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 2095
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2097
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2098
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    .line 2101
    .end local v0    # "wasAboveShelf":Z
    .end local v1    # "wasExpanded":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateRippleAllowed()V

    .line 2102
    return-void
.end method

.method public setPinned(Z)V
    .locals 4
    .param p1, "pinned"    # Z

    .line 836
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 837
    .local v0, "intrinsicHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    .line 838
    .local v1, "wasAboveShelf":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 840
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 842
    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 843
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 844
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    goto :goto_0

    .line 845
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v3, :cond_2

    .line 846
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 848
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 849
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-eq v2, v1, :cond_3

    .line 850
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelfChangedListener:Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;

    xor-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;->onAboveShelfStateChanged(Z)V

    .line 852
    :cond_3
    return-void
.end method

.method protected setPrivateLayout(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 0
    .param p1, "privateLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2974
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2975
    return-void
.end method

.method protected setPublicLayout(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 0
    .param p1, "publicLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2979
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 2980
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 620
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1468
    return-void
.end method

.method public setRemoved()V
    .locals 2

    .line 1216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    .line 1217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 1218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    .line 1219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoved()V

    .line 1223
    return-void
.end method

.method public setSecureStateProvider(Ljava/util/function/BooleanSupplier;)V
    .locals 0
    .param p1, "secureStateProvider"    # Ljava/util/function/BooleanSupplier;

    .line 531
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecureStateProvider:Ljava/util/function/BooleanSupplier;

    .line 532
    return-void
.end method

.method public setSensitive(ZZ)V
    .locals 0
    .param p1, "sensitive"    # Z
    .param p2, "hideSensitive"    # Z

    .line 2290
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 2291
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    .line 2292
    return-void
.end method

.method public setShowAmbient(Z)V
    .locals 1
    .param p1, "showAmbient"    # Z

    .line 2824
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    if-eq p1, v0, :cond_1

    .line 2825
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    .line 2826
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 2827
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->notifyShowAmbientChanged()V

    .line 2829
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2831
    :cond_1
    return-void
.end method

.method public setShowQuickReply(Z)V
    .locals 1
    .param p1, "showQuickReply"    # Z

    .line 3059
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setQuickReply(Z)V

    .line 3060
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1
    .param p1, "indention"    # I

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setSingleLineWidthIndention(I)V

    .line 1130
    return-void
.end method

.method public setSystemChildExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .line 2242
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    .line 2243
    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .line 2071
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v0, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 2073
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 2074
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2075
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 2076
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 2077
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 2080
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setTranslation(F)V
    .locals 2
    .param p1, "translationX"    # F

    .line 1731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    return-void

    .line 1735
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShouldTranslateContents:Z

    if-nez v0, :cond_1

    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTranslationX(F)V

    goto :goto_1

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1740
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1741
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1739
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1744
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    .line 1749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScrollX(I)V

    .line 1751
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTranslationUpdate(F)V

    .line 1754
    :cond_5
    return-void
.end method

.method public setUseIncreasedCollapsedHeight(Z)V
    .locals 1
    .param p1, "use"    # Z

    .line 1457
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setUsesIncreasedHeight(Z)V

    .line 1459
    return-void
.end method

.method public setUseIncreasedHeadsUpHeight(Z)V
    .locals 1
    .param p1, "use"    # Z

    .line 1462
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setUsesIncreasedHeadsUpHeight(Z)V

    .line 1464
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 1
    .param p1, "userExpanded"    # Z

    .line 2002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 2003
    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 4
    .param p1, "userExpanded"    # Z
    .param p2, "allowChildExpansion"    # Z

    .line 2012
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->setNotificationExpanded()V

    .line 2013
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublic()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2014
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 2016
    .local v0, "wasExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2017
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 2018
    return-void

    .line 2020
    .end local v0    # "wasExpanded":Z
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-nez v0, :cond_1

    return-void

    .line 2021
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 2022
    .restart local v0    # "wasExpanded":Z
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 2023
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 2024
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 2025
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2026
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2027
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2029
    :cond_2
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 1
    .param p1, "userLocked"    # Z

    .line 2046
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 2047
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setUserExpanding(Z)V

    .line 2050
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 2052
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2053
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2056
    :cond_1
    return-void
.end method

.method protected shouldClipToActualHeight()Z
    .locals 1

    .line 1948
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldClipToActualHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildIsExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .line 751
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

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

.method public shouldRefocusOnDismiss()Z
    .locals 1

    .line 2799
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAccessibilityFocused()Z

    move-result v0

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

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1542
    .local p1, "activeOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1546
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1547
    return-void
.end method

.method public startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 1
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 811
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 814
    :cond_0
    return-void
.end method

.method public topAmountNeedsClipping()Z
    .locals 4

    .line 2835
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2836
    return v1

    .line 2838
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2839
    return v1

    .line 2841
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2843
    return v1

    .line 2845
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    .line 2846
    return v1

    .line 2848
    :cond_3
    return v2
.end method

.method public updateBackgroundForGroupState()V
    .locals 4

    .line 2632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2634
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowGroupBackgroundWhenExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2636
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderForExpansion(Z)V

    .line 2637
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 2638
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2639
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2638
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 2641
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v2    # "i":I
    :cond_1
    goto :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2642
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColorForExpansionState()I

    move-result v0

    .line 2645
    .local v0, "childColor":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2646
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2647
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v1

    .line 2648
    .local v3, "showBackground":Z
    :goto_3
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2649
    .end local v0    # "childColor":I
    .end local v3    # "showBackground":Z
    goto :goto_5

    .line 2651
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2653
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutline()V

    .line 2654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 2655
    return-void
.end method

.method protected updateBackgroundTint()V
    .locals 3

    .line 2608
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 2609
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2610
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2612
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 2613
    .local v0, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2614
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2615
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2613
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2618
    .end local v0    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    .line 2214
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    .line 2217
    :cond_0
    return-void
.end method

.method public updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 423
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 424
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->cacheIsSystemNotification()V

    .line 428
    return-void
.end method

.method updateShelfIconColor()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 506
    .local v0, "expandedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v2, 0x7f0a01aa

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 507
    .local v1, "isPreL":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    .line 508
    invoke-static {v4}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v4

    .line 507
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 509
    .local v4, "colorize":Z
    :goto_1
    const/4 v5, 0x0

    .line 510
    .local v5, "color":I
    if-eqz v4, :cond_4

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v6

    .line 512
    .local v6, "header":Landroid/view/NotificationHeaderView;
    if-eqz v6, :cond_2

    .line 513
    invoke-virtual {v6}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v5

    goto :goto_3

    .line 515
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 516
    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v3

    .line 515
    invoke-virtual {v7, v8, v2, v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContrastedColor(Landroid/content/Context;ZI)I

    move-result v5

    .line 519
    .end local v6    # "header":Landroid/view/NotificationHeaderView;
    :cond_4
    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 520
    return-void
.end method

.method public wasChildInGroupWhenRemoved()Z
    .locals 1

    .line 1226
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    return v0
.end method

.method public wasJustClicked()Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    return v0
.end method

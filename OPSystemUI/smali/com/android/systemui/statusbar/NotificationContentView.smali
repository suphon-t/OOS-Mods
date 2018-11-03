.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# instance fields
.field private mAmbientChild:Landroid/view/View;

.field private mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mAnimate:Z

.field private mAnimationStartVisibleType:I

.field private mBeforeN:Z

.field private mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mClipBottomAmount:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipToActualHeight:Z

.field private mClipTopAmount:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mContentHeight:I

.field private mContentHeightAtAnimationStart:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mDark:Z

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private mExpandedVisibleListener:Ljava/lang/Runnable;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mFocusOnVisibilityChange:Z

.field private mForceSelectNextLayout:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChild:Landroid/view/View;

.field private mHeadsUpHeight:I

.field private mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIconsVisible:Z

.field private mIsChildInGroup:Z

.field private mIsContentExpandable:Z

.field private mIsHeadsUp:Z

.field private mIsLowPriority:Z

.field private mIsQuickReply:Z

.field private mLegacy:Z

.field private mMinContractedHeight:I

.field private mNotificationAmbientHeight:I

.field private mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field private mQuickReplyChild:Landroid/view/View;

.field private mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mQuickReplyHeadsUpChild:Landroid/view/View;

.field private mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mQuickReplyHeight:I

.field private mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mRemoteInputVisible:Z

.field private mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mSingleLineWidthIndention:I

.field private mSmallHeight:I

.field private mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTransformationStartVisibleType:I

.field private mUnrestrictedContentHeight:I

.field private mUserExpanding:Z

.field private mVisibleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 121
    new-instance v1, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 146
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 149
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 155
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 166
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 172
    const-class v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 173
    const-class v0, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->initView()V

    .line 175
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationContentView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    return p1
.end method

.method private animateToVisibleType(I)V
    .locals 4
    .param p1, "visibleType"    # I

    .line 1070
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 1071
    .local v0, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 1072
    .local v1, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1076
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 1077
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    new-instance v2, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 1088
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1089
    return-void

    .line 1073
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 1074
    return-void
.end method

.method private applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "hasRemoteInput"    # Z
    .param p4, "existingPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "cachedView"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .param p6, "wrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 1453
    const v0, 0x102018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1455
    .local v0, "actionContainerCandidate":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 1456
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 1457
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1459
    .local v1, "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 1463
    :cond_0
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 1464
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1465
    .local v2, "actionContainer":Landroid/view/ViewGroup;
    if-nez p5, :cond_1

    .line 1466
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-static {v3, v2, p2, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v3

    .line 1469
    .local v3, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 1470
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    move-object v1, v3

    .line 1475
    .end local v3    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    goto :goto_0

    .line 1476
    :cond_1
    invoke-virtual {v2, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1477
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1478
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestFocus()Z

    .line 1479
    move-object v1, p5

    .line 1482
    .end local v2    # "actionContainer":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    if-eqz p3, :cond_7

    .line 1483
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    .line 1484
    .local v2, "color":I
    if-nez v2, :cond_3

    .line 1485
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f060183

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1487
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f060434

    .line 1488
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v5, 0x7f060431

    .line 1489
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 1487
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextBackgroundColor(III)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundColor(I)V

    .line 1491
    invoke-virtual {v1, p6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    .line 1492
    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 1494
    if-nez p4, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1497
    :cond_4
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1498
    .local v3, "actions":[Landroid/app/Notification$Action;
    if-eqz p4, :cond_5

    .line 1499
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 1501
    :cond_5
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1502
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1503
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    goto :goto_1

    .line 1506
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1507
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1512
    .end local v2    # "color":I
    .end local v3    # "actions":[Landroid/app/Notification$Action;
    :cond_7
    :goto_1
    return-object v1

    .line 1514
    .end local v1    # "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "hasRemoteInput"    # Z

    .line 1420
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1421
    .local v7, "bigContentView":Landroid/view/View;
    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 1422
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_0

    .line 1426
    :cond_0
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1428
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_1

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1433
    :cond_1
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1435
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 1436
    .local v9, "headsUpContentView":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1437
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_1

    .line 1440
    :cond_2
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1442
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_3

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1447
    :cond_3
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1448
    return-void
.end method

.method private applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 19
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p0

    .line 1380
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v2, :cond_0

    .line 1381
    return-void

    .line 1384
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->isEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 1385
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->requiresTargetingP()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1388
    .local v2, "enableSmartReplies":Z
    :goto_0
    const/4 v5, 0x0

    .line 1389
    .local v5, "hasRemoteInput":Z
    const/4 v6, 0x0

    .line 1390
    .local v6, "remoteInputWithChoices":Landroid/app/RemoteInput;
    const/4 v7, 0x0

    .line 1392
    .local v7, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1393
    .local v8, "actions":[Landroid/app/Notification$Action;
    if-eqz v8, :cond_a

    .line 1394
    array-length v9, v8

    move-object v10, v7

    move-object v7, v6

    move v6, v5

    const/4 v5, 0x0

    .end local v5    # "hasRemoteInput":Z
    .local v6, "hasRemoteInput":Z
    .local v7, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v10, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :goto_1
    if-ge v5, v9, :cond_9

    aget-object v11, v8, v5

    .line 1395
    .local v11, "a":Landroid/app/Notification$Action;
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 1396
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    array-length v13, v12

    move-object v14, v10

    move-object v10, v7

    move v7, v6

    const/4 v6, 0x0

    .end local v6    # "hasRemoteInput":Z
    .local v7, "hasRemoteInput":Z
    .local v10, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v14, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :goto_2
    if-ge v6, v13, :cond_7

    aget-object v15, v12, v6

    .line 1397
    .local v15, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v16

    .line 1398
    .local v16, "showRemoteInputView":Z
    if-eqz v2, :cond_3

    invoke-virtual {v15}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 1399
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 1400
    .local v3, "showSmartReplyView":Z
    :goto_3
    if-eqz v16, :cond_4

    .line 1401
    const/4 v7, 0x1

    .line 1403
    :cond_4
    if-eqz v3, :cond_5

    .line 1404
    move-object v10, v15

    .line 1405
    iget-object v14, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1407
    :cond_5
    if-nez v16, :cond_7

    if-eqz v3, :cond_6

    .line 1408
    goto :goto_4

    .line 1396
    .end local v3    # "showSmartReplyView":Z
    .end local v15    # "ri":Landroid/app/RemoteInput;
    .end local v16    # "showRemoteInputView":Z
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1394
    .end local v11    # "a":Landroid/app/Notification$Action;
    :cond_7
    :goto_4
    move v6, v7

    move-object v7, v10

    move-object v10, v14

    .end local v14    # "pendingIntentWithChoices":Landroid/app/PendingIntent;
    .restart local v6    # "hasRemoteInput":Z
    .local v7, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v10, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1415
    :cond_9
    move v5, v6

    move-object v6, v7

    move-object v7, v10

    .end local v10    # "pendingIntentWithChoices":Landroid/app/PendingIntent;
    .restart local v5    # "hasRemoteInput":Z
    .local v6, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v7, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :cond_a
    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 1416
    invoke-direct {v0, v6, v7, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->applySmartReplyView(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1417
    return-void
.end method

.method private applySmartReplyView(Landroid/view/View;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v0, p0

    .line 1532
    move-object/from16 v7, p4

    const v1, 0x1020406

    move-object/from16 v8, p1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1534
    .local v9, "smartReplyContainerCandidate":Landroid/view/View;
    instance-of v1, v9, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1535
    return-object v2

    .line 1537
    :cond_0
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1538
    .local v10, "smartReplyContainer":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    if-eqz p2, :cond_7

    if-nez p3, :cond_1

    goto :goto_2

    .line 1543
    :cond_1
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.remoteInputSpinner"

    .line 1544
    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1545
    .local v12, "showingSpinner":Z
    if-eqz v12, :cond_2

    .line 1546
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1547
    return-object v2

    .line 1550
    :cond_2
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.hideSmartReplies"

    .line 1551
    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1552
    .local v13, "hideSmartReplies":Z
    if-eqz v13, :cond_3

    .line 1553
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1554
    return-object v2

    .line 1556
    :cond_3
    const/4 v1, 0x0

    .line 1557
    .local v1, "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1558
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v1

    .line 1559
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1566
    .end local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .local v14, "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_4
    :goto_0
    move-object v14, v1

    goto :goto_1

    .line 1560
    .end local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .restart local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_5
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1561
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1562
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v3, :cond_4

    .line 1563
    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .end local v2    # "child":Landroid/view/View;
    goto :goto_0

    .line 1566
    .end local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .restart local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :goto_1
    if-eqz v14, :cond_6

    .line 1567
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v7

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setRepliesFromRemoteInput(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 1569
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1571
    :cond_6
    return-object v14

    .line 1539
    .end local v12    # "showingSpinner":Z
    .end local v13    # "hideSmartReplies":Z
    .end local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_7
    :goto_2
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1540
    return-object v2
.end method

.method private applySmartReplyView(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "remoteInput"    # Landroid/app/RemoteInput;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1521
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationContentView;->applySmartReplyView(Landroid/view/View;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 1522
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1523
    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->smartRepliesAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V

    .line 1527
    :cond_0
    return-void
.end method

.method private calculateTransformationAmount()F
    .locals 8

    .line 802
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    .line 803
    .local v0, "startHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 804
    .local v1, "endHeight":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 805
    .local v2, "progress":I
    sub-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 806
    .local v3, "totalDistance":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    .line 807
    const-string v5, "NotificationContentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the total transformation distance is 0\n StartType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n VisibleType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n mContentHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return v4

    .line 813
    :cond_0
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 814
    .local v5, "amount":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private fireExpandedVisibleListenerIfVisible()V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 982
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 984
    .local v0, "listener":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 985
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 987
    .end local v0    # "listener":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private focusExpandButtonIfNecessary()V
    .locals 2

    .line 646
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 648
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v1

    .line 650
    .local v1, "expandButton":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v1}, Landroid/widget/ImageView;->requestAccessibilityFocus()Z

    .line 654
    .end local v1    # "expandButton":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 656
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    return-void
.end method

.method private forceUpdateVisibilities()V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 964
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 974
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 977
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 978
    return-void
.end method

.method private forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 990
    if-nez p2, :cond_0

    .line 991
    return-void

    .line 993
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 995
    .local v0, "visible":Z
    :goto_1
    if-nez v0, :cond_3

    .line 996
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 998
    :cond_3
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 1000
    :goto_2
    return-void
.end method

.method private getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I
    .locals 2
    .param p1, "remoteInput"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 348
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 352
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getMinContentHeightHint()I
    .locals 6

    .line 688
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    const v1, 0x1050125

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 695
    nop

    .line 696
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 697
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    .line 698
    .local v0, "transitioningBetweenHunAndExpanded":Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 700
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    .line 701
    .local v5, "pinned":Z
    :goto_2
    if-nez v0, :cond_5

    if-eqz v5, :cond_6

    .line 702
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 703
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v2

    .line 702
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 708
    .end local v0    # "transitioningBetweenHunAndExpanded":Z
    .end local v5    # "pinned":Z
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 710
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 714
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "hint":I
    :goto_3
    goto :goto_4

    .line 716
    .end local v0    # "hint":I
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    goto :goto_3

    .line 720
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 721
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 722
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 723
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 725
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 726
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 727
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 728
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 730
    :cond_d
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    .line 731
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 735
    .restart local v0    # "hint":I
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_e

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 736
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 738
    :cond_e
    return v0
.end method

.method private getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1856
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0

    .line 1861
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1
    .param p1, "visibleType"    # I

    .line 1109
    packed-switch p1, :pswitch_data_0

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1124
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1122
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1119
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1117
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1115
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1113
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1111
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .locals 1
    .param p1, "visibleType"    # I

    .line 1136
    packed-switch p1, :pswitch_data_0

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0

    .line 1151
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 1149
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    return-object v0

    .line 1146
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1144
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0

    .line 1142
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1140
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 1138
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewHeight(I)I
    .locals 4
    .param p1, "visibleType"    # I

    .line 839
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    .line 840
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 841
    .local v1, "height":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 842
    .local v2, "viewWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_0

    .line 843
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getHeaderTranslation()I

    move-result v3

    add-int/2addr v1, v3

    .line 845
    :cond_0
    return v1
.end method

.method private getVisualTypeForHeight(F)I
    .locals 4
    .param p1, "viewHeight"    # F

    .line 1227
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1228
    .local v0, "noExpandedChild":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 1229
    return v2

    .line 1231
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1232
    const/4 v1, 0x3

    return v1

    .line 1235
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1236
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1237
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-lez v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1240
    :cond_4
    return v2

    .line 1238
    :cond_5
    :goto_1
    return v1

    .line 1243
    :cond_6
    if-nez v0, :cond_8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_8

    .line 1244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1245
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    .line 1248
    :cond_7
    return v2

    .line 1246
    :cond_8
    :goto_2
    return v1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 489
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private isGroupExpanded()Z
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private isTransitioningFromTo(II)Z
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 742
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v0, p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVisibleOrTransitioning(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 747
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v0, p1, :cond_0

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

.method private selectLayout(ZZ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 920
    return-void

    .line 922
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_1

    .line 923
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContentTransformation()V

    goto/16 :goto_2

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 926
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 927
    .local v1, "changedType":Z
    :goto_0
    if-nez v1, :cond_3

    if-eqz p2, :cond_e

    .line 928
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    .line 929
    .local v4, "visibleView":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 930
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 931
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->transferRemoteInputFocus(I)V

    .line 934
    :cond_4
    if-eqz p1, :cond_b

    if-ne v0, v3, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v2, :cond_a

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v2, :cond_a

    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v2, :cond_a

    :cond_7
    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-nez v2, :cond_a

    :cond_8
    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-nez v2, :cond_a

    :cond_9
    if-nez v0, :cond_b

    .line 942
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->animateToVisibleType(I)V

    goto :goto_1

    .line 944
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 946
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 947
    if-eqz v1, :cond_c

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->focusExpandButtonIfNecessary()V

    .line 950
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 951
    .local v2, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_d

    .line 952
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 953
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v5

    .line 952
    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 955
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 958
    .end local v0    # "visibleType":I
    .end local v1    # "changedType":Z
    .end local v2    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v4    # "visibleView":Landroid/view/View;
    :cond_e
    :goto_2
    return-void
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 632
    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    .line 643
    :goto_0
    return-void
.end method

.method private shouldClipToRounding(IZZ)Z
    .locals 2
    .param p1, "visibleType"    # I
    .param p2, "topRounded"    # Z
    .param p3, "bottomRounded"    # Z

    .line 1811
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1812
    .local v0, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-nez v0, :cond_0

    .line 1813
    const/4 v1, 0x0

    return v1

    .line 1815
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result v1

    return v1
.end method

.method private shouldContractedBeFixedSize()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private transferRemoteInputFocus(I)V
    .locals 2
    .param p1, "visibleType"    # I

    .line 1092
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1094
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 1097
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1099
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 1102
    :cond_1
    return-void
.end method

.method private updateAllSingleLineViews()V
    .locals 0

    .line 1346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    .line 1347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAmbientSingleLineView()V

    .line 1348
    return-void
.end method

.method private updateAmbientSingleLineView()V
    .locals 5

    .line 1365
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_2

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1367
    .local v0, "isNewView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1368
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1367
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1369
    if-eqz v0, :cond_1

    .line 1370
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1373
    .end local v0    # "isNewView":Z
    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_3

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1377
    :cond_3
    :goto_1
    return-void
.end method

.method private updateBackgroundTransformation(F)V
    .locals 4
    .param p1, "transformationAmount"    # F

    .line 785
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 786
    .local v0, "endColor":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    .line 787
    .local v1, "startColor":I
    if-eq v0, v1, :cond_2

    .line 788
    if-nez v1, :cond_0

    .line 789
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v1

    .line 791
    :cond_0
    if-nez v0, :cond_1

    .line 792
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 794
    :cond_1
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 797
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundAlpha(F)V

    .line 798
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 799
    return-void
.end method

.method private updateClipping()V
    .locals 5

    .line 902
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    .line 903
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 904
    .local v0, "top":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 905
    .local v1, "bottom":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 906
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 907
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 908
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    goto :goto_0

    .line 909
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 911
    :goto_0
    return-void
.end method

.method private updateContentTransformation()V
    .locals 6

    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 753
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 755
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 756
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 757
    .local v1, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v3

    .line 759
    .local v3, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 760
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 761
    invoke-interface {v3, v1, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 762
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 763
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 765
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v3    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v1, :cond_1

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibilities()V

    .line 768
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 770
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 771
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 772
    .restart local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v2

    .line 774
    .local v2, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateTransformationAmount()F

    move-result v3

    .line 775
    .local v3, "transformationAmount":F
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 776
    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 777
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundTransformation(F)V

    .line 778
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v2    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v3    # "transformationAmount":F
    goto :goto_0

    .line 779
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 780
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 782
    :goto_0
    return-void
.end method

.method private updateContractedHeaderWidth()Z
    .locals 10

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 359
    .local v0, "contractedHeader":Landroid/view/NotificationHeaderView;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 361
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    .line 363
    .local v2, "expandedHeader":Landroid/view/NotificationHeaderView;
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v4

    .line 364
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    .line 365
    .local v4, "expandedSize":I
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    .line 366
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v5, v6

    .line 367
    .local v5, "collapsedSize":I
    if-eq v4, v5, :cond_2

    .line 368
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v4

    .line 369
    .local v1, "paddingEnd":I
    nop

    .line 370
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    nop

    .line 373
    move v6, v1

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v6

    .line 373
    :goto_0
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v7

    .line 374
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v8

    goto :goto_1

    .line 376
    :cond_1
    nop

    .line 377
    move v8, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v9

    .line 369
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 378
    invoke-virtual {v0, v3}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 379
    return v3

    .line 381
    .end local v1    # "paddingEnd":I
    .end local v2    # "expandedHeader":Landroid/view/NotificationHeaderView;
    .end local v4    # "expandedSize":I
    .end local v5    # "collapsedSize":I
    :cond_2
    goto :goto_4

    .line 382
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 383
    .local v2, "paddingEnd":I
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 384
    nop

    .line 385
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    nop

    .line 388
    move v4, v2

    goto :goto_2

    .line 387
    :cond_4
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    .line 388
    :goto_2
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v5

    .line 389
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 390
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v6

    goto :goto_3

    .line 391
    :cond_5
    nop

    .line 392
    move v6, v2

    :goto_3
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    .line 384
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 393
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 394
    return v3

    .line 398
    .end local v2    # "paddingEnd":I
    :cond_6
    :goto_4
    return v1
.end method

.method private updateIconVisibilities()V
    .locals 3

    .line 1740
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1742
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1743
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1746
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1748
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_1

    .line 1749
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1752
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1754
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_2

    .line 1755
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1758
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_2
    return-void
.end method

.method private updateLegacy()V
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1298
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1302
    :cond_4
    return-void
.end method

.method private updateSingleLineView()V
    .locals 5

    .line 1350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1352
    .local v0, "isNewView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1353
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1352
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1354
    if-eqz v0, :cond_1

    .line 1355
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1358
    .end local v0    # "isNewView":Z
    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_3

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1362
    :cond_3
    :goto_1
    return-void
.end method

.method private updateViewVisibilities(I)V
    .locals 3
    .param p1, "visibleType"    # I

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x6

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x7

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 1060
    return-void
.end method

.method private updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "visibleType"    # I
    .param p2, "type"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 1064
    if-eqz p3, :cond_1

    .line 1065
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 1067
    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    .line 623
    return-void
.end method


# virtual methods
.method public calculateVisibleType()I
    .locals 4

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1185
    const/4 v0, 0x5

    return v0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1187
    const/4 v0, 0x4

    return v0

    .line 1189
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1193
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    if-eqz v0, :cond_4

    .line 1194
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1195
    const/4 v0, 0x7

    return v0

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1197
    const/4 v0, 0x6

    return v0

    .line 1201
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_a

    .line 1203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_6

    .line 1202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x1

    .line 1203
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 1205
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    goto :goto_1

    .line 1204
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v0

    .line 1205
    :goto_1
    nop

    .line 1206
    .local v0, "height":I
    if-nez v0, :cond_7

    .line 1207
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1209
    :cond_7
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    .line 1210
    .local v1, "expandedVisualType":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1211
    const/4 v2, 0x3

    goto :goto_2

    .line 1212
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v2

    .line 1213
    .local v2, "collapsedVisualType":I
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v3, v2, :cond_9

    .line 1214
    nop

    .line 1213
    move v3, v1

    goto :goto_3

    .line 1215
    :cond_9
    nop

    .line 1213
    move v3, v2

    :goto_3
    return v3

    .line 1217
    .end local v0    # "height":I
    .end local v1    # "expandedVisualType":I
    .end local v2    # "collapsedVisualType":I
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 1218
    .local v0, "intrinsicHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1219
    .local v1, "viewHeight":I
    if-eqz v0, :cond_b

    .line 1221
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1223
    :cond_b
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v2

    return v2
.end method

.method public closeRemoteInput()V
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1581
    :cond_1
    return-void
.end method

.method public disallowSingleClick(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1794
    .local v0, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v0, :cond_0

    .line 1795
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->disallowSingleClick(FF)Z

    move-result v1

    return v1

    .line 1797
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1830
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1833
    .local v0, "y":F
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v1

    .line 1834
    .local v1, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1835
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1836
    .local v2, "inputStart":I
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 1837
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1838
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1841
    .end local v2    # "inputStart":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1825
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmbientChild()Landroid/view/View;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0
.end method

.method public getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getBackgroundColor(I)I
    .locals 2
    .param p1, "visibleType"    # I

    .line 1029
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1030
    .local v0, "currentVisibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    const/4 v1, 0x0

    .line 1031
    .local v1, "customBackgroundColor":I
    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v1

    .line 1034
    :cond_0
    return v1
.end method

.method public getBackgroundColorForExpansionState()I
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1022
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    goto :goto_1

    .line 1023
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 1024
    :goto_1
    nop

    .line 1025
    .local v0, "visibleType":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    return v1
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getContractedNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 1653
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandHeight()I
    .locals 3

    .line 1865
    const/4 v0, 0x1

    .line 1866
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1867
    const/4 v0, 0x0

    .line 1869
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpHeight()I
    .locals 3

    .line 1891
    const/4 v0, 0x2

    .line 1892
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1893
    const/4 v0, 0x0

    .line 1897
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1898
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1897
    return v1
.end method

.method public getMaxHeight()I
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 825
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    if-eqz v0, :cond_1

    .line 826
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 829
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 830
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    add-int/2addr v0, v1

    .line 829
    return v0

    .line 831
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 832
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 833
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    return v0

    .line 835
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 1
    .param p1, "likeGroupExpanded"    # Z

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 857
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    if-eqz v0, :cond_1

    .line 858
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0

    .line 861
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 862
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0

    .line 864
    :cond_2
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    return v0

    .line 865
    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1621
    const/4 v0, 0x0

    .line 1622
    .local v0, "header":Landroid/view/NotificationHeaderView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1623
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1625
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1626
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1628
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1629
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1631
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1632
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1634
    :cond_3
    return-object v0
.end method

.method public getQuickReplyContractedChild()Landroid/view/View;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    return-object v0
.end method

.method public getQuickReplyHeadsUpChild()Landroid/view/View;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getQuickReplyHeadsUpHeight()I
    .locals 2

    .line 1882
    const/4 v0, 0x7

    .line 1883
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1884
    const/4 v0, 0x0

    .line 1886
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    return v1
.end method

.method public getQuickReplyHeight()I
    .locals 2

    .line 1874
    const/4 v0, 0x6

    .line 1875
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1876
    const/4 v0, 0x0

    .line 1878
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    return v1
.end method

.method public getShowingAmbientView()Landroid/view/View;
    .locals 2

    .line 872
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 873
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 874
    return-object v0

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v1
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1657
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1658
    .local v0, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getVisibleType()I
    .locals 1

    .line 1015
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method public getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "visibleType"    # I

    .line 1159
    packed-switch p1, :pswitch_data_0

    .line 1175
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1172
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1170
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1167
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1163
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1161
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1165
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1276
    const/4 v0, 0x0

    return v0
.end method

.method public initView()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeight:I

    .line 185
    return-void
.end method

.method isAnimatingVisibleType()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1722
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .line 1254
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    const/4 v0, 0x0

    return v0

    .line 1786
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQuickReply()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 424
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 426
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 627
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 629
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "previousHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 411
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 412
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 413
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 417
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 418
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 419
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 420
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    .line 197
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 198
    .local v7, "heightMode":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v9, v2

    .line 199
    .local v9, "hasFixedHeight":Z
    const/high16 v10, -0x80000000

    if-ne v7, v10, :cond_1

    move v0, v1

    nop

    :cond_1
    move v11, v0

    .line 200
    .local v11, "isHeightLimited":Z
    const v0, 0x3fffffff    # 1.9999999f

    .line 201
    .local v0, "maxSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 202
    .local v12, "width":I
    if-nez v9, :cond_3

    if-eqz v11, :cond_2

    goto :goto_2

    .line 205
    .end local v0    # "maxSize":I
    .local v13, "maxSize":I
    :cond_2
    :goto_1
    move v13, v0

    goto :goto_3

    .line 203
    .end local v13    # "maxSize":I
    .restart local v0    # "maxSize":I
    :cond_3
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 205
    .end local v0    # "maxSize":I
    .restart local v13    # "maxSize":I
    :goto_3
    const/4 v14, 0x0

    .line 206
    .local v14, "maxChildHeight":I
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 207
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 208
    .local v0, "notificationMaxHeight":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_4

    .line 209
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    :cond_4
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int v15, v0, v1

    .line 212
    .end local v0    # "notificationMaxHeight":I
    .local v15, "notificationMaxHeight":I
    move v0, v15

    .line 213
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 214
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 215
    .local v1, "useExactly":Z
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_5

    .line 217
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    const/4 v1, 0x1

    .line 220
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v4, "size":I
    .local v16, "useExactly":Z
    :cond_5
    move v4, v0

    move/from16 v16, v1

    if-eqz v16, :cond_6

    .line 221
    nop

    .line 220
    move v0, v8

    goto :goto_4

    .line 222
    :cond_6
    nop

    .line 220
    move v0, v10

    :goto_4
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 223
    .local v17, "spec":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v18, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v19, v4

    move/from16 v4, v17

    .end local v4    # "size":I
    .local v19, "size":I
    move-object/from16 v20, v5

    move/from16 v5, v18

    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 224
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 226
    .end local v15    # "notificationMaxHeight":I
    .end local v16    # "useExactly":Z
    .end local v17    # "spec":I
    .end local v19    # "size":I
    .end local v20    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 228
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 229
    .restart local v0    # "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 230
    .local v15, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 231
    .restart local v1    # "useExactly":Z
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_8

    .line 233
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    const/4 v1, 0x1

    .line 236
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v5, "size":I
    .restart local v16    # "useExactly":Z
    :cond_8
    move v5, v0

    move/from16 v16, v1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldContractedBeFixedSize()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v16, :cond_9

    goto :goto_5

    .line 239
    :cond_9
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_6

    .line 237
    :cond_a
    :goto_5
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 239
    .local v4, "heightSpec":I
    :goto_6
    move v4, v0

    .line 241
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "size":I
    .local v18, "size":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 242
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 243
    .local v5, "measuredHeight":I
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    if-ge v5, v0, :cond_b

    .line 244
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 245
    .end local v4    # "heightSpec":I
    .local v17, "heightSpec":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    move v10, v5

    move/from16 v5, v19

    .end local v5    # "measuredHeight":I
    .local v10, "measuredHeight":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_7

    .line 247
    .end local v10    # "measuredHeight":I
    .end local v17    # "heightSpec":I
    .restart local v4    # "heightSpec":I
    .restart local v5    # "measuredHeight":I
    :cond_b
    move v10, v5

    move/from16 v17, v4

    .end local v4    # "heightSpec":I
    .end local v5    # "measuredHeight":I
    .restart local v10    # "measuredHeight":I
    .restart local v17    # "heightSpec":I
    :goto_7
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 249
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 251
    :cond_c
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 254
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 256
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 259
    .end local v10    # "measuredHeight":I
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "useExactly":Z
    .end local v17    # "heightSpec":I
    .end local v18    # "size":I
    :cond_d
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 260
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 261
    .local v0, "maxHeight":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int v10, v0, v1

    .line 262
    .end local v0    # "maxHeight":I
    .local v10, "maxHeight":I
    move v0, v10

    .line 263
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 264
    .restart local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 265
    .restart local v1    # "useExactly":Z
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_e

    .line 267
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 268
    const/4 v1, 0x1

    .line 270
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v5, "size":I
    .restart local v16    # "useExactly":Z
    :cond_e
    move v5, v0

    move/from16 v16, v1

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v3, 0x0

    .line 271
    if-eqz v16, :cond_f

    move v0, v8

    goto :goto_8

    .line 272
    :cond_f
    nop

    .line 271
    const/high16 v0, -0x80000000

    :goto_8
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/16 v17, 0x0

    .line 270
    move-object v0, v6

    move/from16 v2, p1

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "size":I
    .restart local v18    # "size":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 273
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 275
    .end local v10    # "maxHeight":I
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "useExactly":Z
    .end local v18    # "size":I
    :cond_10
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_12

    .line 276
    move/from16 v0, p1

    .line 277
    .local v0, "singleLineWidthSpec":I
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v1, :cond_11

    .line 278
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_11

    .line 279
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v1, v12, v1

    iget-object v2, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 280
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 279
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 283
    :cond_11
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget v2, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 284
    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 283
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 285
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .end local v0    # "singleLineWidthSpec":I
    goto :goto_9

    .line 287
    :cond_12
    const/high16 v3, -0x80000000

    :goto_9
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 288
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 289
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 290
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 291
    .local v2, "useExactly":Z
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_13

    .line 293
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 294
    const/4 v2, 0x1

    .line 296
    :cond_13
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 297
    if-eqz v2, :cond_14

    move v5, v8

    goto :goto_a

    .line 298
    :cond_14
    nop

    .line 297
    move v5, v3

    :goto_a
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 296
    move/from16 v10, p1

    invoke-virtual {v4, v10, v5}, Landroid/view/View;->measure(II)V

    .line 299
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .end local v0    # "size":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "useExactly":Z
    goto :goto_b

    .line 301
    :cond_15
    move/from16 v10, p1

    :goto_b
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_19

    .line 302
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 303
    .restart local v0    # "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 304
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 305
    .restart local v2    # "useExactly":Z
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_16

    .line 307
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 308
    const/4 v2, 0x1

    .line 310
    :cond_16
    move v4, v10

    .line 311
    .local v4, "ambientSingleLineWidthSpec":I
    iget v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v5, :cond_17

    .line 312
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_17

    .line 313
    iget v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v5, v12, v5

    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 314
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v15

    add-int/2addr v5, v15

    .line 313
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 317
    :cond_17
    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 318
    if-eqz v2, :cond_18

    move v3, v8

    goto :goto_c

    .line 319
    :cond_18
    nop

    .line 318
    :goto_c
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 317
    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 320
    iget-object v3, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 323
    .end local v0    # "size":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "useExactly":Z
    .end local v4    # "ambientSingleLineWidthSpec":I
    :cond_19
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 324
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    const/4 v3, 0x0

    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeight:I

    .line 325
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    .line 324
    move-object v0, v6

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 326
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 328
    :cond_1a
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 329
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    const/4 v3, 0x0

    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeight:I

    .line 330
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    .line 329
    move-object v0, v6

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 331
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 334
    :cond_1b
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 335
    .local v0, "ownHeight":I
    invoke-virtual {v6, v12, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    .line 336
    return-void
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1322
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1323
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    .line 1324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1331
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1334
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1337
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1338
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1339
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 1340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1342
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1343
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 1762
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 1763
    if-eqz p1, :cond_0

    .line 1764
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1766
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 617
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 618
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 619
    return-void
.end method

.method public pointInView(FFF)Z
    .locals 4
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 1849
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 1850
    .local v0, "top":F
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v1, v1

    .line 1851
    .local v1, "bottom":F
    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sub-float v2, v0, p3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    add-float v2, v1, p3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public reInflateViews()V
    .locals 1

    .line 1670
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1673
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1675
    :cond_0
    return-void
.end method

.method public requestSelectLayout(Z)V
    .locals 1
    .param p1, "needsAnimation"    # Z

    .line 1666
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1667
    return-void
.end method

.method public setAmbientChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 606
    :cond_0
    if-nez p1, :cond_1

    .line 607
    return-void

    .line 609
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 610
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 613
    return-void
.end method

.method public setBackgroundTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    .line 1012
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 891
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    .line 892
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 893
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .param p1, "clipChildren"    # Z

    .line 1908
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move p1, v0

    .line 1909
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1910
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0
    .param p1, "clipToActualHeight"    # Z

    .line 914
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 915
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 916
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .line 885
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 886
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 887
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "containingNotification"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1662
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1663
    return-void
.end method

.method public setContentHeight(I)V
    .locals 4
    .param p1, "contentHeight"    # I

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 661
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 662
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 663
    .local v0, "maxContentHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 664
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 666
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v1

    .line 668
    .local v1, "minHeightHint":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 669
    .local v2, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_0

    .line 670
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 673
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 674
    if-eqz v2, :cond_1

    .line 675
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 678
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 679
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 680
    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .line 1715
    if-nez p1, :cond_0

    .line 1716
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 1718
    :cond_0
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 462
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 463
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 466
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1259
    return-void

    .line 1261
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    .line 1262
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1263
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "expandClickListener"    # Landroid/view/View$OnClickListener;

    .line 1592
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 1593
    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 494
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 506
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 508
    :cond_1
    if-nez p1, :cond_4

    .line 509
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 510
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 511
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 514
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_3

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 517
    :cond_3
    return-void

    .line 519
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 520
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 523
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .locals 1

    .line 1731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 1732
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1584
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1585
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1
    .param p1, "headerVisibleAmount"    # F

    .line 1913
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1919
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1922
    :cond_2
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "headsUp"    # Z

    .line 1266
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    .line 1267
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1268
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1269
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 2
    .param p1, "headsUpAnimatingAway"    # Z

    .line 1726
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 1727
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1728
    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 570
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 582
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 584
    :cond_1
    if-nez p1, :cond_4

    .line 585
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 586
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 587
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 590
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_3

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 593
    :cond_3
    return-void

    .line 595
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 596
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 599
    return-void
.end method

.method public setHeights(IIII)V
    .locals 0
    .param p1, "smallHeight"    # I
    .param p2, "headsUpMaxHeight"    # I
    .param p3, "maxHeight"    # I
    .param p4, "ambientHeight"    # I

    .line 189
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 190
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 191
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 192
    iput p4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 193
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 0
    .param p1, "iconsVisible"    # Z

    .line 1735
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    .line 1736
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateIconVisibilities()V

    .line 1737
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2
    .param p1, "isChildInGroup"    # Z

    .line 1305
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1315
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1318
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1319
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .line 1779
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsLowPriority:Z

    .line 1780
    return-void
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .line 1280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    .line 1281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1282
    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1774
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 1775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1776
    return-void
.end method

.method public setQuickReply(Z)V
    .locals 0
    .param p1, "isQuickReply"    # Z

    .line 564
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    .line 565
    return-void
.end method

.method public setQuickReplyContractedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 531
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 532
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 535
    return-void
.end method

.method public setQuickReplyHeadsUpChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 542
    :cond_0
    if-nez p1, :cond_3

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    .line 544
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 545
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 548
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_2

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 551
    :cond_2
    return-void

    .line 553
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 554
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 557
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1588
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1589
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 1
    .param p1, "remoteInputVisible"    # Z

    .line 1902
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputVisible:Z

    .line 1903
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipChildren(Z)V

    .line 1904
    return-void
.end method

.method public setRemoved()V
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1712
    :cond_1
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1
    .param p1, "singleLineWidthIndention"    # I

    .line 1694
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_0

    .line 1695
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->forceLayout()V

    .line 1697
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceLayout()V

    .line 1699
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 897
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 899
    return-void
.end method

.method public setUserExpanding(Z)V
    .locals 1
    .param p1, "userExpanding"    # Z

    .line 1678
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    .line 1679
    if-eqz p1, :cond_0

    .line 1680
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    goto :goto_0

    .line 1682
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 1684
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 1685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 1687
    :goto_0
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 2
    .param p1, "topRounded"    # Z
    .param p2, "bottomRounded"    # Z

    .line 1801
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v0

    .line 1802
    .local v0, "needsPaddings":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v1, :cond_0

    .line 1803
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1806
    :cond_0
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

    .line 1638
    .local p1, "activeOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1647
    :cond_2
    return-void
.end method

.method public updateBackgroundColor(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1003
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 1004
    .local v0, "customBackgroundColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 1005
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 1006
    return-void
.end method

.method public updateExpandButtons(Z)V
    .locals 2
    .param p1, "expandable"    # Z

    .line 1596
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1599
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1600
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1605
    const/4 p1, 0x0

    goto :goto_1

    .line 1601
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1602
    const/4 p1, 0x0

    .line 1608
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1611
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1614
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1617
    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    .line 1618
    return-void
.end method

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

.field private mLegacy:Z

.field private mMinContractedHeight:I

.field private mNotificationAmbientHeight:I

.field private mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 142
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 155
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 156
    const-class v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 157
    const-class v0, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->initView()V

    .line 159
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

    .line 944
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 945
    .local v0, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 946
    .local v1, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 950
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 951
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 952
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 953
    new-instance v2, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 962
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 963
    return-void

    .line 947
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 948
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

    .line 1292
    const v0, 0x102018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1294
    .local v0, "actionContainerCandidate":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 1295
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 1296
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1298
    .local v1, "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v1, :cond_0

    .line 1299
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 1302
    :cond_0
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 1303
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1304
    .local v2, "actionContainer":Landroid/view/ViewGroup;
    if-nez p5, :cond_1

    .line 1305
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-static {v3, v2, p2, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v3

    .line 1308
    .local v3, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 1309
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    move-object v1, v3

    .line 1314
    .end local v3    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    goto :goto_0

    .line 1315
    :cond_1
    invoke-virtual {v2, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1316
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1317
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestFocus()Z

    .line 1318
    move-object v1, p5

    .line 1321
    .end local v2    # "actionContainer":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    if-eqz p3, :cond_7

    .line 1322
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    .line 1323
    .local v2, "color":I
    if-nez v2, :cond_3

    .line 1324
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f060183

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1326
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f060432

    .line 1327
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v5, 0x7f06042f

    .line 1328
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 1326
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextBackgroundColor(III)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundColor(I)V

    .line 1330
    invoke-virtual {v1, p6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    .line 1331
    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 1333
    if-nez p4, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1336
    :cond_4
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1337
    .local v3, "actions":[Landroid/app/Notification$Action;
    if-eqz p4, :cond_5

    .line 1338
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 1340
    :cond_5
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1341
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1342
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    goto :goto_1

    .line 1345
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1346
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1351
    .end local v2    # "color":I
    .end local v3    # "actions":[Landroid/app/Notification$Action;
    :cond_7
    :goto_1
    return-object v1

    .line 1353
    .end local v1    # "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "hasRemoteInput"    # Z

    .line 1259
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1260
    .local v7, "bigContentView":Landroid/view/View;
    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 1261
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

    .line 1265
    :cond_0
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1267
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1272
    :cond_1
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1274
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 1275
    .local v9, "headsUpContentView":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1276
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

    .line 1279
    :cond_2
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1281
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_3

    .line 1284
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1286
    :cond_3
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1287
    return-void
.end method

.method private applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 19
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p0

    .line 1219
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v2, :cond_0

    .line 1220
    return-void

    .line 1223
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->isEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 1224
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

    .line 1227
    .local v2, "enableSmartReplies":Z
    :goto_0
    const/4 v5, 0x0

    .line 1228
    .local v5, "hasRemoteInput":Z
    const/4 v6, 0x0

    .line 1229
    .local v6, "remoteInputWithChoices":Landroid/app/RemoteInput;
    const/4 v7, 0x0

    .line 1231
    .local v7, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1232
    .local v8, "actions":[Landroid/app/Notification$Action;
    if-eqz v8, :cond_a

    .line 1233
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

    .line 1234
    .local v11, "a":Landroid/app/Notification$Action;
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 1235
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

    .line 1236
    .local v15, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v16

    .line 1237
    .local v16, "showRemoteInputView":Z
    if-eqz v2, :cond_3

    invoke-virtual {v15}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 1238
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 1239
    .local v3, "showSmartReplyView":Z
    :goto_3
    if-eqz v16, :cond_4

    .line 1240
    const/4 v7, 0x1

    .line 1242
    :cond_4
    if-eqz v3, :cond_5

    .line 1243
    move-object v10, v15

    .line 1244
    iget-object v14, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1246
    :cond_5
    if-nez v16, :cond_7

    if-eqz v3, :cond_6

    .line 1247
    goto :goto_4

    .line 1235
    .end local v3    # "showSmartReplyView":Z
    .end local v15    # "ri":Landroid/app/RemoteInput;
    .end local v16    # "showRemoteInputView":Z
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1233
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

    .line 1254
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

    .line 1255
    invoke-direct {v0, v6, v7, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->applySmartReplyView(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1256
    return-void
.end method

.method private applySmartReplyView(Landroid/view/View;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v0, p0

    .line 1371
    move-object/from16 v7, p4

    const v1, 0x1020406

    move-object/from16 v8, p1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1373
    .local v9, "smartReplyContainerCandidate":Landroid/view/View;
    instance-of v1, v9, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1374
    return-object v2

    .line 1376
    :cond_0
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1377
    .local v10, "smartReplyContainer":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    if-eqz p2, :cond_7

    if-nez p3, :cond_1

    goto :goto_2

    .line 1382
    :cond_1
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.remoteInputSpinner"

    .line 1383
    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1384
    .local v12, "showingSpinner":Z
    if-eqz v12, :cond_2

    .line 1385
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1386
    return-object v2

    .line 1389
    :cond_2
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.hideSmartReplies"

    .line 1390
    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1391
    .local v13, "hideSmartReplies":Z
    if-eqz v13, :cond_3

    .line 1392
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1393
    return-object v2

    .line 1395
    :cond_3
    const/4 v1, 0x0

    .line 1396
    .local v1, "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1397
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v1

    .line 1398
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1405
    .end local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .local v14, "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_4
    :goto_0
    move-object v14, v1

    goto :goto_1

    .line 1399
    .end local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .restart local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_5
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1400
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1401
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v3, :cond_4

    .line 1402
    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .end local v2    # "child":Landroid/view/View;
    goto :goto_0

    .line 1405
    .end local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .restart local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :goto_1
    if-eqz v14, :cond_6

    .line 1406
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v7

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setRepliesFromRemoteInput(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 1408
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1410
    :cond_6
    return-object v14

    .line 1378
    .end local v12    # "showingSpinner":Z
    .end local v13    # "hideSmartReplies":Z
    .end local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_7
    :goto_2
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1379
    return-object v2
.end method

.method private applySmartReplyView(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "remoteInput"    # Landroid/app/RemoteInput;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1360
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationContentView;->applySmartReplyView(Landroid/view/View;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1362
    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->smartRepliesAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V

    .line 1366
    :cond_0
    return-void
.end method

.method private calculateTransformationAmount()F
    .locals 8

    .line 705
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    .line 706
    .local v0, "startHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 707
    .local v1, "endHeight":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 708
    .local v2, "progress":I
    sub-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 709
    .local v3, "totalDistance":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    .line 710
    const-string v5, "NotificationContentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the total transformation distance is 0\n StartType: "

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

    .line 714
    return v4

    .line 716
    :cond_0
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 717
    .local v5, "amount":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private fireExpandedVisibleListenerIfVisible()V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 864
    .local v0, "listener":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 865
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 867
    .end local v0    # "listener":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private focusExpandButtonIfNecessary()V
    .locals 2

    .line 555
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 557
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v1

    .line 559
    .local v1, "expandButton":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {v1}, Landroid/widget/ImageView;->requestAccessibilityFocus()Z

    .line 563
    .end local v1    # "expandButton":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 565
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    return-void
.end method

.method private forceUpdateVisibilities()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 850
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 854
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 857
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 858
    return-void
.end method

.method private forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 870
    if-nez p2, :cond_0

    .line 871
    return-void

    .line 873
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

    .line 875
    .local v0, "visible":Z
    :goto_1
    if-nez v0, :cond_3

    .line 876
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 878
    :cond_3
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 880
    :goto_2
    return-void
.end method

.method private getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I
    .locals 2
    .param p1, "remoteInput"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 317
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 321
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getMinContentHeightHint()I
    .locals 6

    .line 597
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    const v1, 0x1050125

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 604
    nop

    .line 605
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 606
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

    .line 607
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

    .line 609
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    .line 610
    .local v5, "pinned":Z
    :goto_2
    if-nez v0, :cond_5

    if-eqz v5, :cond_6

    .line 611
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 612
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v2

    .line 611
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 617
    .end local v0    # "transitioningBetweenHunAndExpanded":Z
    .end local v5    # "pinned":Z
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 619
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 623
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "hint":I
    :goto_3
    goto :goto_4

    .line 625
    .end local v0    # "hint":I
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    goto :goto_3

    .line 628
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 629
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 630
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 631
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 633
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    .line 634
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 638
    .restart local v0    # "hint":I
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_c

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 639
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 641
    :cond_c
    return v0
.end method

.method private getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0

    .line 1700
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1
    .param p1, "visibleType"    # I

    .line 983
    packed-switch p1, :pswitch_data_0

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 993
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 991
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 989
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 987
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 985
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1004
    packed-switch p1, :pswitch_data_0

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0

    .line 1014
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1012
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0

    .line 1010
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1008
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 1006
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 738
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 740
    .local v1, "height":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 741
    .local v2, "viewWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_0

    .line 742
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getHeaderTranslation()I

    move-result v3

    add-int/2addr v1, v3

    .line 744
    :cond_0
    return v1
.end method

.method private getVisualTypeForHeight(F)I
    .locals 4
    .param p1, "viewHeight"    # F

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1075
    .local v0, "noExpandedChild":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 1076
    return v2

    .line 1078
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1079
    const/4 v1, 0x3

    return v1

    .line 1082
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1083
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1084
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-lez v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1087
    :cond_4
    return v2

    .line 1085
    :cond_5
    :goto_1
    return v1

    .line 1090
    :cond_6
    if-nez v0, :cond_8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_8

    .line 1091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1092
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    .line 1095
    :cond_7
    return v2

    .line 1093
    :cond_8
    :goto_2
    return v1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 441
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private isGroupExpanded()Z
    .locals 2

    .line 771
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

    .line 645
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

    .line 650
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

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 810
    return-void

    .line 812
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_1

    .line 813
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContentTransformation()V

    goto :goto_2

    .line 815
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 816
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 817
    .local v1, "changedType":Z
    :goto_0
    if-nez v1, :cond_3

    if-eqz p2, :cond_c

    .line 818
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    .line 819
    .local v4, "visibleView":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 820
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 821
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->transferRemoteInputFocus(I)V

    .line 824
    :cond_4
    if-eqz p1, :cond_9

    if-ne v0, v3, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v2, :cond_8

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v2, :cond_8

    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v2, :cond_8

    :cond_7
    if-nez v0, :cond_9

    .line 828
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->animateToVisibleType(I)V

    goto :goto_1

    .line 830
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 832
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 833
    if-eqz v1, :cond_a

    .line 834
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->focusExpandButtonIfNecessary()V

    .line 836
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 837
    .local v2, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_b

    .line 838
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 839
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v5

    .line 838
    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 841
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 844
    .end local v0    # "visibleType":I
    .end local v1    # "changedType":Z
    .end local v2    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v4    # "visibleView":Landroid/view/View;
    :cond_c
    :goto_2
    return-void
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 541
    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    .line 552
    :goto_0
    return-void
.end method

.method private shouldClipToRounding(IZZ)Z
    .locals 2
    .param p1, "visibleType"    # I
    .param p2, "topRounded"    # Z
    .param p3, "bottomRounded"    # Z

    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1651
    .local v0, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-nez v0, :cond_0

    .line 1652
    const/4 v1, 0x0

    return v1

    .line 1654
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result v1

    return v1
.end method

.method private shouldContractedBeFixedSize()Z
    .locals 1

    .line 371
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

    .line 966
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 968
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 971
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 973
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 976
    :cond_1
    return-void
.end method

.method private updateAllSingleLineViews()V
    .locals 0

    .line 1185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    .line 1186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAmbientSingleLineView()V

    .line 1187
    return-void
.end method

.method private updateAmbientSingleLineView()V
    .locals 5

    .line 1204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_2

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1206
    .local v0, "isNewView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1207
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1206
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1208
    if-eqz v0, :cond_1

    .line 1209
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1212
    .end local v0    # "isNewView":Z
    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_3

    .line 1213
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1216
    :cond_3
    :goto_1
    return-void
.end method

.method private updateBackgroundTransformation(F)V
    .locals 4
    .param p1, "transformationAmount"    # F

    .line 688
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 689
    .local v0, "endColor":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    .line 690
    .local v1, "startColor":I
    if-eq v0, v1, :cond_2

    .line 691
    if-nez v1, :cond_0

    .line 692
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v1

    .line 694
    :cond_0
    if-nez v0, :cond_1

    .line 695
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 697
    :cond_1
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 700
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundAlpha(F)V

    .line 701
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 702
    return-void
.end method

.method private updateClipping()V
    .locals 5

    .line 792
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    .line 793
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 794
    .local v0, "top":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 795
    .local v1, "bottom":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 796
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 797
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 798
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    goto :goto_0

    .line 799
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 801
    :goto_0
    return-void
.end method

.method private updateContentTransformation()V
    .locals 6

    .line 655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 656
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 658
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 659
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 660
    .local v1, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v3

    .line 662
    .local v3, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 663
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 664
    invoke-interface {v3, v1, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 665
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 666
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 668
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v3    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v1, :cond_1

    .line 669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibilities()V

    .line 671
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 673
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 674
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 675
    .restart local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v2

    .line 677
    .local v2, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateTransformationAmount()F

    move-result v3

    .line 678
    .local v3, "transformationAmount":F
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 679
    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 680
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundTransformation(F)V

    .line 681
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v2    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v3    # "transformationAmount":F
    goto :goto_0

    .line 682
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 683
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 685
    :goto_0
    return-void
.end method

.method private updateContractedHeaderWidth()Z
    .locals 10

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 328
    .local v0, "contractedHeader":Landroid/view/NotificationHeaderView;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 330
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    .line 332
    .local v2, "expandedHeader":Landroid/view/NotificationHeaderView;
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v4

    .line 333
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    .line 334
    .local v4, "expandedSize":I
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    .line 335
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v5, v6

    .line 336
    .local v5, "collapsedSize":I
    if-eq v4, v5, :cond_2

    .line 337
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v4

    .line 338
    .local v1, "paddingEnd":I
    nop

    .line 339
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 340
    nop

    .line 342
    move v6, v1

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v6

    .line 342
    :goto_0
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v7

    .line 343
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 344
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v8

    goto :goto_1

    .line 345
    :cond_1
    nop

    .line 346
    move v8, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v9

    .line 338
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 347
    invoke-virtual {v0, v3}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 348
    return v3

    .line 350
    .end local v1    # "paddingEnd":I
    .end local v2    # "expandedHeader":Landroid/view/NotificationHeaderView;
    .end local v4    # "expandedSize":I
    .end local v5    # "collapsedSize":I
    :cond_2
    goto :goto_4

    .line 351
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 352
    .local v2, "paddingEnd":I
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 353
    nop

    .line 354
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 355
    nop

    .line 357
    move v4, v2

    goto :goto_2

    .line 356
    :cond_4
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    .line 357
    :goto_2
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v5

    .line 358
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 359
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v6

    goto :goto_3

    .line 360
    :cond_5
    nop

    .line 361
    move v6, v2

    :goto_3
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    .line 353
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 363
    return v3

    .line 367
    .end local v2    # "paddingEnd":I
    :cond_6
    :goto_4
    return v1
.end method

.method private updateIconVisibilities()V
    .locals 3

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1581
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1582
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1585
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1587
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_1

    .line 1588
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1591
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1593
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_2

    .line 1594
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1597
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_2
    return-void
.end method

.method private updateLegacy()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1141
    :cond_2
    return-void
.end method

.method private updateSingleLineView()V
    .locals 5

    .line 1189
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1191
    .local v0, "isNewView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1192
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1191
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1193
    if-eqz v0, :cond_1

    .line 1194
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1197
    .end local v0    # "isNewView":Z
    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_3

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1201
    :cond_3
    :goto_1
    return-void
.end method

.method private updateViewVisibilities(I)V
    .locals 3
    .param p1, "visibleType"    # I

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 930
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 933
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 934
    return-void
.end method

.method private updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "visibleType"    # I
    .param p2, "type"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 938
    if-eqz p3, :cond_1

    .line 939
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 941
    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    .line 532
    return-void
.end method


# virtual methods
.method public calculateVisibleType()I
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1041
    const/4 v0, 0x5

    return v0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1043
    const/4 v0, 0x4

    return v0

    .line 1045
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1048
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_8

    .line 1050
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_4

    .line 1049
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x1

    .line 1050
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1052
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    goto :goto_1

    .line 1051
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v0

    .line 1052
    :goto_1
    nop

    .line 1053
    .local v0, "height":I
    if-nez v0, :cond_5

    .line 1054
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1056
    :cond_5
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    .line 1057
    .local v1, "expandedVisualType":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1058
    const/4 v2, 0x3

    goto :goto_2

    .line 1059
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v2

    .line 1060
    .local v2, "collapsedVisualType":I
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v3, v2, :cond_7

    .line 1061
    nop

    .line 1060
    move v3, v1

    goto :goto_3

    .line 1062
    :cond_7
    nop

    .line 1060
    move v3, v2

    :goto_3
    return v3

    .line 1064
    .end local v0    # "height":I
    .end local v1    # "expandedVisualType":I
    .end local v2    # "collapsedVisualType":I
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 1065
    .local v0, "intrinsicHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1066
    .local v1, "viewHeight":I
    if-eqz v0, :cond_9

    .line 1068
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1070
    :cond_9
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v2

    return v2
.end method

.method public closeRemoteInput()V
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1420
    :cond_1
    return-void
.end method

.method public disallowSingleClick(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1633
    .local v0, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v0, :cond_0

    .line 1634
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->disallowSingleClick(FF)Z

    move-result v1

    return v1

    .line 1636
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1672
    .local v0, "y":F
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v1

    .line 1673
    .local v1, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1674
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1675
    .local v2, "inputStart":I
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 1676
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1677
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1680
    .end local v2    # "inputStart":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1664
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmbientChild()Landroid/view/View;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0
.end method

.method public getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getBackgroundColor(I)I
    .locals 2
    .param p1, "visibleType"    # I

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 910
    .local v0, "currentVisibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    const/4 v1, 0x0

    .line 911
    .local v1, "customBackgroundColor":I
    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v1

    .line 914
    :cond_0
    return v1
.end method

.method public getBackgroundColorForExpansionState()I
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 902
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    goto :goto_1

    .line 903
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 904
    :goto_1
    nop

    .line 905
    .local v0, "visibleType":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    return v1
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getContractedNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 1492
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandHeight()I
    .locals 3

    .line 1704
    const/4 v0, 0x1

    .line 1705
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1706
    const/4 v0, 0x0

    .line 1708
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

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpHeight()I
    .locals 3

    .line 1712
    const/4 v0, 0x2

    .line 1713
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1714
    const/4 v0, 0x0

    .line 1718
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1719
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1718
    return v1
.end method

.method public getMaxHeight()I
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 728
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 729
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    add-int/2addr v0, v1

    .line 728
    return v0

    .line 730
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 732
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    add-int/2addr v0, v1

    .line 731
    return v0

    .line 734
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 1
    .param p1, "likeGroupExpanded"    # Z

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 754
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    return v0

    .line 755
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1460
    const/4 v0, 0x0

    .line 1461
    .local v0, "header":Landroid/view/NotificationHeaderView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1464
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1465
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1467
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1468
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1470
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1471
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1473
    :cond_3
    return-object v0
.end method

.method public getShowingAmbientView()Landroid/view/View;
    .locals 2

    .line 762
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 763
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 764
    return-object v0

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v1
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1496
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1497
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

    .line 895
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method public getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "visibleType"    # I

    .line 1021
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1031
    const/4 v0, 0x0

    return-object v0

    .line 1025
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1023
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1027
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1123
    const/4 v0, 0x0

    return v0
.end method

.method public initView()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 166
    return-void
.end method

.method isAnimatingVisibleType()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1561
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

    .line 1101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    const/4 v0, 0x0

    return v0

    .line 1625
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 393
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 395
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 536
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 538
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "previousHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 380
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 381
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 382
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 386
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 387
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 388
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 389
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 179
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

    .line 180
    .local v9, "hasFixedHeight":Z
    const/high16 v10, -0x80000000

    if-ne v7, v10, :cond_1

    move v0, v1

    nop

    :cond_1
    move v11, v0

    .line 181
    .local v11, "isHeightLimited":Z
    const v0, 0x3fffffff    # 1.9999999f

    .line 182
    .local v0, "maxSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 183
    .local v12, "width":I
    if-nez v9, :cond_3

    if-eqz v11, :cond_2

    goto :goto_2

    .line 186
    .end local v0    # "maxSize":I
    .local v13, "maxSize":I
    :cond_2
    :goto_1
    move v13, v0

    goto :goto_3

    .line 184
    .end local v13    # "maxSize":I
    .restart local v0    # "maxSize":I
    :cond_3
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 186
    .end local v0    # "maxSize":I
    .restart local v13    # "maxSize":I
    :goto_3
    const/4 v14, 0x0

    .line 187
    .local v14, "maxChildHeight":I
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 188
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 189
    .local v0, "notificationMaxHeight":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_4
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int v15, v0, v1

    .line 193
    .end local v0    # "notificationMaxHeight":I
    .local v15, "notificationMaxHeight":I
    move v0, v15

    .line 194
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 195
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 196
    .local v1, "useExactly":Z
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_5

    .line 198
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 199
    const/4 v1, 0x1

    .line 201
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v4, "size":I
    .local v16, "useExactly":Z
    :cond_5
    move v4, v0

    move/from16 v16, v1

    if-eqz v16, :cond_6

    .line 202
    nop

    .line 201
    move v0, v8

    goto :goto_4

    .line 203
    :cond_6
    nop

    .line 201
    move v0, v10

    :goto_4
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 204
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

    .line 205
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 207
    .end local v15    # "notificationMaxHeight":I
    .end local v16    # "useExactly":Z
    .end local v17    # "spec":I
    .end local v19    # "size":I
    .end local v20    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 209
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 210
    .restart local v0    # "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 211
    .local v15, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 212
    .restart local v1    # "useExactly":Z
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_8

    .line 214
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    const/4 v1, 0x1

    .line 217
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

    .line 220
    :cond_9
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_6

    .line 218
    :cond_a
    :goto_5
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 220
    .local v4, "heightSpec":I
    :goto_6
    move v4, v0

    .line 222
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

    .line 223
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 224
    .local v5, "measuredHeight":I
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    if-ge v5, v0, :cond_b

    .line 225
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 226
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

    .line 228
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

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 230
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    :cond_c
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 235
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 237
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 240
    .end local v10    # "measuredHeight":I
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "useExactly":Z
    .end local v17    # "heightSpec":I
    .end local v18    # "size":I
    :cond_d
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 241
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 242
    .local v0, "maxHeight":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int v10, v0, v1

    .line 243
    .end local v0    # "maxHeight":I
    .local v10, "maxHeight":I
    move v0, v10

    .line 244
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 245
    .restart local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 246
    .restart local v1    # "useExactly":Z
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_e

    .line 248
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 249
    const/4 v1, 0x1

    .line 251
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v5, "size":I
    .restart local v16    # "useExactly":Z
    :cond_e
    move v5, v0

    move/from16 v16, v1

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v3, 0x0

    .line 252
    if-eqz v16, :cond_f

    move v0, v8

    goto :goto_8

    .line 253
    :cond_f
    nop

    .line 252
    const/high16 v0, -0x80000000

    :goto_8
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/16 v17, 0x0

    .line 251
    move-object v0, v6

    move/from16 v2, p1

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "size":I
    .restart local v18    # "size":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 254
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 256
    .end local v10    # "maxHeight":I
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "useExactly":Z
    .end local v18    # "size":I
    :cond_10
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_12

    .line 257
    move/from16 v0, p1

    .line 258
    .local v0, "singleLineWidthSpec":I
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v1, :cond_11

    .line 259
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_11

    .line 260
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v1, v12, v1

    iget-object v2, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 261
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 260
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 264
    :cond_11
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget v2, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 265
    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 264
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 266
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .end local v0    # "singleLineWidthSpec":I
    goto :goto_9

    .line 268
    :cond_12
    const/high16 v3, -0x80000000

    :goto_9
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 269
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 270
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 271
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 272
    .local v2, "useExactly":Z
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_13

    .line 274
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    const/4 v2, 0x1

    .line 277
    :cond_13
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 278
    if-eqz v2, :cond_14

    move v5, v8

    goto :goto_a

    .line 279
    :cond_14
    nop

    .line 278
    move v5, v3

    :goto_a
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 277
    move/from16 v10, p1

    invoke-virtual {v4, v10, v5}, Landroid/view/View;->measure(II)V

    .line 280
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .end local v0    # "size":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "useExactly":Z
    goto :goto_b

    .line 282
    :cond_15
    move/from16 v10, p1

    :goto_b
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_19

    .line 283
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 284
    .restart local v0    # "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 285
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 286
    .restart local v2    # "useExactly":Z
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_16

    .line 288
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 289
    const/4 v2, 0x1

    .line 291
    :cond_16
    move v4, v10

    .line 292
    .local v4, "ambientSingleLineWidthSpec":I
    iget v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v5, :cond_17

    .line 293
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_17

    .line 294
    iget v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v5, v12, v5

    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 295
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v15

    add-int/2addr v5, v15

    .line 294
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 298
    :cond_17
    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 299
    if-eqz v2, :cond_18

    move v3, v8

    goto :goto_c

    .line 300
    :cond_18
    nop

    .line 299
    :goto_c
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 298
    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 301
    iget-object v3, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 303
    .end local v0    # "size":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "useExactly":Z
    .end local v4    # "ambientSingleLineWidthSpec":I
    :cond_19
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 304
    .local v0, "ownHeight":I
    invoke-virtual {v6, v12, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    .line 305
    return-void
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1161
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1162
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

    .line 1163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1170
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1173
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1176
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1178
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 1179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1181
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1182
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 1601
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 1602
    if-eqz p1, :cond_0

    .line 1603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1605
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 526
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 528
    return-void
.end method

.method public pointInView(FFF)Z
    .locals 4
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 1688
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 1689
    .local v0, "top":F
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v1, v1

    .line 1690
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

    .line 1509
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1512
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1514
    :cond_0
    return-void
.end method

.method public requestSelectLayout(Z)V
    .locals 1
    .param p1, "needsAnimation"    # Z

    .line 1505
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1506
    return-void
.end method

.method public setAmbientChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 515
    :cond_0
    if-nez p1, :cond_1

    .line 516
    return-void

    .line 518
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 519
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 522
    return-void
.end method

.method public setBackgroundTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    .line 892
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 781
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    .line 782
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 783
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .param p1, "clipChildren"    # Z

    .line 1729
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move p1, v0

    .line 1730
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1731
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0
    .param p1, "clipToActualHeight"    # Z

    .line 804
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 805
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 806
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .line 775
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 777
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "containingNotification"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1501
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1502
    return-void
.end method

.method public setContentHeight(I)V
    .locals 4
    .param p1, "contentHeight"    # I

    .line 568
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 570
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 571
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 572
    .local v0, "maxContentHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 573
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v1

    .line 577
    .local v1, "minHeightHint":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 578
    .local v2, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_0

    .line 579
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 582
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 583
    if-eqz v2, :cond_1

    .line 584
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 587
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 589
    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .line 1554
    if-nez p1, :cond_0

    .line 1555
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 1557
    :cond_0
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 422
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 423
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 426
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1106
    return-void

    .line 1108
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    .line 1109
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1110
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "expandClickListener"    # Landroid/view/View$OnClickListener;

    .line 1431
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 1432
    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 446
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 458
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 460
    :cond_1
    if-nez p1, :cond_4

    .line 461
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 462
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 463
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 466
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_3

    .line 467
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 469
    :cond_3
    return-void

    .line 471
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 472
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 475
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .locals 1

    .line 1570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 1571
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1423
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1424
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1
    .param p1, "headerVisibleAmount"    # F

    .line 1734
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1743
    :cond_2
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "headsUp"    # Z

    .line 1113
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    .line 1114
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1116
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 2
    .param p1, "headsUpAnimatingAway"    # Z

    .line 1565
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 1566
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1567
    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 479
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 491
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 493
    :cond_1
    if-nez p1, :cond_4

    .line 494
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 495
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 496
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 499
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_3

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 502
    :cond_3
    return-void

    .line 504
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 505
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 508
    return-void
.end method

.method public setHeights(IIII)V
    .locals 0
    .param p1, "smallHeight"    # I
    .param p2, "headsUpMaxHeight"    # I
    .param p3, "maxHeight"    # I
    .param p4, "ambientHeight"    # I

    .line 170
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 171
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 172
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 173
    iput p4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 174
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 0
    .param p1, "iconsVisible"    # Z

    .line 1574
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    .line 1575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateIconVisibilities()V

    .line 1576
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2
    .param p1, "isChildInGroup"    # Z

    .line 1144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1157
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1158
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .line 1618
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsLowPriority:Z

    .line 1619
    return-void
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .line 1127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    .line 1128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1129
    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1613
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1615
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1427
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1428
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 1
    .param p1, "remoteInputVisible"    # Z

    .line 1723
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputVisible:Z

    .line 1724
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipChildren(Z)V

    .line 1725
    return-void
.end method

.method public setRemoved()V
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1551
    :cond_1
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1
    .param p1, "singleLineWidthIndention"    # I

    .line 1533
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_0

    .line 1534
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->forceLayout()V

    .line 1536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceLayout()V

    .line 1538
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 787
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 788
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 789
    return-void
.end method

.method public setUserExpanding(Z)V
    .locals 1
    .param p1, "userExpanding"    # Z

    .line 1517
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    .line 1518
    if-eqz p1, :cond_0

    .line 1519
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    goto :goto_0

    .line 1521
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 1523
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 1524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 1526
    :goto_0
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 2
    .param p1, "topRounded"    # Z
    .param p2, "bottomRounded"    # Z

    .line 1640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v0

    .line 1641
    .local v0, "needsPaddings":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v1, :cond_0

    .line 1642
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1645
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

    .line 1477
    .local p1, "activeOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1486
    :cond_2
    return-void
.end method

.method public updateBackgroundColor(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 883
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 884
    .local v0, "customBackgroundColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 885
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 886
    return-void
.end method

.method public updateExpandButtons(Z)V
    .locals 2
    .param p1, "expandable"    # Z

    .line 1435
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1438
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1439
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1444
    const/4 p1, 0x0

    goto :goto_1

    .line 1440
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1441
    const/4 p1, 0x0

    .line 1447
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1450
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1453
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1456
    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    .line 1457
    return-void
.end method

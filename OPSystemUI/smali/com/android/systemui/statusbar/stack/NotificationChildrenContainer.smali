.class public Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# static fields
.field private static final ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualHeight:I

.field private mChildPadding:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenExpanded:Z

.field private mClipBottomAmount:I

.field private mCollapsedBottompadding:F

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mCurrentHeader:Landroid/view/ViewGroup;

.field private mCurrentHeaderTranslation:I

.field private mDividerAlpha:F

.field private mDividerHeight:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableShadowOnChildNotifications:Z

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mHeaderVisibleAmount:F

.field private mHideDividersDuringExpand:Z

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIsLowPriority:Z

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderAmbient:Landroid/view/ViewGroup;

.field private mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificatonTopPadding:I

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mRealHeight:I

.field private mShowDividersWhenExpanded:Z

.field private mTranslationForHeader:I

.field private mUserLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;-><init>()V

    .line 63
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 107
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 124
    new-instance v1, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setClipChildren(Z)V

    .line 127
    return-void
.end method

.method private calculateDesiredHeader()Landroid/view/ViewGroup;
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .local v0, "desiredHeader":Landroid/view/ViewGroup;
    :goto_0
    goto :goto_1

    .line 968
    .end local v0    # "desiredHeader":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    goto :goto_0

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 973
    .restart local v0    # "desiredHeader":Landroid/view/ViewGroup;
    :goto_1
    return-object v0
.end method

.method private getIntrinsicHeight(F)I
    .locals 12
    .param p1, "maxAllowedVisibleChildren"    # F

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v0

    return v0

    .line 513
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    .line 514
    .local v0, "intrinsicHeight":I
    const/4 v1, 0x0

    .line 515
    .local v1, "visibleChildren":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 516
    .local v2, "childCount":I
    const/4 v3, 0x1

    .line 517
    .local v3, "firstChild":Z
    const/4 v4, 0x0

    .line 518
    .local v4, "expandFactor":F
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v5, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v4

    .line 521
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/4 v6, 0x0

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 522
    .local v5, "childrenExpanded":Z
    :goto_1
    move v7, v0

    move v0, v6

    .local v0, "i":I
    .local v7, "intrinsicHeight":I
    :goto_2
    const/4 v8, 0x0

    if-ge v0, v2, :cond_a

    .line 523
    int-to-float v9, v1

    cmpl-float v9, v9, p1

    if-ltz v9, :cond_4

    .line 524
    goto :goto_7

    .line 526
    :cond_4
    if-nez v3, :cond_7

    .line 527
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_5

    .line 528
    int-to-float v8, v7

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    invoke-static {v9, v10, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v7, v8

    goto :goto_6

    .line 531
    :cond_5
    if-eqz v5, :cond_6

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_3

    :cond_6
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_3
    add-int/2addr v7, v8

    goto :goto_6

    .line 534
    :cond_7
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_8

    .line 535
    int-to-float v9, v7

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v8, v10, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v9, v8

    float-to-int v7, v9

    goto :goto_5

    .line 540
    :cond_8
    if-eqz v5, :cond_9

    .line 541
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v9

    goto :goto_4

    .line 542
    :cond_9
    move v8, v6

    :goto_4
    add-int/2addr v7, v8

    .line 544
    :goto_5
    const/4 v3, 0x0

    .line 546
    :goto_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 547
    .local v8, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 548
    add-int/lit8 v1, v1, 0x1

    .line 522
    .end local v8    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 550
    .end local v0    # "i":I
    :cond_a
    :goto_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_b

    .line 551
    int-to-float v0, v7

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    invoke-static {v6, v8, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    add-float/2addr v0, v6

    float-to-int v7, v0

    goto :goto_8

    .line 553
    :cond_b
    if-nez v5, :cond_c

    .line 554
    int-to-float v0, v7

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v0, v6

    float-to-int v7, v0

    .line 556
    :cond_c
    :goto_8
    return v7
.end method

.method private getMaxAllowedVisibleChildren()I
    .locals 1

    .line 703
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    return v0
.end method

.method private getMaxAllowedVisibleChildren(Z)I
    .locals 1
    .param p1, "likeCollapsed"    # Z

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 v0, 0x1

    return v0

    .line 710
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    :cond_1
    const/16 v0, 0x8

    return v0

    .line 713
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 714
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 717
    :cond_3
    const/4 v0, 0x2

    return v0

    .line 715
    :cond_4
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method private getMinHeight(IZ)I
    .locals 7
    .param p1, "maxAllowedVisibleChildren"    # I
    .param p2, "likeHighPriority"    # Z

    .line 1139
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v0

    return v0

    .line 1142
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    .line 1143
    .local v0, "minExpandHeight":I
    const/4 v1, 0x0

    .line 1144
    .local v1, "visibleChildren":I
    const/4 v2, 0x1

    .line 1145
    .local v2, "firstChild":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1146
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1147
    if-lt v1, p1, :cond_1

    .line 1148
    goto :goto_2

    .line 1150
    :cond_1
    if-nez v2, :cond_2

    .line 1151
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr v0, v5

    goto :goto_1

    .line 1153
    :cond_2
    const/4 v2, 0x0

    .line 1155
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1156
    .local v5, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    .line 1157
    add-int/lit8 v1, v1, 0x1

    .line 1146
    .end local v5    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1159
    .end local v4    # "i":I
    :cond_3
    :goto_2
    int-to-float v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1160
    return v0
.end method

.method private getVisibleChildrenExpandHeight()I
    .locals 9

    .line 1102
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1104
    .local v0, "intrinsicHeight":I
    const/4 v1, 0x0

    .line 1105
    .local v1, "visibleChildren":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1106
    .local v2, "childCount":I
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v4

    .line 1107
    .local v4, "maxAllowedVisibleChildren":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 1108
    if-lt v1, v4, :cond_0

    .line 1109
    goto :goto_2

    .line 1111
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1112
    .local v6, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1113
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    int-to-float v7, v7

    goto :goto_1

    .line 1114
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    int-to-float v7, v7

    .line 1115
    .local v7, "childHeight":F
    :goto_1
    int-to-float v8, v0

    add-float/2addr v8, v7

    float-to-int v0, v8

    .line 1116
    add-int/lit8 v1, v1, 0x1

    .line 1107
    .end local v6    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "childHeight":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1118
    .end local v5    # "i":I
    :cond_2
    :goto_2
    return v0
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "visibleHeader"    # Landroid/view/View;

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne p1, v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0
.end method

.method private inflateDivider()Landroid/view/View;
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 132
    const v1, 0x7f070387

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 134
    const v1, 0x7f07038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 135
    const v1, 0x7f070388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 137
    const v1, 0x7f070389

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    .line 139
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    .line 140
    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    .line 142
    nop

    .line 143
    const v2, 0x7f050018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    .line 144
    nop

    .line 145
    const v2, 0x7f05002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    .line 146
    nop

    .line 147
    const v2, 0x7f05001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->initDimens()V

    .line 152
    return-void
.end method

.method public static synthetic lambda$updateHeaderVisibility$0(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V
    .locals 1

    .line 921
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    return-void
.end method

.method private recreateAmbientHeader(Landroid/app/Notification$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 339
    .local v0, "notification":Landroid/service/notification/StatusBarNotification;
    if-nez p1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 341
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 340
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 343
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 344
    .local v1, "header":Landroid/widget/RemoteViews;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 348
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 349
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 356
    return-void
.end method

.method private recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 366
    .local v0, "notification":Landroid/service/notification/StatusBarNotification;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v1, :cond_2

    .line 367
    if-nez p1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 369
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 368
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 371
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 372
    .local v1, "header":Landroid/widget/RemoteViews;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-nez v2, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/NotificationHeaderView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 375
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    const v3, 0x102023e

    invoke-virtual {v2, v3}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 377
    .local v2, "expandButton":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 381
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 383
    .end local v2    # "expandButton":Landroid/view/View;
    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 386
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 389
    .end local v1    # "header":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 391
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 393
    :goto_1
    return-void
.end method

.method private resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;
    .param p2, "desiredHeader"    # Landroid/view/View;

    .line 951
    if-nez p1, :cond_0

    .line 952
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p2, :cond_1

    .line 955
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 956
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 958
    :cond_1
    if-ne p1, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 960
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 962
    :cond_2
    return-void
.end method

.method private startChildAlphaAnimations(Z)V
    .locals 9
    .param p1, "toVisible"    # Z

    .line 977
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 978
    .local v1, "target":F
    :goto_0
    sub-float/2addr v0, v1

    .line 979
    .local v0, "start":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 980
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 981
    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 982
    goto :goto_2

    .line 984
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 985
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAlpha(F)V

    .line 986
    new-instance v5, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 987
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 988
    iput v1, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 989
    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    mul-int/lit8 v7, v3, 0x32

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 990
    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 980
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ViewState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 992
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private updateChildrenClipping()V
    .locals 11

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 766
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    .line 767
    .local v1, "layoutEnd":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 768
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 769
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 770
    goto :goto_4

    .line 772
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v5

    .line 773
    .local v5, "childTop":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    .line 774
    .local v6, "childBottom":F
    const/4 v7, 0x1

    .line 775
    .local v7, "visible":Z
    const/4 v8, 0x0

    .line 776
    .local v8, "clipBottomAmount":I
    int-to-float v9, v1

    cmpl-float v9, v5, v9

    if-lez v9, :cond_2

    .line 777
    const/4 v7, 0x0

    goto :goto_1

    .line 778
    :cond_2
    int-to-float v9, v1

    cmpl-float v9, v6, v9

    if-lez v9, :cond_3

    .line 779
    int-to-float v9, v1

    sub-float v9, v6, v9

    float-to-int v8, v9

    .line 782
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    move v9, v2

    .line 783
    .local v9, "isVisible":Z
    :goto_2
    if-eq v7, v9, :cond_6

    .line 784
    if-eqz v7, :cond_5

    move v10, v2

    goto :goto_3

    :cond_5
    const/4 v10, 0x4

    :goto_3
    invoke-virtual {v4, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 787
    :cond_6
    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 767
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "childTop":F
    .end local v6    # "childBottom":F
    .end local v7    # "visible":Z
    .end local v8    # "clipBottomAmount":I
    .end local v9    # "isVisible":Z
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method private updateExpansionStates()V
    .locals 5

    .line 485
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 490
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 492
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 490
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 487
    .end local v0    # "size":I
    :cond_3
    :goto_2
    return-void
.end method

.method private updateHeaderTransformation()V
    .locals 3

    .line 996
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    .line 998
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 1000
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 1001
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 1005
    .end local v0    # "fraction":F
    :cond_0
    return-void
.end method

.method private updateHeaderVisibility(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 904
    .local v0, "currentHeader":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v1

    .line 906
    .local v1, "desiredHeader":Landroid/view/ViewGroup;
    if-ne v0, v1, :cond_0

    .line 907
    return-void

    .line 909
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_2

    .line 911
    :cond_1
    const/4 p1, 0x0

    .line 914
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 915
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 916
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 917
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 918
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    .line 919
    .local v4, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    .line 920
    .local v5, "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 921
    new-instance v6, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationChildrenContainer$l4ZjZHbrQfPYWXU5LoOnRTSkuy8;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationChildrenContainer$l4ZjZHbrQfPYWXU5LoOnRTSkuy8;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 922
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v6, :cond_3

    move v6, v2

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startChildAlphaAnimations(Z)V

    .line 923
    .end local v4    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v5    # "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    goto :goto_1

    .line 924
    :cond_4
    const/4 p1, 0x0

    .line 927
    :cond_5
    :goto_1
    if-nez p1, :cond_8

    .line 928
    if-eqz v1, :cond_6

    .line 929
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 930
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 932
    :cond_6
    if-eqz v0, :cond_8

    .line 935
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 936
    .local v2, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_7

    .line 937
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 939
    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 943
    .end local v2    # "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 944
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 945
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 947
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 948
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .line 261
    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 262
    .local v0, "newIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 264
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 271
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewState()Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    move-result-object v2

    .line 274
    .local v2, "viewState":Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;
    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->cancelAnimations(Landroid/view/View;)V

    .line 276
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->cancelAppearDrawing()V

    .line 278
    :cond_1
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 5
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

    .line 463
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 464
    return v0

    .line 466
    :cond_0
    const/4 v1, 0x0

    .line 467
    .local v1, "result":Z
    nop

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 468
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 469
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 470
    .local v3, "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eq v2, v3, :cond_2

    .line 471
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 473
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 474
    const/4 v1, 0x1

    goto :goto_1

    .line 476
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    .line 467
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 481
    return v1
.end method

.method public applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 14
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 722
    .local v0, "childCount":I
    new-instance v1, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 723
    .local v1, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    const/4 v2, 0x0

    .line 724
    .local v2, "expandFraction":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    .line 727
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 729
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    if-nez v3, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    .line 731
    .local v3, "dividersVisible":Z
    :goto_0
    move v6, v5

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_8

    .line 732
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 733
    .local v7, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v7}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    .line 734
    .local v8, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 737
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 738
    .local v9, "divider":Landroid/view/View;
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 739
    iget v10, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 740
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    iget v10, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerAlpha:F

    goto :goto_2

    :cond_5
    move v10, v11

    .line 741
    .local v10, "alpha":F
    :goto_2
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v12

    if-nez v12, :cond_6

    iget v12, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v12, v12, v11

    if-eqz v12, :cond_6

    .line 742
    const/high16 v12, 0x3f000000    # 0.5f

    iget v13, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 743
    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 742
    invoke-static {v11, v12, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    .line 745
    :cond_6
    if-nez v3, :cond_7

    move v12, v4

    goto :goto_3

    :cond_7
    move v12, v5

    :goto_3
    iput-boolean v12, v1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 746
    iput v10, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 747
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 749
    invoke-virtual {v7, v11, v11, v5, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 731
    .end local v7    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v9    # "divider":Landroid/view/View;
    .end local v10    # "alpha":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 751
    .end local v6    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v4, :cond_9

    .line 752
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 753
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 755
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v4, :cond_a

    .line 756
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 758
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 759
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 2

    .line 1128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentHeaderView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getGroupExpandFraction()F
    .locals 5

    .line 1093
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v0

    goto :goto_0

    .line 1094
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v0

    .line 1095
    .local v0, "visibleChildrenExpandedHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    .line 1096
    .local v1, "minExpandHeight":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    sub-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1098
    .local v2, "factor":F
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    return v0

    .line 1293
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    .line 502
    .local v0, "maxAllowedVisibleChildren":I
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result v1

    return v1
.end method

.method public getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 8

    .line 1035
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1036
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0

    .line 1039
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v2

    .line 1041
    .local v0, "maxContentHeight":I
    const/4 v2, 0x0

    .line 1042
    .local v2, "visibleChildren":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1043
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 1044
    const/16 v5, 0x8

    if-lt v2, v5, :cond_1

    .line 1045
    goto :goto_2

    .line 1047
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1048
    .local v5, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1049
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    int-to-float v6, v6

    goto :goto_1

    .line 1050
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    int-to-float v6, v6

    .line 1051
    .local v6, "childHeight":F
    :goto_1
    int-to-float v7, v0

    add-float/2addr v7, v6

    float-to-int v0, v7

    .line 1052
    add-int/lit8 v2, v2, 0x1

    .line 1043
    .end local v5    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "childHeight":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1054
    .end local v4    # "i":I
    :cond_3
    :goto_2
    if-lez v2, :cond_4

    .line 1055
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1057
    :cond_4
    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    const/4 v0, 0x1

    goto :goto_0

    .line 1124
    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    .line 1122
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0
.end method

.method public getNotificationChildCount()I
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 6
    .param p1, "childInGroup"    # Landroid/view/View;

    .line 1221
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v1

    .line 1224
    .local v0, "position":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "position":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1225
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1226
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 1227
    .local v4, "notGone":Z
    :goto_1
    if-eqz v4, :cond_1

    .line 1228
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v2, v5

    .line 1230
    :cond_1
    if-ne v3, p1, :cond_2

    .line 1231
    return v2

    .line 1233
    :cond_2
    if-eqz v4, :cond_3

    .line 1234
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 1224
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "notGone":Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    .end local v0    # "i":I
    :cond_4
    return v1
.end method

.method public getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 21
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "parentState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 567
    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 568
    .local v3, "childCount":I
    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v4, v5

    .line 569
    .local v4, "yPosition":I
    const/4 v5, 0x1

    .line 570
    .local v5, "firstChild":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v6

    .line 571
    .local v6, "maxAllowedVisibleChildren":I
    add-int/lit8 v7, v6, -0x1

    .line 572
    .local v7, "lastVisibleIndex":I
    add-int/lit8 v8, v7, 0x1

    .line 573
    .local v8, "firstOverflowIndex":I
    const/4 v9, 0x0

    .line 574
    .local v9, "expandFactor":F
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v12, 0x1

    if-eqz v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v10

    if-nez v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 575
    .local v10, "expandingToExpandedGroup":Z
    :goto_0
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v13, :cond_1

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v9

    .line 577
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v8

    .line 580
    :cond_1
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v13, :cond_2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 581
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v13

    if-nez v13, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 582
    .local v13, "childrenExpandedAndNotAnimating":Z
    :goto_1
    const/4 v14, 0x0

    .line 583
    .local v14, "launchTransitionCompensation":I
    move v15, v14

    move v14, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v14, "yPosition":I
    .local v15, "launchTransitionCompensation":I
    :goto_2
    if-ge v4, v3, :cond_d

    .line 584
    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 585
    .local v11, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v5, :cond_5

    .line 586
    if-eqz v10, :cond_3

    .line 587
    int-to-float v12, v14

    move/from16 v17, v5

    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    .end local v5    # "firstChild":Z
    .local v17, "firstChild":Z
    int-to-float v5, v5

    move/from16 v18, v6

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    .end local v6    # "maxAllowedVisibleChildren":I
    .local v18, "maxAllowedVisibleChildren":I
    int-to-float v6, v6

    invoke-static {v5, v6, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    add-float/2addr v12, v5

    float-to-int v5, v12

    .end local v14    # "yPosition":I
    .local v5, "yPosition":I
    :goto_3
    goto :goto_7

    .line 590
    .end local v17    # "firstChild":Z
    .end local v18    # "maxAllowedVisibleChildren":I
    .local v5, "firstChild":Z
    .restart local v6    # "maxAllowedVisibleChildren":I
    .restart local v14    # "yPosition":I
    :cond_3
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "firstChild":Z
    .end local v6    # "maxAllowedVisibleChildren":I
    .restart local v17    # "firstChild":Z
    .restart local v18    # "maxAllowedVisibleChildren":I
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_4

    :cond_4
    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_4
    add-int/2addr v5, v14

    goto :goto_3

    .line 593
    .end local v17    # "firstChild":Z
    .end local v18    # "maxAllowedVisibleChildren":I
    .restart local v5    # "firstChild":Z
    .restart local v6    # "maxAllowedVisibleChildren":I
    :cond_5
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "firstChild":Z
    .end local v6    # "maxAllowedVisibleChildren":I
    .restart local v17    # "firstChild":Z
    .restart local v18    # "maxAllowedVisibleChildren":I
    if-eqz v10, :cond_6

    .line 594
    int-to-float v5, v14

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v12, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v6, v12

    int-to-float v6, v6

    const/4 v12, 0x0

    invoke-static {v12, v6, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    .end local v14    # "yPosition":I
    .local v5, "yPosition":I
    goto :goto_6

    .line 599
    .end local v5    # "yPosition":I
    .restart local v14    # "yPosition":I
    :cond_6
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v5, :cond_7

    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v5, v6

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    add-int/2addr v14, v5

    .line 601
    move v5, v14

    .end local v14    # "yPosition":I
    .restart local v5    # "yPosition":I
    :goto_6
    const/4 v6, 0x0

    .line 604
    .end local v17    # "firstChild":Z
    .local v6, "firstChild":Z
    move/from16 v17, v6

    .end local v6    # "firstChild":Z
    .restart local v17    # "firstChild":Z
    :goto_7
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v6

    .line 605
    .local v6, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v12

    .line 606
    .local v12, "intrinsicHeight":I
    iput v12, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 607
    add-int v14, v5, v15

    int-to-float v14, v14

    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 608
    const/4 v14, 0x0

    iput-boolean v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 611
    nop

    .line 612
    if-eqz v13, :cond_8

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    if-eqz v14, :cond_8

    .line 613
    iget v14, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_8

    .line 614
    :cond_8
    const/4 v14, 0x0

    :goto_8
    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 615
    iget-boolean v14, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 616
    iget-boolean v14, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iput-boolean v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 617
    iget-boolean v14, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 618
    iget-boolean v14, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 619
    const/4 v14, 0x0

    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 620
    const/4 v14, 0x0

    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 621
    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v4, v8, :cond_a

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v16

    if-eqz v16, :cond_9

    move v14, v9

    nop

    :cond_9
    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 627
    move/from16 v20, v7

    goto :goto_9

    .line 623
    :cond_a
    cmpl-float v19, v9, v14

    if-nez v19, :cond_b

    if-gt v4, v7, :cond_b

    .line 624
    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    int-to-float v14, v14

    move/from16 v20, v7

    iget v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .end local v7    # "lastVisibleIndex":I
    .local v20, "lastVisibleIndex":I
    sub-float/2addr v14, v7

    iget v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v7, v7

    div-float/2addr v14, v7

    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 625
    iget v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v14, 0x0

    invoke-static {v14, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_9

    .line 627
    .end local v20    # "lastVisibleIndex":I
    .restart local v7    # "lastVisibleIndex":I
    :cond_b
    move/from16 v20, v7

    .end local v7    # "lastVisibleIndex":I
    .restart local v20    # "lastVisibleIndex":I
    :goto_9
    iget v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    iput v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 628
    iget-boolean v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 629
    add-int v14, v5, v12

    .line 630
    .end local v5    # "yPosition":I
    .restart local v14    # "yPosition":I
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 631
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v5

    neg-int v5, v5

    .line 583
    .end local v6    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v11    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v12    # "intrinsicHeight":I
    .end local v15    # "launchTransitionCompensation":I
    .local v5, "launchTransitionCompensation":I
    move v15, v5

    .end local v5    # "launchTransitionCompensation":I
    .restart local v15    # "launchTransitionCompensation":I
    :cond_c
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v20

    const/4 v12, 0x1

    goto/16 :goto_2

    .line 635
    .end local v4    # "i":I
    .end local v17    # "firstChild":Z
    .end local v18    # "maxAllowedVisibleChildren":I
    .end local v20    # "lastVisibleIndex":I
    .local v5, "firstChild":Z
    .local v6, "maxAllowedVisibleChildren":I
    .restart local v7    # "lastVisibleIndex":I
    :cond_d
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v7

    .end local v5    # "firstChild":Z
    .end local v6    # "maxAllowedVisibleChildren":I
    .end local v7    # "lastVisibleIndex":I
    .restart local v17    # "firstChild":Z
    .restart local v18    # "maxAllowedVisibleChildren":I
    .restart local v20    # "lastVisibleIndex":I
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    .line 636
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    .line 637
    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v6

    .line 636
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 638
    .local v4, "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 640
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 641
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 661
    move v12, v6

    goto :goto_b

    .line 642
    :cond_e
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v5, :cond_12

    .line 643
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v5

    .line 644
    .local v5, "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    if-eqz v5, :cond_11

    .line 645
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v6

    .line 646
    .local v6, "mirrorView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v11, 0x8

    if-ne v7, v11, :cond_f

    .line 647
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v6

    .line 649
    :cond_f
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v11, :cond_10

    .line 650
    move-object v6, v5

    .line 652
    :cond_10
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v11

    iput v11, v7, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 653
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v11, v7, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F

    move-result v12

    add-float/2addr v11, v12

    iput v11, v7, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 656
    .end local v5    # "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .end local v6    # "mirrorView":Landroid/view/View;
    :cond_11
    goto :goto_a

    .line 657
    :cond_12
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v6, v5, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 658
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    const/4 v12, 0x0

    iput v12, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .end local v4    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_b

    .line 661
    :cond_13
    :goto_a
    const/4 v12, 0x0

    :goto_b
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v4, :cond_16

    .line 662
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-nez v4, :cond_14

    .line 663
    new-instance v4, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 665
    :cond_14
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 666
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v13, :cond_15

    .line 667
    iget v12, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    nop

    .line 668
    :cond_15
    iput v12, v4, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 669
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    int-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 670
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    iput v5, v4, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 673
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 675
    :cond_16
    return-void
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 7
    .param p1, "y"    # F

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 849
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 850
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 851
    .local v2, "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    .line 852
    .local v3, "childTop":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 853
    .local v4, "top":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 854
    .local v5, "bottom":F
    cmpl-float v6, p1, v4

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v5

    if-gtz v6, :cond_0

    .line 855
    return-object v2

    .line 849
    .end local v2    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "childTop":F
    .end local v4    # "top":F
    .end local v5    # "bottom":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "childIdx":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVisibleHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1274
    .local v0, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1277
    :cond_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isUserLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1298
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    return v0
.end method

.method public notifyShowAmbientChanged()V
    .locals 1

    .line 897
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 899
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 439
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 441
    return-void
.end method

.method public onExpansionChanged()V
    .locals 1

    .line 1281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_1

    .line 1282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    .line 1283
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1285
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1287
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 161
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 157
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v2, v3

    .line 166
    .local v2, "isRtl":Z
    if-eqz v2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 167
    .local v3, "left":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 168
    .local v4, "right":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v3, v1, v4, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 170
    .end local v2    # "isRtl":Z
    .end local v3    # "left":I
    .end local v4    # "right":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 172
    invoke-virtual {v4}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v4

    .line 171
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 176
    invoke-virtual {v3}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 177
    invoke-virtual {v4}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v4

    .line 175
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 179
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 182
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    .line 180
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 184
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 188
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 189
    .local v2, "heightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 190
    .local v6, "hasFixedHeight":Z
    :goto_0
    const/high16 v7, -0x80000000

    if-ne v2, v7, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 191
    .local v8, "isHeightLimited":Z
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 192
    .local v9, "size":I
    move/from16 v10, p2

    .line 193
    .local v10, "newHeightSpec":I
    if-nez v6, :cond_2

    if-eqz v8, :cond_3

    .line 194
    :cond_2
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 196
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 197
    .local v11, "width":I
    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v12, :cond_4

    .line 198
    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v12, v7, v10}, Landroid/widget/TextView;->measure(II)V

    .line 201
    :cond_4
    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 202
    .local v7, "dividerHeightSpec":I
    iget v12, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v13, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v12, v13

    .line 203
    .local v12, "height":I
    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/16 v14, 0x8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 204
    .local v13, "childCount":I
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v15

    .line 205
    .local v15, "collapsedChildren":I
    if-le v13, v15, :cond_5

    add-int/lit8 v16, v15, -0x1

    goto :goto_2

    :cond_5
    const/16 v16, -0x1

    :goto_2
    move/from16 v17, v16

    .line 206
    .local v17, "overflowIndex":I
    move v3, v12

    const/4 v12, 0x0

    .local v3, "height":I
    .local v12, "i":I
    :goto_3
    if-ge v12, v13, :cond_9

    .line 207
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 210
    .local v5, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move/from16 v4, v17

    if-ne v12, v4, :cond_6

    .end local v17    # "overflowIndex":I
    .local v4, "overflowIndex":I
    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    .line 211
    .local v16, "isOverflow":Z
    :goto_4
    if-eqz v16, :cond_7

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v14, :cond_7

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 212
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v14

    if-nez v14, :cond_7

    .line 213
    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    goto :goto_5

    .line 211
    :cond_7
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    .line 214
    invoke-virtual {v5, v1, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    .line 216
    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 217
    .local v14, "divider":Landroid/view/View;
    invoke-virtual {v14, v1, v7}, Landroid/view/View;->measure(II)V

    .line 218
    move/from16 v18, v4

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v4

    .end local v4    # "overflowIndex":I
    .local v18, "overflowIndex":I
    move/from16 v19, v6

    const/16 v6, 0x8

    if-eq v4, v6, :cond_8

    .line 219
    .end local v6    # "hasFixedHeight":Z
    .local v19, "hasFixedHeight":Z
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMeasuredHeight()I

    move-result v4

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 206
    .end local v5    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v14    # "divider":Landroid/view/View;
    .end local v16    # "isOverflow":Z
    :cond_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v17, v18

    move/from16 v6, v19

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/16 v14, 0x8

    goto :goto_3

    .line 222
    .end local v12    # "i":I
    .end local v18    # "overflowIndex":I
    .end local v19    # "hasFixedHeight":Z
    .restart local v6    # "hasFixedHeight":Z
    .restart local v17    # "overflowIndex":I
    :cond_9
    move/from16 v19, v6

    move/from16 v18, v17

    .end local v6    # "hasFixedHeight":Z
    .end local v17    # "overflowIndex":I
    .restart local v18    # "overflowIndex":I
    .restart local v19    # "hasFixedHeight":Z
    iput v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 223
    if-eqz v2, :cond_a

    .line 224
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 227
    :cond_a
    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 228
    .local v4, "headerHeightSpec":I
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v5, :cond_b

    .line 229
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v5, v1, v4}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 231
    :cond_b
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v5, :cond_c

    .line 232
    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 233
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v5, v1, v4}, Landroid/view/NotificationHeaderView;->measure(II)V

    goto :goto_6

    .line 235
    :cond_c
    const/high16 v6, 0x40000000    # 2.0f

    :goto_6
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 236
    iget v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 237
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 240
    :cond_d
    invoke-virtual {v0, v11, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setMeasuredDimension(II)V

    .line 241
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 4

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1216
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationColor()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1217
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationColorAmbient()I

    move-result v3

    .line 1215
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;II)V

    .line 1218
    return-void
.end method

.method public pointInView(FFF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 250
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 799
    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1176
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1180
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1184
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 1186
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 1187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 1188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1189
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1190
    .local v2, "prevDivider":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1191
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v4

    .line 1193
    .local v4, "divider":Landroid/view/View;
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 1194
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v5, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .end local v2    # "prevDivider":Landroid/view/View;
    .end local v3    # "index":I
    .end local v4    # "divider":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1196
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1197
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 1198
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 1199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 1200
    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 311
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 313
    .local v0, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 314
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 313
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 315
    .local v1, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 316
    .local v3, "header":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/NotificationHeaderView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 318
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const v5, 0x102023e

    invoke-virtual {v4, v5}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 320
    .local v4, "expandButton":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 324
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 326
    .end local v4    # "expandButton":Landroid/view/View;
    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 329
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 330
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 331
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateAmbientHeader(Landroid/app/Notification$Builder;)V

    .line 332
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    .line 334
    return-void
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 282
    .local v0, "childIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 286
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 288
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 295
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 296
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 301
    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 11
    .param p1, "actualHeight"    # I

    .line 1061
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v0, :cond_0

    .line 1062
    return-void

    .line 1064
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 1065
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    .line 1066
    .local v0, "fraction":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    .line 1067
    .local v1, "showingLowPriority":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderTransformation()V

    .line 1068
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v3

    .line 1069
    .local v3, "maxAllowedVisibleChildren":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1070
    .local v4, "childCount":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 1071
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1073
    .local v7, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v1, :cond_1

    .line 1074
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v8, v8

    .local v8, "childHeight":F
    :goto_1
    goto :goto_2

    .line 1075
    .end local v8    # "childHeight":F
    :cond_1
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1076
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v8

    int-to-float v8, v8

    goto :goto_1

    .line 1078
    :cond_2
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v8, v8

    .line 1081
    .restart local v8    # "childHeight":F
    :goto_2
    if-ge v6, v3, :cond_3

    .line 1082
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v9

    int-to-float v9, v9

    .line 1084
    .local v9, "singleLineHeight":F
    invoke-static {v9, v8, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v10, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    .line 1086
    .end local v9    # "singleLineHeight":F
    goto :goto_3

    .line 1087
    :cond_3
    float-to-int v9, v8

    invoke-virtual {v7, v9, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    .line 1070
    .end local v7    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "childHeight":F
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1090
    .end local v6    # "i":I
    :cond_4
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .locals 4
    .param p1, "childrenExpanded"    # Z

    .line 862
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 863
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 864
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 868
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 869
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 870
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 868
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 872
    .end local v2    # "childIdx":I
    :cond_1
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 1257
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    .line 1258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 1259
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 875
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 876
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    .line 877
    return-void
.end method

.method public setCurrentBottomRoundness(F)V
    .locals 5
    .param p1, "currentBottomRoundness"    # F

    .line 1302
    const/4 v0, 0x1

    .line 1303
    .local v0, "last":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1304
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1305
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1306
    goto :goto_2

    .line 1308
    :cond_0
    if-eqz v0, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1309
    .local v3, "bottomRoundness":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isShown()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setBottomRoundness(FZ)Z

    .line 1310
    const/4 v0, 0x0

    .line 1303
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "bottomRoundness":F
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1312
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 7
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V

    .line 1171
    :cond_0
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 2
    .param p1, "headerVisibleAmount"    # F

    .line 1315
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 1316
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    .line 1317
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 3
    .param p1, "iconsVisible"    # Z

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1243
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1247
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 1249
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1250
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_1

    .line 1251
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1254
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 1
    .param p1, "isLowPriority"    # Z

    .line 1262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 1265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1267
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_1

    .line 1268
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1270
    :cond_1
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 5
    .param p1, "userLocked"    # Z

    .line 1203
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 1204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1205
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1208
    .local v0, "childCount":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1209
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1210
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1208
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1212
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public showingAsLowPriority()Z
    .locals 1

    .line 1164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 17
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    .line 803
    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 804
    .local v2, "childCount":I
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 805
    .local v3, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v4

    .line 806
    .local v4, "expandFraction":F
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 808
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    .line 810
    .local v5, "dividersVisible":Z
    :goto_0
    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_1
    const/4 v9, 0x0

    if-ltz v8, :cond_7

    .line 811
    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 812
    .local v10, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v12

    .line 813
    .local v12, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v12, v10, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 816
    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 817
    .local v13, "divider":Landroid/view/View;
    invoke-virtual {v3, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 818
    iget v14, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    iput v14, v3, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 819
    iget-boolean v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/high16 v15, 0x3f000000    # 0.5f

    if-eqz v14, :cond_4

    iget v14, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v14, v14, v9

    if-eqz v14, :cond_4

    move v14, v15

    goto :goto_2

    :cond_4
    move v14, v9

    .line 820
    .local v14, "alpha":F
    :goto_2
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_5

    .line 821
    iget v6, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 822
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 821
    invoke-static {v9, v15, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    .line 824
    :cond_5
    if-nez v5, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 825
    iput v14, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 826
    invoke-virtual {v3, v13, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 828
    invoke-virtual {v10, v9, v9, v7, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 810
    .end local v10    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v12    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v13    # "divider":Landroid/view/View;
    .end local v14    # "alpha":F
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 830
    .end local v8    # "i":I
    :cond_7
    move-object/from16 v11, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 831
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    if-eqz v6, :cond_8

    .line 832
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v6, v6, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 833
    .local v6, "alpha":F
    iget-object v8, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v9, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 834
    iget-object v8, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 835
    iget-object v8, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v6, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 836
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 838
    .end local v6    # "alpha":F
    :cond_8
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 840
    :cond_9
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v6, :cond_a

    .line 841
    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 843
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 844
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearance()V

    .line 397
    return-void
.end method

.method public updateGroupOverflow()V
    .locals 9

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 401
    .local v0, "childCount":I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v2

    .line 402
    .local v2, "maxAllowedVisibleChildren":I
    const/4 v3, 0x0

    if-le v0, v2, :cond_3

    .line 403
    sub-int v4, v0, v2

    .line 404
    .local v4, "number":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 405
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 406
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 407
    .local v5, "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v5, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAmbientSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v3

    .line 409
    .local v3, "ambientSingleLineView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    :goto_0
    if-eqz v3, :cond_1

    .line 410
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 411
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 412
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 410
    invoke-virtual {v6, v7, v8, v4}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindOverflowNumberAmbient(Landroid/widget/TextView;Landroid/app/Notification;I)Landroid/widget/TextView;

    .line 416
    .end local v3    # "ambientSingleLineView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .end local v5    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-nez v3, :cond_2

    .line 417
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 418
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 420
    .end local v4    # "number":I
    :cond_2
    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 421
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 424
    .local v1, "removedOverflowNumber":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getTransientViewCount()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addTransientView(Landroid/view/View;I)V

    .line 425
    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 432
    .end local v1    # "removedOverflowNumber":Landroid/view/View;
    :cond_4
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 433
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 435
    :cond_5
    :goto_1
    return-void
.end method

.method public updateHeaderForExpansion(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 1026
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->calculateBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1027
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    .end local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    goto :goto_0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1032
    :cond_1
    :goto_0
    return-void
.end method

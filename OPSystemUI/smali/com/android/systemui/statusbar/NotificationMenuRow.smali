.class public Lcom/android/systemui/statusbar/NotificationMenuRow;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;,
        Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAnimating:Z

.field private mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

.field private mContext:Landroid/content/Context;

.field private mDismissing:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mHandler:Landroid/os/Handler;

.field private mHorizSpaceForIcon:F

.field private mIconLocation:[I

.field private mIconPadding:I

.field private mIconsPlaced:Z

.field private mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mIsUserTouching:Z

.field private mMenuContainer:Landroid/widget/FrameLayout;

.field private mMenuFadedIn:Z

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field private mMenuSnappedOnLeft:Z

.field private mMenuSnappedTo:Z

.field private mOnLeft:Z

.field private mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentLocation:[I

.field private mPrevX:F

.field private mShouldShowMenu:Z

.field private mSnapping:Z

.field private mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mTranslation:F

.field private mVertSpaceForIcons:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    .line 89
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    .line 91
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    .line 93
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconPadding:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationMenuRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "x1"    # F

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->fadeInMenu(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "x1"    # F

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/NotificationMenuRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationMenuRow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationMenuRow;

    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    return v0
.end method

.method private addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 646
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v0

    .line 647
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 649
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 651
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 652
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 653
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private cancelDrag()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method

.method public static createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 638
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d002c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AppOpsInfo;

    .line 640
    .local v0, "appOpsContent":Lcom/android/systemui/statusbar/AppOpsInfo;
    new-instance v2, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    const/4 v3, -0x1

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    move-object v1, v2

    .line 642
    .local v1, "info":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    return-object v1
.end method

.method public static createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 629
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f11041d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "infoDescription":Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00f2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationInfo;

    .line 632
    .local v2, "infoContent":Lcom/android/systemui/statusbar/NotificationInfo;
    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    const v4, 0x7f080375

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    .line 634
    .local v3, "info":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    return-object v3
.end method

.method private createMenuViews(Z)V
    .locals 7
    .param p1, "resetState"    # Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0703a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    .line 191
    const v1, 0x7f0703a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    .line 197
    .local v1, "flags":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "pkg":Ljava/lang/String;
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 199
    .local v4, "isForeground":Z
    :goto_0
    if-nez v4, :cond_1

    const-string v5, "com.oneplus.deskclock"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 203
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v1    # "flags":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "isForeground":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createAppOpsItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_1

    .line 216
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    .line 218
    :goto_1
    move v1, v2

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 219
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow;->addMenuView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/view/ViewGroup;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 221
    .end local v1    # "i":I
    :cond_3
    if-eqz p1, :cond_4

    .line 222
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->resetState(Z)V

    goto :goto_4

    .line 224
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 226
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserTouching:Z

    if-nez v1, :cond_6

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v2

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v2

    neg-float v2, v2

    :goto_3
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    .line 232
    :cond_6
    :goto_4
    return-void
.end method

.method public static createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 619
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 620
    const v2, 0x7f0d00f5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 621
    .local v1, "content":Lcom/android/systemui/statusbar/NotificationSnooze;
    const v2, 0x7f11041f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "snoozeDescription":Ljava/lang/String;
    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;

    const v4, 0x7f080385

    invoke-direct {v3, p0, v2, v1, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V

    .line 624
    .local v3, "snooze":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    return-object v3
.end method

.method private dismiss(Landroid/view/View;F)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->cancelDrag()V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->dismiss(Landroid/view/View;F)V

    .line 398
    return-void
.end method

.method private fadeInMenu(F)V
    .locals 6
    .param p1, "notiThreshold"    # F

    .line 566
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 570
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 572
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    .line 573
    .local v0, "transX":F
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    cmpl-float v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 574
    .local v1, "fromLeft":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 575
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    aput v5, v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 576
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow$1;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;FZF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 588
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationMenuRow$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/NotificationMenuRow$2;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 608
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 609
    return-void

    .line 567
    .end local v0    # "transX":F
    .end local v1    # "fromLeft":Z
    :cond_3
    :goto_1
    return-void
.end method

.method private getSpaceForMenu()F
    .locals 2

    .line 548
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 307
    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 308
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v4, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    .line 313
    :goto_0
    return v5

    .line 316
    :cond_1
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result v4

    .line 317
    .local v4, "gestureTowardsMenu":Z
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 318
    invoke-interface {v6}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->getMinDismissVelocity()F

    move-result v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 319
    .local v6, "gestureFastEnough":Z
    :goto_1
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    iget v9, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 320
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->swipedFarEnough(FF)Z

    move-result v8

    .line 321
    .local v8, "gestureFarEnough":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-double v9, v9

    .line 322
    .local v9, "timeForGesture":D
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v11

    if-nez v11, :cond_3

    const-wide/high16 v11, 0x4069000000000000L    # 200.0

    cmpl-double v11, v9, v11

    if-ltz v11, :cond_3

    move v11, v5

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 324
    .local v11, "showMenuForSlowOnGoing":Z
    :goto_2
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v12

    goto :goto_3

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v12

    neg-float v12, v12

    .line 340
    .local v12, "menuSnapTarget":F
    :goto_3
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    if-eqz v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v13

    if-eqz v13, :cond_d

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-ne v13, v14, :cond_d

    .line 343
    iget v13, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v14

    .line 345
    .local v13, "maximumSwipeDistance":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->getSpaceForMenu()F

    move-result v14

    sub-float/2addr v14, v13

    .line 346
    .local v14, "targetLeft":F
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3f19999a    # 0.6f

    mul-float v15, v15, v16

    .line 347
    .local v15, "targetRight":F
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v7, :cond_6

    .line 348
    iget v7, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    cmpl-float v7, v7, v14

    if-lez v7, :cond_5

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    cmpg-float v7, v7, v15

    if-gez v7, :cond_5

    goto :goto_5

    .line 349
    :cond_5
    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    iget v7, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    neg-float v5, v14

    cmpg-float v5, v7, v5

    if-gez v5, :cond_7

    iget v5, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    neg-float v7, v15

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    goto :goto_4

    .line 350
    .local v5, "withinSnapMenuThreshold":Z
    :goto_5
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v7, :cond_9

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    cmpg-float v7, v7, v14

    if-gez v7, :cond_8

    move/from16 v18, v8

    .end local v8    # "gestureFarEnough":Z
    .local v18, "gestureFarEnough":Z
    :goto_6
    const/16 v17, 0x1

    goto :goto_8

    .end local v18    # "gestureFarEnough":Z
    .restart local v8    # "gestureFarEnough":Z
    :cond_8
    move/from16 v18, v8

    .end local v8    # "gestureFarEnough":Z
    .restart local v18    # "gestureFarEnough":Z
    :goto_7
    const/16 v17, 0x0

    goto :goto_8

    .end local v18    # "gestureFarEnough":Z
    .restart local v8    # "gestureFarEnough":Z
    :cond_9
    iget v7, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    move/from16 v18, v8

    neg-float v8, v14

    .end local v8    # "gestureFarEnough":Z
    .restart local v18    # "gestureFarEnough":Z
    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    goto :goto_6

    :cond_a
    goto :goto_7

    :goto_8
    move/from16 v7, v17

    .line 357
    .local v7, "shouldSnapTo":Z
    if-eqz v5, :cond_b

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v8, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 359
    invoke-direct {v0, v2, v12, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    goto :goto_9

    .line 360
    :cond_b
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v8, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v7, :cond_c

    .line 362
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    goto :goto_9

    .line 364
    :cond_c
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    .line 366
    .end local v5    # "withinSnapMenuThreshold":Z
    .end local v7    # "shouldSnapTo":Z
    .end local v13    # "maximumSwipeDistance":F
    .end local v14    # "targetLeft":F
    .end local v15    # "targetRight":F
    :goto_9
    goto :goto_a

    .end local v18    # "gestureFarEnough":Z
    .restart local v8    # "gestureFarEnough":Z
    :cond_d
    move/from16 v18, v8

    .end local v8    # "gestureFarEnough":Z
    .restart local v18    # "gestureFarEnough":Z
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v5, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->swipedEnoughToShowMenu()Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v6, :cond_f

    if-nez v11, :cond_f

    :cond_e
    if-eqz v4, :cond_10

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 368
    invoke-interface {v5, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 370
    :cond_f
    invoke-direct {v0, v2, v12, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->showMenu(Landroid/view/View;FF)V

    goto :goto_a

    .line 371
    :cond_10
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v5, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_11

    if-nez v4, :cond_11

    .line 372
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->dismiss(Landroid/view/View;F)V

    goto :goto_a

    .line 374
    :cond_11
    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->snapBack(Landroid/view/View;F)V

    .line 376
    :goto_a
    const/4 v5, 0x1

    return v5
.end method

.method private isMenuLocationChange()Z
    .locals 5

    .line 501
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconPadding:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 502
    .local v0, "onLeft":Z
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconPadding:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 503
    .local v3, "onRight":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 504
    :cond_3
    return v2

    .line 506
    :cond_4
    return v1
.end method

.method private isTowardsMenu(F)Z
    .locals 2
    .param p1, "movement"    # F

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    cmpg-float v0, p1, v1

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-nez v0, :cond_2

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetState(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    .line 238
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 240
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mDismissing:Z

    .line 241
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuReset(Landroid/view/View;)V

    .line 246
    :cond_0
    return-void
.end method

.method private setMenuAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .line 528
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 530
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 533
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 539
    .local v0, "count":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 540
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 542
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setMenuLocation()V
    .locals 9

    .line 510
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 511
    .local v0, "showOnLeft":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eq v0, v3, :cond_5

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    .line 512
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 516
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    .line 517
    .local v3, "count":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 518
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 519
    .local v4, "v":Landroid/view/View;
    int-to-float v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    mul-float/2addr v5, v6

    .line 520
    .local v5, "left":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 521
    .local v6, "right":F
    if-eqz v0, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setX(F)V

    .line 517
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "left":F
    .end local v6    # "right":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 523
    .end local v1    # "i":I
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    .line 524
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 525
    return-void

    .line 514
    .end local v3    # "count":I
    :cond_5
    :goto_3
    return-void
.end method

.method private showMenu(Landroid/view/View;FF)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedOnLeft:Z

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuShown(Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snap(Landroid/view/View;FF)V

    .line 384
    return-void
.end method

.method private snapBack(Landroid/view/View;F)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->cancelDrag()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snap(Landroid/view/View;FF)V

    .line 391
    return-void
.end method

.method private swipedEnoughToShowMenu()Z
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    .line 414
    :cond_0
    const v0, 0x3e19999a    # 0.15f

    .line 415
    .local v0, "multiplier":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    mul-float/2addr v1, v0

    .line 416
    .local v1, "minimumSwipeDistance":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->swipedFarEnough(FF)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mOnLeft:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    neg-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method


# virtual methods
.method public createMenu(Landroid/view/ViewGroup;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createMenuViews(Z)V

    .line 150
    return-void
.end method

.method public getAppOpsMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAppOpsItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object v0
.end method

.method public getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mInfoItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object v0
.end method

.method public getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSnoozeMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnoozeItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object v0
.end method

.method public isMenuVisible()Z
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    if-nez v0, :cond_0

    .line 488
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 492
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 493
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 494
    .local v1, "centerY":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    aget v3, v4, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 495
    .local v2, "x":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParentLocation:[I

    aget v4, v5, v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 496
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 497
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-interface {v5, v6, v2, v3, v7}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;->onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 498
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;)V

    .line 179
    return-void
.end method

.method public onHeightUpdate()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    .line 456
    .local v0, "parentHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_1

    .line 457
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .local v1, "translationY":F
    goto :goto_0

    .line 459
    .end local v1    # "translationY":F
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mVertSpaceForIcons:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHorizSpaceForIcon:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    .line 461
    .restart local v1    # "translationY":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 462
    return-void

    .line 452
    .end local v0    # "parentHeight":I
    .end local v1    # "translationY":F
    :cond_2
    :goto_1
    return-void
.end method

.method public onLayout()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIconsPlaced:Z

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeListener()V

    .line 186
    return-void
.end method

.method public onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createMenuViews(Z)V

    .line 174
    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;F)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "velocity"    # F

    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 251
    .local v0, "action":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 296
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserTouching:Z

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->cancelDrag()V

    .line 298
    return v2

    .line 264
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    sub-float/2addr v3, v4

    .line 266
    .local v3, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    .line 267
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isTowardsMenu(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuLocationChange()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuSnappedTo:Z

    .line 272
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 274
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    goto :goto_0

    .line 277
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuLocation()V

    .line 281
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mShouldShowMenu:Z

    if-eqz v4, :cond_4

    .line 282
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 283
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 284
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    .line 285
    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 287
    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;Lcom/android/systemui/statusbar/NotificationMenuRow$1;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    const-wide/16 v5, 0x3c

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 293
    .end local v3    # "diffX":F
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserTouching:Z

    .line 294
    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;F)Z

    move-result v1

    return v1

    .line 253
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSnapping:Z

    .line 254
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 257
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mCheckForDrag:Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;

    .line 259
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mPrevX:F

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mIsUserTouching:Z

    .line 261
    nop

    .line 300
    :cond_4
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTranslationUpdate(F)V
    .locals 6
    .param p1, "translation"    # F

    .line 466
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mTranslation:F

    .line 467
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mAnimating:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuFadedIn:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    .line 472
    .local v0, "fadeThreshold":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 473
    .local v1, "absTrans":F
    const/4 v2, 0x0

    .line 474
    .local v2, "desiredAlpha":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    .line 475
    const/4 v2, 0x0

    goto :goto_0

    .line 476
    :cond_1
    cmpg-float v3, v1, v0

    if-gtz v3, :cond_2

    .line 477
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 479
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v1, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 481
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->setMenuAlpha(F)V

    .line 482
    return-void

    .line 469
    .end local v0    # "fadeThreshold":F
    .end local v1    # "absTrans":F
    .end local v2    # "desiredAlpha":F
    :cond_3
    :goto_1
    return-void
.end method

.method public resetMenu()V
    .locals 1

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationMenuRow;->resetState(Z)V

    .line 165
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 9
    .param p1, "appName"    # Ljava/lang/String;

    .line 432
    if-nez p1, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 436
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 437
    .local v1, "count":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 438
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 439
    .local v4, "item":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    const v5, 0x7f11041c

    .line 440
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 441
    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getContentDescription()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 439
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "description":Ljava/lang/String;
    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getMenuView()Landroid/view/View;

    move-result-object v6

    .line 443
    .local v6, "menuView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 444
    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 437
    .end local v4    # "item":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "menuView":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 447
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public setMenuClickListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mMenuListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 144
    return-void
.end method

.method public setMenuItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 615
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    return-void
.end method

.method public setSwipeActionHelper(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow;->mSwipeHelper:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 139
    return-void
.end method

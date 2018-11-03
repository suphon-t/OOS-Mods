.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;
    }
.end annotation


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Landroid/view/View;

.field private mCustomizing:Z

.field private mDivider:Landroid/view/View;

.field private mDragLabel:Landroid/widget/TextView;

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHasNavBar:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private final mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mToolbar:Landroid/widget/Toolbar;

.field private mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 112
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120526

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 527
    new-instance v0, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$jyG9W7OYQzaSrDHqhU5p9dAeqes;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$jyG9W7OYQzaSrDHqhU5p9dAeqes;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 537
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 560
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizer$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$5;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 118
    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/view/View;

    .line 121
    new-instance v1, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 122
    const v0, 0x1020180

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 123
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x101030b

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 125
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f080350

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 125
    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f080351

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, p0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    const v3, 0x7f1104ae

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 166
    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 167
    const v1, 0x7f0a0447

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 168
    const v1, 0x7f0a0225

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    const v3, 0x7f0a0446

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    const v3, 0x7f0a0224

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 171
    const v1, 0x7f0a011a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    .line 175
    new-instance v1, Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-direct {v1, p1, v3, v4, v5}, Lcom/android/systemui/qs/customize/QSEditPageManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSEditViewPager;Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isLayoutRtl()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    .line 177
    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-direct {v1, p1, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 179
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const-string v4, "buttons_show_on_screen_navkeys"

    const/4 v5, 0x0

    invoke-direct {v1, p0, v3, v5, v4}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->getValue(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    .line 188
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackdrop(Z)V

    .line 191
    const v1, 0x7f0a0113

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDivider:Landroid/view/View;

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 195
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyDragListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "x1"    # Z

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackdrop(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "x1"    # Z

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/QSEditPageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    if-nez v0, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hideNoAnimation()V

    .line 535
    :cond_1
    return-void
.end method

.method private queryTiles()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 399
    return-void
.end method

.method private reset()V
    .locals 6

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v0, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v2, 0x7f110520

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "defTiles":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 469
    .local v5, "tile":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v5    # "tile":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    .line 475
    return-void
.end method

.method private save()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 496
    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 3
    .param p1, "customizing"    # Z

    .line 441
    const-string v0, "QSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomizing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 444
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 445
    return-void
.end method

.method private setTileSpecs()V
    .locals 4

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v0, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 480
    .local v2, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v2    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setTileSpecs(Ljava/util/List;)V

    .line 487
    return-void
.end method

.method private updateNavBackdrop(Z)V
    .locals 2
    .param p1, "shouldShow"    # Z

    .line 325
    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, "navBackdrop":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 327
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 330
    return-void
.end method

.method private updateNavColors()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    .line 335
    return-void
.end method


# virtual methods
.method public hide(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "QSCustomizer"

    const-string v1, "hide edit UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 408
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 409
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 419
    :cond_0
    return-void
.end method

.method public hideNoAnimation()V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 426
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    .line 428
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 432
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 211
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 212
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 315
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(II)V

    goto :goto_0

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHasNavBar:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackdrop(Z)V

    .line 322
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNavBarSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 221
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 222
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 223
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 235
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateThemeColor()V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v2, 0x10405af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 239
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 456
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x167

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    .line 462
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 229
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isLayoutRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    .line 231
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 507
    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 508
    .local v0, "customizing":Z
    if-eqz v0, :cond_0

    .line 509
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 510
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 520
    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 500
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 501
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 503
    :cond_0
    const-string v0, "qs_customizing"

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0
    .param p1, "notificationsQsContainer"    # Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 347
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 348
    return-void
.end method

.method public setEditLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 523
    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 524
    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 525
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 338
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 344
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0
    .param p1, "qs"    # Lcom/android/systemui/plugins/qs/QS;

    .line 351
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 352
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 357
    const-string v0, "QSCustomizer"

    const-string v1, "show edit UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 360
    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 363
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 370
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 377
    :cond_0
    return-void
.end method

.method public showImmediately()V
    .locals 3

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->showBackground()V

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 386
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 388
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 395
    :cond_0
    return-void
.end method

.method protected updateThemeColor()V
    .locals 11

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "back":Landroid/widget/ImageButton;
    const/4 v1, 0x0

    .line 244
    .local v1, "title":Landroid/widget/TextView;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 245
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v4, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 246
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 247
    move-object v0, v4

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_1

    .line 248
    :cond_0
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 249
    move-object v1, v4

    check-cast v1, Landroid/widget/TextView;

    .line 244
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    sget v2, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    invoke-static {v2}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 254
    .local v2, "primaryColor":I
    sget v3, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v3}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    .line 255
    .local v3, "buttonColor":I
    sget v4, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v4}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v4

    .line 257
    .local v4, "primaryTextColor":I
    sget v5, Lcom/android/systemui/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    invoke-static {v5}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v5

    .line 258
    .local v5, "secondaryTextColor":I
    sget v6, Lcom/android/systemui/util/ThemeColorUtils;->QS_SEPARATOR:I

    invoke-static {v6}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v6

    .line 262
    .local v6, "dividerColor":I
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 263
    const/4 v7, -0x1

    goto :goto_2

    .line 264
    :cond_3
    sget v7, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v7}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v7

    .line 266
    .local v7, "accentColor":I
    :goto_2
    sget v8, Lcom/android/systemui/util/ThemeColorUtils;->QS_EDIT_BOTTOM:I

    invoke-static {v8}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v8

    .line 268
    .local v8, "bottomColor":I
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/customize/QSCustomizer;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 271
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/view/View;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 272
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v9, v8}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setBackgroundColor(I)V

    .line 274
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v9, v2}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setBackgroundColor(I)V

    .line 275
    const v9, 0x7f0a0412

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    const v9, 0x7f0a0448

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 277
    const v9, 0x7f0a0226

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 279
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 280
    const v9, 0x7f080577

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 281
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getPopTheme()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 282
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v9}, Landroid/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 286
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 287
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v9, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDivider:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 290
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    return-void
.end method

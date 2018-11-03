.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/statusbar/phone/NavGesture;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final COLOR_BACKGROUND_DARK:I

.field private final COLOR_BACKGROUND_LIGHT:I

.field private final COLOR_BACKGROUND_TRANSPARENT:I

.field private final COLOR_KEY_CTS:I

.field private final COLOR_KEY_DARK:I

.field private final COLOR_KEY_LIGHT:I

.field private final COLOR_KEY_TRANSPARENT:I

.field private isHideNavBarOn:Z

.field private mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackButtonBounds:Landroid/graphics/Rect;

.field private mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackgroundColor:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private final mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDeadZoneConsuming:Z

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mDownHitTarget:I

.field private mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHomeButtonBounds:Landroid/graphics/Rect;

.field private mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mImeShow:Z

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mInCarMode:Z

.field public mIsCustomNavBar:Z

.field private mIsImmersiveSticky:Z

.field private mIsLightBar:Z

.field public mIsSupportHideNavBar:Z

.field private mKeyguardShow:Z

.field private mLastButtonColor:I

.field private mLastRippleColor:I

.field private mLayoutTransitionsEnabled:Z

.field mLongClickableAccessibilityButton:Z

.field private mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private final mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mRecentsButtonBounds:Landroid/graphics/Rect;

.field private mRecentsComponent:Lcom/android/systemui/RecentsComponent;

.field private mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

.field private mRotateBtnStyle:I

.field private mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

.field mRotatedViews:[Landroid/view/View;

.field private mRotationButtonBounds:Landroid/graphics/Rect;

.field mShowAccessibilityButton:Z

.field mShowMenu:Z

.field private mShowNavKey:Z

.field mShowRotateButton:Z

.field private mStatusBarExpanded:Z

.field private mTmpPosition:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field mVertical:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 316
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 116
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 126
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 128
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    .line 131
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    .line 132
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    .line 133
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    .line 134
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    .line 152
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 161
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 170
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 179
    const v2, 0x7f1202fb

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateBtnStyle:I

    .line 189
    const/high16 v2, -0x67000000

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_CTS:I

    .line 192
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    .line 193
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    .line 195
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    .line 196
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 197
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarExpanded:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsSupportHideNavBar:Z

    .line 256
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 287
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 454
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 1685
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$rZTKiGVTHMScp1MOeQG9jGW8tDA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$rZTKiGVTHMScp1MOeQG9jGW8tDA;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    .line 318
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 319
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 321
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 322
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 324
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 327
    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 328
    new-instance v0, Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;-><init>(Landroid/content/Context;Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 330
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 334
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a006f

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a019e

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0354

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0249

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a01b0

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a000c

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a036e

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a024a

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    .line 350
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportHideNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsSupportHideNavBar:Z

    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsSupportHideNavBar:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0283

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    :cond_0
    const v0, 0x7f060366

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_LIGHT:I

    .line 357
    const v0, 0x7f060365

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_DARK:I

    .line 358
    const v0, 0x7f060367

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_TRANSPARENT:I

    .line 359
    const v0, 0x7f060369

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    .line 360
    const v0, 0x7f060368

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    .line 361
    const v0, 0x7f06036a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    .line 363
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DeadZone;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 364
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyAppCustomColor()V
    .locals 2

    .line 672
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLightColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    const/high16 v1, -0x1000000

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 674
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isDarkColor(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 675
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 677
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 679
    :goto_0
    return-void
.end method

.method private chooseNavigationIconDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;
    .param p3, "icon"    # I
    .param p4, "quickStepIcon"    # I

    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 900
    .local v0, "quickStepEnabled":Z
    if-eqz v0, :cond_0

    .line 901
    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 902
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 900
    :goto_0
    return-object v1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "button"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    if-nez p2, :cond_0

    .line 1672
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1678
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1679
    return-void
.end method

.method private getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "carMode"    # Z
    .param p2, "landscape"    # Z

    .line 944
    if-eqz p2, :cond_1

    .line 945
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    .line 946
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 944
    :goto_0
    return-object v0
.end method

.method private getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "carMode"    # Z
    .param p2, "landscape"    # Z

    .line 938
    if-eqz p2, :cond_1

    .line 939
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    .line 940
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 938
    :goto_0
    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "lightIcon"    # I
    .param p3, "darkIcon"    # I

    .line 919
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 920
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 919
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;
    .param p3, "icon"    # I

    .line 907
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;
    .param p3, "icon"    # I
    .param p4, "hasShadow"    # Z

    .line 912
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 913
    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 912
    invoke-static {p1, v0, v1, p4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "lightColor"    # I
    .param p4, "darkColor"    # I

    .line 925
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;II)Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .line 1551
    if-eqz p1, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1554
    .local v0, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1555
    :catch_0
    move-exception v1

    .line 1556
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    return-object v2

    .line 1559
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string v0, "(null)"

    return-object v0
.end method

.method private hasPinnedHeadsUp()Z
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDarkColor(I)Z
    .locals 1
    .param p1, "color"    # I

    .line 566
    const/high16 v0, -0x1000000

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLegible(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLegible(II)Z
    .locals 4
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .line 571
    const/16 v0, 0xff

    invoke-static {p2, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    .line 572
    invoke-static {p1, p2}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLightColor(I)Z
    .locals 1
    .param p1, "color"    # I

    .line 562
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLegible(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "exists"    # Ljava/lang/Boolean;

    .line 1686
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    .line 1687
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1688
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "exists"    # Ljava/lang/Boolean;

    .line 1685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$4XDnqGNkJ613pDIbZ7uGeE4B1z4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$4XDnqGNkJ613pDIbZ7uGeE4B1z4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyNavBarColorChange(IZ)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "expanded"    # Z

    .line 582
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCTS()Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 583
    const/high16 v0, -0x67000000

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 584
    return-void

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    .line 593
    .local v0, "barMode":I
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 594
    const-string v2, "StatusBar/NavBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNavBarColorChange barMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mImeShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mKeyguardShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", expanded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasPinnedHeadsUp(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hasPinnedHeadsUp()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDockedStackExists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsLightBar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", color: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 594
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v2, :cond_5

    .line 605
    if-ne v0, v3, :cond_4

    .line 606
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_1

    .line 608
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 610
    :goto_1
    return-void

    .line 613
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hasPinnedHeadsUp()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-nez v2, :cond_7

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    if-nez v2, :cond_7

    .line 617
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    .line 621
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 622
    return-void

    .line 625
    :cond_7
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 627
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v2, :cond_8

    .line 628
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 629
    return-void

    .line 632
    :cond_8
    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    if-ne v0, v3, :cond_9

    goto/16 :goto_5

    .line 635
    :cond_9
    if-nez v0, :cond_b

    .line 636
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 637
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_2

    .line 639
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 641
    :goto_2
    return-void

    .line 642
    :cond_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 643
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 644
    return-void

    .line 647
    :cond_c
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isHomeApp()Z

    move-result v2

    if-nez v2, :cond_d

    .line 648
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 649
    return-void

    .line 652
    :cond_d
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 653
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 655
    :cond_e
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    if-eqz v2, :cond_f

    .line 656
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 658
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    if-nez v2, :cond_10

    .line 659
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 661
    :cond_10
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_LIGHT:I

    if-ne v2, v3, :cond_11

    .line 662
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 663
    :cond_11
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_DARK:I

    if-eq v2, v3, :cond_13

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    if-ne v2, v1, :cond_12

    goto :goto_3

    .line 667
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->applyAppCustomColor()V

    goto :goto_4

    .line 665
    :cond_13
    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 669
    :goto_4
    return-void

    .line 633
    :cond_14
    :goto_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 634
    return-void
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1
    .param p1, "newVertical"    # Z

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    .line 1487
    :cond_0
    return-void
.end method

.method private orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 3
    .param p1, "drawable"    # Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 887
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 889
    .local v0, "useAltBack":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 890
    const/high16 v1, -0x3d4c0000    # -90.0f

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 889
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 891
    return-void
.end method

.method private orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 894
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 895
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/4 v1, 0x0

    const/16 v2, 0x21ee

    invoke-virtual {v0, v2, v1, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1565
    return-void
.end method

.method private reloadNavIcons()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 538
    return-void
.end method

.method private setSlippery(Z)V
    .locals 5
    .param p1, "slippery"    # Z

    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1169
    .local v1, "navbarView":Landroid/view/ViewGroup;
    nop

    .line 1170
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1171
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez v2, :cond_0

    .line 1172
    return-void

    .line 1174
    :cond_0
    const/high16 v3, 0x20000000

    if-eqz p1, :cond_1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_1

    .line 1175
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1176
    const/4 v0, 0x1

    goto :goto_0

    .line 1177
    :cond_1
    if-nez p1, :cond_2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 1178
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1179
    const/4 v0, 0x1

    .line 1183
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1184
    const-string v3, "StatusBar/NavBarView"

    const-string v4, "isn\'t attached"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void

    .line 1189
    :cond_3
    if-eqz v0, :cond_4

    .line 1190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1191
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_4
    return-void
.end method

.method private setUpSwipeUpOnboarding(Z)V
    .locals 1
    .param p1, "connectedToOverviewProxy"    # Z

    .line 1600
    if-eqz p1, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onConnectedToLauncher()V

    goto :goto_0

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    .line 1605
    :goto_0
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 4
    .param p1, "useFadingAnimations"    # Z

    .line 1108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1109
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1110
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_4

    .line 1111
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1112
    .local v1, "old":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1113
    const v2, 0x7f12000d

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 1114
    :cond_1
    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 1115
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1120
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1121
    const-string v2, "StatusBar/NavBarView"

    const-string/jumbo v3, "view isn\'t attached"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1126
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1127
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    .end local v1    # "old":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    goto :goto_2

    .line 1117
    .restart local v1    # "old":Z
    :cond_3
    return-void

    .line 1129
    .end local v1    # "old":Z
    :cond_4
    :goto_2
    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    return v1

    .line 428
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 431
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 432
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 433
    goto :goto_1

    .line 437
    :cond_2
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 438
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 441
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showNavKey()Z
    .locals 3

    .line 712
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 713
    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNavKey mShowNavKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isHomeApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isHomeApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isScreenCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mImeShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mKeyguardShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isMultiWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isScreenSaveron: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isImmersiveSticky: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSystemUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSystemUI()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    if-eqz v0, :cond_1

    .line 725
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isHomeApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarExpanded:Z

    if-nez v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-nez v0, :cond_1

    .line 733
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSystemUI()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 724
    :goto_0
    return v0
.end method

.method private updateButtonColor(II)V
    .locals 1
    .param p1, "buttonColor"    # I
    .param p2, "rippleColor"    # I

    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(IIZ)V

    .line 683
    return-void
.end method

.method private updateButtonColor(IIZ)V
    .locals 6
    .param p1, "buttonColor"    # I
    .param p2, "rippleColor"    # I
    .param p3, "force"    # Z

    .line 686
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 687
    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateButtonColor buttonColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_2

    .line 691
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StatusBar/NavBarView"

    const-string/jumbo v1, "updateButtonColor: update the same color, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    return-void

    .line 694
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    .line 695
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    .line 697
    const/4 v0, 0x0

    move v1, v0

    .line 697
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 698
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object v2

    .line 699
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 700
    .local v3, "N":I
    move v4, v0

    .line 700
    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 701
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v5, :cond_3

    .line 702
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 703
    .local v5, "v":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateThemeColor(I)V

    .line 704
    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setRippleColor(I)V

    .line 700
    .end local v5    # "v":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 697
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "N":I
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    .line 709
    return-void
.end method

.method private updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "button"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .param p2, "buttonBounds"    # Landroid/graphics/Rect;

    .line 1365
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1366
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1367
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1368
    return-void

    .line 1371
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1372
    .local v1, "posX":F
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 1373
    .local v2, "posY":F
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1374
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1375
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1376
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, v7, v4

    .line 1377
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v6, v7, v6

    .line 1378
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1376
    invoke-virtual {p2, v3, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1379
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1380
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1381
    return-void
.end method

.method private updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1509
    const/4 v0, 0x0

    .line 1510
    .local v0, "uiCarModeChanged":Z
    if-eqz p1, :cond_1

    .line 1511
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 1512
    .local v1, "uiMode":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1514
    .local v2, "isCarMode":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    if-eq v2, v4, :cond_1

    .line 1515
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 1521
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 1525
    .end local v1    # "uiMode":I
    .end local v2    # "isCarMode":Z
    :cond_1
    return v0
.end method

.method private updateCurrentView()V
    .locals 5

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1398
    .local v0, "rot":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 1399
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v3, v3, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1401
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 1402
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 1404
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 1405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 1406
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 1407
    return-void
.end method

.method private updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .line 796
    const v0, 0x7f04010a

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 797
    .local v0, "dualToneDarkTheme":I
    const v1, 0x7f040245

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 798
    .local v1, "dualToneLightTheme":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 799
    .local v2, "lightContext":Landroid/content/Context;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 801
    .local v3, "darkContext":Landroid/content/Context;
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iget v5, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_2

    .line 804
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v4, :cond_1

    .line 805
    const v4, 0x7f0805f9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    goto :goto_0

    .line 806
    :cond_1
    const v4, 0x7f0805f8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 808
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 810
    :cond_2
    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v4, v5, :cond_3

    .line 811
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 812
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 814
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackAltDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 818
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v4, :cond_4

    .line 819
    const v4, 0x7f080606

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    goto :goto_1

    .line 820
    :cond_4
    const v4, 0x7f080605

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 822
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v4, :cond_5

    .line 823
    const v4, 0x7f080602

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    goto :goto_2

    .line 824
    :cond_5
    const v4, 0x7f080601

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 827
    const v4, 0x7f0805ee

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 830
    const v4, 0x7f0804a4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 833
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateBtnStyle:I

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotateSuggestionButtonStyle(IZ)V

    .line 839
    :cond_6
    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 7

    .line 1089
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1090
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0287

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1091
    .local v3, "navButtons":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 1092
    .local v4, "lt":Landroid/animation/LayoutTransition;
    if-eqz v4, :cond_2

    .line 1093
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1095
    invoke-virtual {v4, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1096
    invoke-virtual {v4, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1097
    invoke-virtual {v4, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    .line 1099
    :cond_1
    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1100
    invoke-virtual {v4, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1101
    invoke-virtual {v4, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1102
    invoke-virtual {v4, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1105
    :cond_2
    :goto_1
    return-void
.end method

.method private updateRecentsIcon()V
    .locals 2

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 1411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 1413
    return-void
.end method

.method private updateRotatedViews()V
    .locals 4

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 1385
    const v2, 0x7f0a036c

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 1387
    const v2, 0x7f0a036d

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 1389
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 1390
    return-void
.end method

.method private updateSlippery()V
    .locals 1

    .line 1162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

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
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 1164
    return-void
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    .line 1461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-nez v0, :cond_0

    return-void

    .line 1462
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1463
    .local v0, "isRtl":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->setBarState(ZZ)V

    .line 1464
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .line 1568
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 1574
    const-string v0, "VISIBLE"

    return-object v0

    .line 1572
    :cond_0
    const-string v0, "GONE"

    return-object v0

    .line 1570
    :cond_1
    const-string v0, "INVISIBLE"

    return-object v0
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    .line 452
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1625
    const-string v0, "NavigationBarView {"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1627
    .local v0, "r":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1628
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 1630
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1634
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    const/4 v5, 0x1

    if-gt v2, v4, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 1635
    .local v2, "offscreen":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      window: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    if-eqz v2, :cond_2

    const-string v6, " OFFSCREEN!"

    goto :goto_2

    :cond_2
    const-string v6, ""

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1635
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    const-string v4, "      mCurrentView: id=%s (%dx%d) %s %f"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 1641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1642
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 1643
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const/4 v7, 0x4

    .line 1644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v6, v7

    .line 1640
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    const-string v4, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 1647
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1648
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "true"

    goto :goto_3

    :cond_3
    const-string v3, "false"

    :goto_3
    aput-object v3, v6, v5

    .line 1649
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "true"

    goto :goto_4

    :cond_4
    const-string v3, "false"

    :goto_4
    aput-object v3, v6, v8

    .line 1646
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    const-string v3, "back"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1652
    const-string v3, "home"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1653
    const-string v3, "rcnt"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1654
    const-string v3, "menu"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1655
    const-string v3, "a11y"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1657
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v3, p2}, Lcom/android/systemui/recents/RecentsOnboarding;->dump(Ljava/io/PrintWriter;)V

    .line 1659
    const-string v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    return-void
.end method

.method public getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBackAltDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 859
    .local v0, "quickStepEnabled":Z
    if-eqz v0, :cond_0

    .line 860
    const v1, 0x7f0805f4

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 861
    :cond_0
    const v1, 0x7f0805f2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 859
    :goto_0
    return-object v1
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBackDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;

    .line 843
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const v0, 0x7f0805f0

    const v1, 0x7f0805f7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 846
    .local v0, "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 847
    return-object v0

    .line 850
    .end local v0    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :cond_0
    const v0, 0x7f0805ef

    const v1, 0x7f0805f6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 852
    .restart local v0    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 853
    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method getButtonAtPosition(II)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1299
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 1300
    .local v1, "button":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 1301
    .local v2, "buttonView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1302
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1303
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1304
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1305
    return-object v1

    .line 1298
    .end local v1    # "button":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .end local v2    # "buttonView":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1309
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getDownHitTarget()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    return v0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getHomeDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;

    .line 867
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 869
    .local v0, "quickStepEnabled":Z
    if-eqz v0, :cond_0

    .line 870
    const v1, 0x7f0805fe

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 871
    :cond_0
    const v2, 0x7f0805fb

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 873
    .local v1, "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 874
    return-object v1

    .line 877
    .end local v0    # "quickStepEnabled":Z
    .end local v1    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 878
    .restart local v0    # "quickStepEnabled":Z
    if-eqz v0, :cond_2

    .line 879
    const v1, 0x7f0805fd

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_1

    .line 880
    :cond_2
    const v2, 0x7f0805fa

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 882
    .restart local v1    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 883
    return-object v1
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a01b0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0249

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0283

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a036e

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public inScreenPinning()Z
    .locals 1

    .line 1074
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    return v0
.end method

.method public isOverviewEnabled()Z
    .locals 2

    .line 511
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuickScrubEnabled()Z
    .locals 2

    .line 519
    const-string v0, "persist.quickstep.scrub.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 520
    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 521
    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getInteractionFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 519
    :goto_0
    return v1
.end method

.method public isQuickStepSwipeUpEnabled()Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecentsButtonVisible()Z
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRotateButtonVisible()Z
    .locals 1

    .line 1292
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    return v0
.end method

.method public isScreenSaverOn()Z
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsReorient(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .line 1393
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyNavBarColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(IZ)V

    .line 577
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1664
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1665
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1664
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setPadding(IIII)V

    .line 1666
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1580
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1581
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestApplyInsets()V

    .line 1582
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    .line 1584
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 1586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1587
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1491
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1492
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 1493
    .local v0, "uiCarModeChanged":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1496
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1497
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 1498
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1500
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1502
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1503
    return-void
.end method

.method public onDarkIntensityChange(F)V
    .locals 1
    .param p1, "intensity"    # F

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onDarkIntensityChange(F)V

    .line 1344
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1591
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1592
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    .line 1596
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1597
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 1350
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1351
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1314
    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 1320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotatedViews()V

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    .line 1326
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_navigation_bar_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    .line 1331
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_gesture_button_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 1334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1338
    :cond_2
    return-void
.end method

.method public onImmersiveSticky(Z)V
    .locals 3
    .param p1, "isImmersiveSticky"    # Z

    .line 764
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImmersiveSticky "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    .line 766
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 769
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 392
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 393
    return v1

    .line 395
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 398
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 399
    .local v2, "y":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    goto :goto_0

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    goto :goto_0

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    .line 407
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 408
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    .line 412
    .end local v0    # "x":I
    .end local v2    # "y":I
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1355
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1360
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onLayout(ZIIII)V

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavBarHeight(I)V

    .line 1362
    return-void
.end method

.method public onNavigationButtonLongPress(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onNavigationButtonLongPress(Landroid/view/View;)V

    .line 1133
    return-void
.end method

.method public onPanelExpandedChange(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .line 1136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1137
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavGesture;
    .param p2, "context"    # Landroid/content/Context;

    .line 1609
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;->getGestureHelper()Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    .line 1610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1611
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    .line 1615
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;-><init>(Landroid/content/Context;)V

    .line 1616
    .local v0, "defaultHelper":Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 1617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    .line 1620
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    .line 1621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1622
    return-void
.end method

.method public onShowKeyguard(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 738
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-ne v0, p1, :cond_0

    .line 739
    return-void

    .line 742
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    .line 744
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 746
    .local v0, "shoudldBlockChangeColor":Z
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 748
    .local v1, "naviBarColor":I
    :goto_1
    if-nez v0, :cond_3

    .line 749
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 752
    .end local v0    # "shoudldBlockChangeColor":Z
    .end local v1    # "naviBarColor":I
    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1468
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "StatusBar/NavBarView"

    const-string v3, "onSizeChanged: (%dx%d) old: (%dx%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 1469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1468
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 1472
    .local v0, "newVertical":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_2

    .line 1473
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 1475
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1476
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 1479
    :cond_2
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 1480
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1481
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 417
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 418
    return v1

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    return v1

    .line 423
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshButtonColor()V
    .locals 3

    .line 783
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(IIZ)V

    .line 784
    return-void
.end method

.method public reorient()V
    .locals 3

    .line 1430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 1432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onConfigurationChanged(I)V

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    .line 1437
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1445
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1446
    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reorient(): rot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->resolveLayoutDirection()Z

    .line 1454
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVertical(Z)V

    .line 1458
    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "longClickable"    # Z

    .line 1214
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    .line 1215
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 1216
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1218
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1220
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setRotateButtonVisibility(Z)I

    .line 1223
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz p1, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 1225
    return-void
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 1
    .param p1, "recentsComponent"    # Lcom/android/systemui/RecentsComponent;
    .param p2, "divider"    # Lcom/android/systemui/stackdivider/Divider;
    .param p3, "panel"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 376
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    .line 377
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 378
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 383
    :cond_0
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 2
    .param p1, "disabledFlags"    # I

    .line 976
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    .line 979
    .local v0, "overviewEnabledBefore":Z
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 982
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 987
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 988
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 989
    return-void
.end method

.method public setHideNavBarOn(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 543
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    if-eqz v0, :cond_0

    .line 545
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 547
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 549
    :goto_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 930
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 935
    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1078
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 1079
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 1080
    return-void
.end method

.method public setLightBar(Z)V
    .locals 1
    .param p1, "isLightBar"    # Z

    .line 772
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    .line 774
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 776
    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1197
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .line 1200
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1202
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 1205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1210
    .local v0, "shouldShow":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1211
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 3
    .param p1, "hints"    # I

    .line 950
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    .line 951
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 952
    .local v0, "backAlt":Z
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 953
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 960
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 961
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 964
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 965
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    .line 966
    if-eqz v0, :cond_3

    .line 967
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    goto :goto_1

    .line 969
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 973
    :cond_4
    :goto_1
    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 1
    .param p1, "onVerticalChangedListener"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 386
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 387
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 388
    return-void
.end method

.method public setRotateButtonVisibility(Z)I
    .locals 4
    .param p1, "visible"    # Z

    .line 1266
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1267
    .local v1, "adjVisible":Z
    :goto_0
    if-eqz v1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 1270
    .local v2, "vis":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v3

    if-ne v2, v3, :cond_2

    return v2

    .line 1272
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1273
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    .line 1276
    if-nez p1, :cond_3

    .line 1277
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1278
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_3

    .line 1279
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1280
    .local v3, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 1281
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 1286
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1289
    return v2
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0
    .param p1, "wakeAndUnlocking"    # Z

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 1084
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    .line 1085
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 1086
    return-void
.end method

.method public updateNavButtonIcon(Z)V
    .locals 3
    .param p1, "mHide"    # Z

    .line 1417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080604

    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 1420
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080603

    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 1418
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1422
    :cond_1
    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 14

    .line 995
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 999
    .local v0, "useAltBack":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v3, :cond_2

    .line 1000
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 1002
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    goto :goto_1

    .line 1003
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    .line 1004
    .local v3, "backIcon":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 1005
    .local v4, "homeIcon":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_5

    .line 1006
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1007
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1009
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1010
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1012
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1015
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    move v5, v1

    goto :goto_3

    :cond_6
    move v5, v2

    .line 1019
    .local v5, "showImeButton":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    const/4 v7, 0x4

    if-eqz v5, :cond_7

    move v8, v2

    goto :goto_4

    :cond_7
    move v8, v7

    :goto_4
    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1023
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1027
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1030
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    invoke-virtual {p0, v6, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 1031
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1033
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 1035
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v8, 0x200000

    and-int/2addr v6, v8

    if-eqz v6, :cond_8

    move v6, v1

    goto :goto_5

    :cond_8
    move v6, v2

    .line 1038
    .local v6, "disableHome":Z
    :goto_5
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    move v8, v2

    goto :goto_7

    :cond_a
    :goto_6
    move v8, v1

    .line 1040
    .local v8, "disableRecent":Z
    :goto_7
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v10, 0x400000

    and-int/2addr v9, v10

    if-eqz v9, :cond_b

    if-nez v0, :cond_b

    move v9, v1

    goto :goto_8

    :cond_b
    move v9, v2

    .line 1045
    .local v9, "disableBack":Z
    :goto_8
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v10

    .line 1046
    .local v10, "pinningActive":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v11}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1049
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v11}, Lcom/android/systemui/OverviewProxyService;->getInteractionFlags()I

    move-result v11

    .line 1050
    .local v11, "flags":I
    and-int/lit8 v12, v11, 0x4

    if-nez v12, :cond_c

    goto :goto_9

    :cond_c
    move v1, v2

    :goto_9
    or-int/2addr v8, v1

    .line 1051
    if-eqz v10, :cond_d

    .line 1052
    move v1, v2

    .end local v6    # "disableHome":Z
    .local v1, "disableHome":Z
    move v6, v2

    .line 1054
    .end local v9    # "disableBack":Z
    .end local v11    # "flags":I
    .local v6, "disableBack":Z
    move v9, v6

    move v6, v1

    .end local v1    # "disableHome":Z
    .local v6, "disableHome":Z
    .restart local v9    # "disableBack":Z
    :cond_d
    goto :goto_a

    :cond_e
    if-eqz v10, :cond_f

    .line 1055
    move v8, v2

    move v9, v2

    .line 1058
    :cond_f
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v11, 0x7f0a0287

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1059
    .local v1, "navButtons":Landroid/view/ViewGroup;
    if-eqz v1, :cond_10

    .line 1060
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v11

    .line 1061
    .local v11, "lt":Landroid/animation/LayoutTransition;
    if-eqz v11, :cond_10

    .line 1062
    invoke-virtual {v11}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 1063
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v11, v12}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 1068
    .end local v11    # "lt":Landroid/animation/LayoutTransition;
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v11

    if-eqz v9, :cond_11

    move v12, v7

    goto :goto_b

    :cond_11
    move v12, v2

    :goto_b
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v11

    if-eqz v6, :cond_12

    move v12, v7

    goto :goto_c

    :cond_12
    move v12, v2

    :goto_c
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1070
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v11

    if-eqz v8, :cond_13

    move v2, v7

    nop

    :cond_13
    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1071
    return-void
.end method

.method public updateNavButtonState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 553
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 557
    :cond_1
    return-void
.end method

.method public updateRotateSuggestionButtonStyle(IZ)V
    .locals 12
    .param p1, "style"    # I
    .param p2, "setIcon"    # Z

    .line 1228
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateBtnStyle:I

    .line 1229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1232
    .local v0, "ctx":Landroid/content/Context;
    const v1, 0x7f04010a

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 1233
    .local v1, "dualToneDarkTheme":I
    const v2, 0x7f040245

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    .line 1234
    .local v2, "dualToneLightTheme":I
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1235
    .local v3, "darkContext":Landroid/content/Context;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1236
    .local v4, "lightContext":Landroid/content/Context;
    const v5, 0x7f0403c8

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    .line 1237
    .local v6, "lightColor":I
    invoke-static {v3, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    .line 1240
    .local v5, "darkColor":I
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-direct {v7, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1243
    .local v7, "rotateContext":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    .line 1249
    .local v8, "priorIcon":Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v9, :cond_0

    .line 1250
    const v9, 0x7f080608

    goto :goto_0

    .line 1251
    :cond_0
    const v9, 0x7f080607

    .line 1252
    .local v9, "rotateButtonResId":I
    :goto_0
    invoke-direct {p0, v7, v9, v6, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    .line 1257
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->isDarkIntensitySet()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1258
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->getDarkIntensity()F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->setDarkIntensity(F)V

    .line 1261
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1262
    :cond_2
    return-void
.end method

.method public updateStates()V
    .locals 3

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 1142
    .local v0, "showSwipeUpUI":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonState(Z)V

    .line 1145
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz v1, :cond_1

    .line 1147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 1150
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 1152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1154
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 1155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 1156
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1155
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1157
    return-void
.end method

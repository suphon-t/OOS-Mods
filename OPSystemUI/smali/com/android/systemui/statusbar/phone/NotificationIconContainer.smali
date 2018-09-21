.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mAbsolutePosition:[I

.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStaticLayout:Z

.field private mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mIsolatedIconForAnimation:Landroid/view/View;

.field private mIsolatedIconLocation:Landroid/graphics/Rect;

.field private mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mNumDots:I

.field private mOpenedAmount:F

.field private mOverflowWidth:I

.field private mReplacingIcons:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSpeedBumpIndex:I

.field private mStaticDotDiameter:I

.field private mStaticDotRadius:I

.field private mVisualOverflowStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    .line 69
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    .line 80
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 81
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    .line 116
    const-wide/16 v1, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;-><init>()V

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 143
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 144
    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 145
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 149
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 150
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 152
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 164
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setWillNotDraw(Z)V

    .line 171
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return v0
.end method

.method static synthetic access$300()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 50
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return v0
.end method

.method static synthetic access$600()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 50
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    return-object v0
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 3
    .param p1, "translationX"    # F

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 355
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 356
    return v0

    .line 353
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v0

    return v0
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .line 492
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 495
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    .line 499
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 502
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return v0
.end method

.method private getLayoutEnd()F
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMaxOverflowStart()F
    .locals 2

    .line 554
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private initDimens()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    .line 176
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    .line 177
    return-void
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    return v1

    .line 305
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v0, :cond_1

    .line 306
    return v1

    .line 308
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 309
    .local v0, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 310
    .local v2, "sourceIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "groupKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 312
    .local v4, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-eqz v4, :cond_2

    .line 313
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 314
    .local v5, "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v6, v5, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 315
    const/4 v1, 0x1

    return v1

    .line 318
    .end local v5    # "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2
    return v1
.end method

.method public static synthetic lambda$onViewRemoved$0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method private setIconSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 247
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 253
    return-void
.end method

.method private updateState()V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 259
    return-void
.end method


# virtual methods
.method public applyIconStates()V
    .locals 4

    .line 262
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 264
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 265
    .local v3, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v3, :cond_0

    .line 266
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 262
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 270
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 271
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    .line 273
    return-void
.end method

.method public calculateIconTranslations()V
    .locals 20

    .line 378
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    .line 379
    .local v1, "translationX":F
    const/4 v2, -0x1

    .line 380
    .local v2, "firstOverflowIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    .line 381
    .local v3, "childCount":I
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    .line 382
    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 383
    .local v4, "maxVisibleIcons":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v5

    .line 384
    .local v5, "layoutEnd":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getMaxOverflowStart()F

    move-result v6

    .line 385
    .local v6, "overflowStart":F
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 386
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 387
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 v9, -0x1

    const/4 v11, 0x0

    if-eq v8, v9, :cond_2

    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v12

    if-ge v8, v12, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v11

    .line 388
    .local v8, "hasAmbient":Z
    :goto_1
    move v12, v2

    move v2, v1

    move v1, v11

    .local v1, "i":I
    .local v2, "translationX":F
    .local v12, "firstOverflowIndex":I
    :goto_2
    if-ge v1, v3, :cond_12

    .line 389
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 390
    .local v14, "view":Landroid/view/View;
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 391
    .local v15, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iput v2, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 392
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v13, :cond_3

    .line 393
    iput-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 395
    :cond_3
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    if-eq v13, v9, :cond_4

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    if-lt v1, v13, :cond_4

    iget v13, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v13, v13, v7

    if-gtz v13, :cond_5

    :cond_4
    if-lt v1, v4, :cond_6

    :cond_5
    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    move v13, v11

    .line 398
    .local v13, "forceOverflow":Z
    :goto_3
    if-ne v1, v3, :cond_7

    const/16 v17, 0x1

    goto :goto_4

    :cond_7
    move/from16 v17, v11

    .line 400
    .local v17, "noOverflowAfter":Z
    :goto_4
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v10, :cond_8

    instance-of v10, v14, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v10, :cond_8

    .line 401
    move-object v10, v14

    check-cast v10, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v10

    .line 402
    move/from16 v16, v10

    goto :goto_5

    :cond_8
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_5
    move/from16 v10, v16

    .line 403
    .local v10, "drawingScale":F
    iget v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    cmpl-float v9, v9, v7

    if-eqz v9, :cond_a

    .line 404
    if-eqz v17, :cond_9

    if-nez v8, :cond_9

    if-nez v13, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    move v9, v11

    :goto_6
    move/from16 v17, v9

    .line 406
    :cond_a
    iput v11, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 408
    nop

    .line 409
    if-eqz v17, :cond_b

    iget v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v9, v9

    sub-float v9, v5, v9

    goto :goto_7

    .line 410
    :cond_b
    iget v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    :goto_7
    cmpl-float v9, v2, v9

    if-lez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    move v9, v11

    .line 411
    .local v9, "isOverflowing":Z
    :goto_8
    const/4 v7, -0x1

    if-ne v12, v7, :cond_11

    if-nez v13, :cond_d

    if-eqz v9, :cond_11

    .line 412
    :cond_d
    if-eqz v17, :cond_e

    if-nez v13, :cond_e

    add-int/lit8 v7, v1, -0x1

    goto :goto_9

    :cond_e
    move v7, v1

    .line 413
    .end local v12    # "firstOverflowIndex":I
    .local v7, "firstOverflowIndex":I
    :goto_9
    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float v12, v12

    sub-float v12, v5, v12

    iput v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 414
    if-nez v13, :cond_f

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v12, :cond_10

    .line 415
    :cond_f
    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    invoke-static {v2, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iput v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 418
    :cond_10
    move v12, v7

    .end local v7    # "firstOverflowIndex":I
    .restart local v12    # "firstOverflowIndex":I
    :cond_11
    iget v7, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v7, v11

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    .line 388
    .end local v9    # "isOverflowing":Z
    .end local v10    # "drawingScale":F
    .end local v13    # "forceOverflow":Z
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v17    # "noOverflowAfter":Z
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 420
    .end local v1    # "i":I
    :cond_12
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    .line 421
    const/4 v1, -0x1

    if-eq v12, v1, :cond_16

    .line 422
    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    .line 423
    .end local v2    # "translationX":F
    .local v1, "translationX":F
    move v2, v1

    move v1, v12

    .local v1, "i":I
    .restart local v2    # "translationX":F
    :goto_a
    if-ge v1, v3, :cond_17

    .line 424
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 425
    .local v7, "view":Landroid/view/View;
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 426
    .local v9, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v10, v11

    .line 427
    .local v10, "dotWidth":I
    iput v2, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 428
    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-gez v11, :cond_15

    .line 429
    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-nez v11, :cond_13

    iget v11, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const v13, 0x3f4ccccd    # 0.8f

    cmpg-float v11, v11, v13

    if-gez v11, :cond_13

    .line 430
    const/4 v11, 0x0

    iput v11, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 435
    const/4 v11, 0x1

    goto :goto_b

    .line 432
    :cond_13
    const/4 v11, 0x1

    iput v11, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 433
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    add-int/2addr v13, v11

    iput v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    .line 435
    :goto_b
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-nez v13, :cond_14

    const/4 v13, 0x0

    mul-int v14, v13, v10

    goto :goto_c

    :cond_14
    move v14, v10

    :goto_c
    int-to-float v13, v14

    iget v14, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    mul-float/2addr v13, v14

    add-float/2addr v2, v13

    .line 437
    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    goto :goto_d

    .line 439
    :cond_15
    const/4 v11, 0x1

    const/4 v13, 0x2

    iput v13, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 423
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v10    # "dotWidth":I
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 442
    .end local v1    # "i":I
    :cond_16
    if-lez v3, :cond_17

    .line 443
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "lastChild":Landroid/view/View;
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 445
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 447
    .end local v1    # "lastChild":Landroid/view/View;
    :cond_17
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 448
    .local v1, "center":Z
    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v1, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v9

    cmpg-float v9, v2, v9

    if-gez v9, :cond_1a

    .line 450
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v9, :cond_18

    const/16 v18, 0x0

    goto :goto_e

    :cond_18
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v9, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v18, v9

    :goto_e
    move/from16 v9, v18

    .line 451
    .local v9, "initialTranslation":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v9

    .line 452
    .local v10, "contentWidth":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v13

    sub-float/2addr v11, v13

    .line 453
    .local v11, "availableSpace":F
    sub-float v13, v11, v10

    div-float/2addr v13, v7

    .line 455
    .local v13, "delta":F
    const/4 v14, -0x1

    if-eq v12, v14, :cond_19

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v14

    iget v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    sub-float/2addr v14, v15

    div-float/2addr v14, v7

    .line 459
    .local v14, "deltaIgnoringOverflow":F
    add-float v15, v14, v13

    div-float v13, v15, v7

    .line 461
    .end local v14    # "deltaIgnoringOverflow":F
    :cond_19
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_f
    if-ge v14, v3, :cond_1a

    .line 462
    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 463
    .local v15, "view":Landroid/view/View;
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 464
    .local v7, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move/from16 v19, v1

    iget v1, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .end local v1    # "center":Z
    .local v19, "center":Z
    add-float/2addr v1, v13

    iput v1, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 461
    .end local v7    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v15    # "view":Landroid/view/View;
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v19

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_f

    .line 468
    .end local v9    # "initialTranslation":F
    .end local v10    # "contentWidth":F
    .end local v11    # "availableSpace":F
    .end local v13    # "delta":F
    .end local v14    # "i":I
    .end local v19    # "center":Z
    .restart local v1    # "center":Z
    :cond_1a
    move/from16 v19, v1

    .end local v1    # "center":Z
    .restart local v19    # "center":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v3, :cond_1b

    .line 470
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 471
    .local v7, "view":Landroid/view/View;
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 472
    .local v9, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    sub-float/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v9, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 469
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 475
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1c

    .line 476
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 477
    .local v1, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v1, :cond_1c

    .line 480
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 481
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v13, v10, v9

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v13, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v13, v9

    sub-float/2addr v7, v13

    iput v7, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 482
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 485
    .end local v1    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    :cond_1c
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    .line 537
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    return v0

    .line 540
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return v0
.end method

.method public getFinalTranslationX()I
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 550
    .local v0, "translation":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object v0
.end method

.method public getNoOverflowExtraPadding()I
    .locals 3

    .line 621
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x0

    return v0

    .line 625
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    .line 627
    .local v0, "collapsedPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v2

    sub-int v0, v1, v2

    .line 631
    :cond_1
    return v0
.end method

.method public getPartialOverflowExtraPadding()I
    .locals 4

    .line 604
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasPartialOverflow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 605
    return v1

    .line 608
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    .line 610
    .local v1, "partialOverflowAmount":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v0

    add-int/2addr v0, v1

    .line 612
    .local v0, "adjustedWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v3

    sub-int v1, v2, v3

    .line 616
    :cond_1
    return v1
.end method

.method public hasOverflow()Z
    .locals 1

    .line 585
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPartialOverflow()Z
    .locals 1

    .line 595
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 219
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 221
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 181
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 183
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 215
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 227
    .local v0, "centerY":F
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 228
    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 232
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 233
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 234
    .local v6, "height":I
    int-to-float v7, v6

    div-float/2addr v7, v1

    sub-float v7, v0, v7

    float-to-int v7, v7

    .line 235
    .local v7, "top":I
    add-int v8, v7, v6

    invoke-virtual {v4, v2, v7, v5, v8}, Landroid/view/View;->layout(IIII)V

    .line 236
    if-nez v3, :cond_0

    .line 237
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    .line 228
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v3    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    .line 241
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v1, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    .line 244
    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 277
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 279
    .local v0, "isReplacingIcon":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 280
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 281
    .local v1, "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v0, :cond_0

    .line 282
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 283
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->access$002(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v1    # "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 288
    .local v1, "childIndex":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v4, v1, 0x1

    .line 289
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 290
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_2

    .line 291
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 293
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 296
    :cond_3
    :goto_0
    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_4

    .line 297
    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 299
    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;

    .line 323
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 324
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_4

    .line 325
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 326
    .local v0, "isReplacingIcon":Z
    move-object v7, p1

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 327
    .local v7, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v1

    .line 330
    .local v1, "animationStartIndex":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v2, :cond_0

    .line 331
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 333
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 336
    .end local v1    # "animationStartIndex":I
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v1, :cond_4

    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    if-nez v0, :cond_4

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addTransientView(Landroid/view/View;I)V

    .line 340
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v8, v1

    .line 341
    .local v8, "isIsolatedIcon":Z
    const/4 v2, 0x2

    const/4 v3, 0x1

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;

    invoke-direct {v4, p0, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconContainer$sYOppFQ4vSNRi0SYdFbv716CxNY;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 343
    if-eqz v8, :cond_3

    const-wide/16 v5, 0x6e

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    .line 341
    :goto_1
    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    .line 347
    .end local v0    # "isReplacingIcon":Z
    .end local v7    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v8    # "isIsolatedIcon":Z
    :cond_4
    return-void
.end method

.method public resetViewStates()V
    .locals 5

    .line 363
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 365
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 366
    .local v3, "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 367
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    iput v4, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 368
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 363
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0
    .param p1, "actualLayoutWidth"    # I

    .line 516
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 520
    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0
    .param p1, "paddingEnd"    # F

    .line 523
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 527
    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0
    .param p1, "paddingStart"    # F

    .line 530
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 534
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 639
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 640
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 642
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 643
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v2, :cond_0

    .line 644
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 645
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 640
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v0    # "i":I
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 650
    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0
    .param p1, "changingViewPositions"    # Z

    .line 558
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 559
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 562
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 563
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    xor-int/lit8 v1, p2, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 566
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    .line 567
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 564
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setIsStaticLayout(Z)V
    .locals 0
    .param p1, "isStaticLayout"    # Z

    .line 512
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 513
    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "isolatedIconLocation"    # Landroid/graphics/Rect;
    .param p2, "requireUpdate"    # Z

    .line 665
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    .line 666
    if-eqz p2, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    .line 669
    :cond_0
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0
    .param p1, "expandAmount"    # F

    .line 581
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 582
    return-void
.end method

.method public setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    .line 653
    .local p1, "replacingIcons":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    .line 654
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "speedBumpIndex"    # I

    .line 577
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 578
    return-void
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p2, "animated"    # Z

    .line 657
    if-eqz p2, :cond_1

    .line 658
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    .line 660
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 661
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    .line 662
    return-void
.end method

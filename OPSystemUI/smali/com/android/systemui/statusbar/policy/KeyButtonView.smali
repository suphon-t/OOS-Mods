.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mIsVertical:Z

.field private mKey:I

.field private mLongClicked:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private final mPlaySounds:Z

.field private final mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mSupportsLongpress:Z

.field private mThemeColor:I

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 85
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 89
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mKey:I

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mThemeColor:I

    .line 95
    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 124
    sget-object v3, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 127
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 129
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 130
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    .line 132
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 133
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    .line 137
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    .line 140
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 143
    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->forceHasOverlappingRendering(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->determineKey()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mKey:I

    .line 149
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomKeys()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/16 v4, 0xbb

    if-ne v0, v4, :cond_1

    .line 150
    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 153
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/KeyButtonView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateThemeColorInternal()V
    .locals 1

    .line 368
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mThemeColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postInvalidate()V

    .line 370
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->abortDelayedRipple()V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    .line 386
    return-void
.end method

.method public determineKey()I
    .locals 2

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getId()I

    move-result v0

    .line 426
    .local v0, "viewId":I
    const v1, 0x7f0a006f

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a019e

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0354

    if-eq v0, v1, :cond_0

    .line 434
    const/4 v1, 0x3

    return v1

    .line 432
    :cond_0
    const/4 v1, 0x2

    return v1

    .line 430
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 428
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public isClickable()Z
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

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

.method public isLongClickable()Z
    .locals 2

    .line 417
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mKey:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 418
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public loadAsync(Landroid/graphics/drawable/Icon;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Icon;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 186
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 195
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 196
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 203
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 232
    .local v0, "showSwipeUI":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 234
    .local v1, "action":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 235
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    .line 237
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 239
    return v2

    .line 242
    :cond_1
    const/16 v3, 0x20

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    .line 286
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 287
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_2

    .line 288
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 291
    goto/16 :goto_9

    .line 269
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    .line 270
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    .line 272
    .local v5, "y":I
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsVertical:Z

    if-eqz v7, :cond_3

    .line 273
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v7

    goto :goto_0

    .line 274
    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v7

    :goto_0
    if-le v6, v7, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v2

    .line 275
    .local v6, "exceededTouchSlopX":Z
    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsVertical:Z

    if-eqz v8, :cond_5

    .line 276
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v8

    goto :goto_2

    .line 277
    :cond_5
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v8

    :goto_2
    if-le v7, v8, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    move v7, v2

    .line 278
    .local v7, "exceededTouchSlopY":Z
    :goto_3
    if-nez v6, :cond_7

    if-eqz v7, :cond_13

    .line 281
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 293
    .end local v3    # "x":I
    .end local v5    # "y":I
    .end local v6    # "exceededTouchSlopX":Z
    .end local v7    # "exceededTouchSlopY":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez v5, :cond_8

    move v5, v4

    goto :goto_4

    :cond_8
    move v5, v2

    .line 294
    .local v5, "doIt":Z
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    move v6, v4

    goto :goto_5

    :cond_9
    move v6, v2

    .line 296
    .local v6, "doHapticFeedback":Z
    :goto_5
    if-eqz v0, :cond_a

    .line 297
    if-eqz v5, :cond_b

    .line 299
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    goto :goto_6

    .line 302
    :cond_a
    if-eqz v6, :cond_b

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez v7, :cond_b

    .line 305
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    .line 307
    :cond_b
    :goto_6
    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v7, :cond_e

    .line 308
    if-eqz v5, :cond_d

    .line 310
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 311
    sget-object v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP mCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_c
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 315
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_7

    .line 317
    :cond_d
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_7

    .line 321
    :cond_e
    if-eqz v5, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_f

    .line 322
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 323
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 326
    :cond_f
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .end local v5    # "doIt":Z
    .end local v6    # "doHapticFeedback":Z
    goto :goto_9

    .line 244
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 245
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    .line 246
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownX:I

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchDownY:I

    .line 251
    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v3, :cond_11

    .line 253
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 254
    sget-object v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN mCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_10
    iget-wide v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v2, v2, v5, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_8

    .line 260
    :cond_11
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    .line 262
    :goto_8
    if-nez v0, :cond_12

    .line 263
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 265
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    nop

    .line 330
    :cond_13
    :goto_9
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 207
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 211
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 215
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_0

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 220
    return v0

    .line 221
    :cond_0
    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v2, :cond_1

    .line 222
    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 224
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 225
    return v0

    .line 227
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .param p1, "soundConstant"    # I

    .line 334
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 336
    return-void
.end method

.method public sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 340
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 17
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 343
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x3a3

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 344
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 345
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 346
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3a5

    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 347
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3a4

    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 343
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 348
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v11, v2

    goto :goto_0

    :cond_0
    move v11, v3

    .line 349
    .local v11, "repeatCount":I
    :goto_0
    new-instance v2, Landroid/view/KeyEvent;

    iget-wide v5, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v10, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    or-int/lit8 v4, v1, 0x8

    or-int/lit8 v15, v4, 0x40

    const/16 v16, 0x101

    move-object v4, v2

    move-wide/from16 v7, p3

    move/from16 v9, p1

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 353
    .local v2, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 355
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 161
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 162
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2
    .param p1, "darkIntensity"    # F

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_0

    .line 395
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    .line 402
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 1
    .param p1, "shouldDelay"    # Z

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    .line 407
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 374
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateThemeColorInternal()V

    .line 378
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 166
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 168
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setColor(I)V

    .line 360
    :cond_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 0
    .param p1, "vertical"    # Z

    .line 411
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsVertical:Z

    .line 412
    return-void
.end method

.method public updateThemeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 363
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mThemeColor:I

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateThemeColorInternal()V

    .line 365
    return-void
.end method

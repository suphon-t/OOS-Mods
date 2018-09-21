.class public Lcom/android/keyguard/PasswordTextViewForPin;
.super Landroid/view/View;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState;,
        Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;
    }
.end annotation


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/keyguard/PasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawAlphaPaint1:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint2:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint3:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint4:Landroid/graphics/Paint;

.field private final mDrawEmptyCirclePaint:Landroid/graphics/Paint;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGravity:I

.field private mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

.field private mPM:Landroid/os/PowerManager;

.field private mPinPasswordLength:I

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/keyguard/PasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:I

.field private final mTextHeightRaw:I

.field private mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextColor:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPinPasswordLength:I

    .line 141
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->setFocusableInTouchMode(Z)V

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->setFocusable(Z)V

    .line 143
    sget-object v3, Lcom/android/keyguard/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 145
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextHeightRaw:I

    .line 146
    const/16 v4, 0x11

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mGravity:I

    .line 147
    const/4 v4, 0x3

    .line 148
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    .line 149
    const/4 v4, 0x2

    .line 150
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 149
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    .line 152
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 154
    .local v0, "textColor":I
    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextColor:I

    .line 156
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v0    # "textColor":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    nop

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v4, 0x81

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const v4, 0x1040158

    .line 163
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    .line 176
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPinPasswordLength:I

    .line 179
    return-void

    .line 158
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PasswordTextViewForPin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 6

    .line 248
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextHeightRaw:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    .line 249
    .local v0, "textHeight":F
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 251
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 252
    return-object v1
.end method

.method private getDrawingWidth()F
    .locals 9

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 258
    .local v1, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 259
    .local v2, "bounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 260
    .local v3, "charLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 261
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 262
    .local v5, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    if-eqz v4, :cond_0

    .line 263
    int-to-float v6, v0

    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 265
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v3

    iget v8, v5, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 260
    .end local v5    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v4    # "i":I
    :cond_1
    int-to-float v4, v0

    return v4
.end method

.method private obtainCharState(C)Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .locals 2
    .param p1, "c"    # C

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$1;)V

    .local v0, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    goto :goto_0

    .line 361
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 362
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->reset()V

    .line 364
    :goto_0
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    .line 365
    return-object v0
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "speak_password"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private userActivity()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    invoke-interface {v0}, Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;->onUserActivity()V

    .line 331
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 8
    .param p1, "c"    # C

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, "visibleChars":I
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 275
    .local v1, "textbefore":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 278
    .local v2, "newLength":I
    if-le v2, v0, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->obtainCharState(C)Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-result-object v3

    .line 280
    .local v3, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v3    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 283
    .restart local v3    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    iput-char p1, v3, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    .line 285
    :goto_0
    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startAppearAnimation()V

    .line 288
    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 289
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 290
    .local v5, "previousState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    iget-boolean v6, v5, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    if-eqz v6, :cond_1

    .line 291
    invoke-virtual {v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->swapToDotWhenAppearFinished()V

    .line 297
    .end local v5    # "previousState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_1
    const/4 v5, 0x0

    .line 298
    .local v5, "autoCheck":Z
    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPinPasswordLength:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPinPasswordLength:I

    if-ne v2, v6, :cond_2

    .line 299
    const/4 v5, 0x1

    .line 303
    :cond_2
    const/16 v6, 0x10

    if-eq v2, v6, :cond_3

    if-eqz v5, :cond_4

    .line 305
    :cond_3
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/keyguard/PasswordTextViewForPin$1;

    invoke-direct {v7, p0}, Lcom/android/keyguard/PasswordTextViewForPin$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    if-eqz v6, :cond_5

    .line 314
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 318
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->userActivity()V

    .line 319
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v6, v7, v4}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 320
    return-void
.end method

.method public deleteLastChar()V
    .locals 6

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 335
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 336
    .local v1, "textbefore":Ljava/lang/String;
    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 339
    .local v3, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 343
    .end local v3    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    if-eqz v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->userActivity()V

    .line 349
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 350
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getDrawingWidth()F

    move-result v1

    .line 228
    .local v1, "totalDrawingWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    .line 229
    .local v2, "currentDrawPosition":F
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 230
    .local v3, "length":I
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 231
    .local v4, "bounds":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 232
    .local v5, "charHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 233
    .local v6, "yPosition":F
    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v13, v7

    .line 234
    .local v13, "charLength":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move v14, v7

    .end local v7    # "i":I
    .local v14, "i":I
    if-ge v14, v3, :cond_0

    .line 235
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 236
    .local v15, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    move-object v7, v15

    move-object/from16 v8, p1

    move v9, v2

    move v10, v5

    move v11, v6

    move v12, v13

    invoke-virtual/range {v7 .. v12}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v7

    .line 238
    .local v7, "charWidth":F
    add-float/2addr v2, v7

    .line 234
    .end local v7    # "charWidth":F
    .end local v15    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    add-int/lit8 v7, v14, 0x1

    .end local v14    # "i":I
    .local v7, "i":I
    goto :goto_0

    .line 240
    .end local v7    # "i":I
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 429
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 431
    const-class v0, Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 434
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 450
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 452
    const-class v0, Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 456
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 462
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 463
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 438
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 442
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public reset(ZZ)V
    .locals 18
    .param p1, "animated"    # Z
    .param p2, "announce"    # Z

    move-object/from16 v0, p0

    .line 369
    iget-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 370
    .local v1, "textbefore":Ljava/lang/String;
    const-string v2, ""

    iput-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 371
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 372
    .local v2, "length":I
    add-int/lit8 v3, v2, -0x1

    div-int/lit8 v3, v3, 0x2

    .line 373
    .local v3, "middleIndex":I
    const-wide/16 v4, 0x28

    .line 374
    .local v4, "delayPerElement":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 375
    iget-object v8, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 376
    .local v8, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    if-eqz p1, :cond_1

    .line 378
    if-gt v7, v3, :cond_0

    .line 379
    mul-int/lit8 v9, v7, 0x2

    .local v9, "delayIndex":I
    goto :goto_1

    .line 381
    .end local v9    # "delayIndex":I
    :cond_0
    sub-int v9, v7, v3

    .line 382
    .local v9, "distToMiddle":I
    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v9, -0x1

    mul-int/lit8 v11, v11, 0x2

    sub-int v9, v10, v11

    .line 384
    .local v9, "delayIndex":I
    :goto_1
    int-to-long v10, v9

    mul-long/2addr v10, v4

    .line 385
    .local v10, "startDelay":J
    const-wide/16 v12, 0xc8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 386
    add-int/lit8 v14, v2, -0x1

    move v15, v7

    int-to-long v6, v14

    .end local v7    # "i":I
    .local v15, "i":I
    mul-long/2addr v6, v4

    .line 387
    .local v6, "maxDelay":J
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    const-wide/16 v16, 0xa0

    add-long v12, v12, v16

    .line 388
    .end local v6    # "maxDelay":J
    .local v12, "maxDelay":J
    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 389
    invoke-static {v8}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->access$200(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 390
    .end local v9    # "delayIndex":I
    .end local v10    # "startDelay":J
    .end local v12    # "maxDelay":J
    goto :goto_2

    .line 391
    .end local v15    # "i":I
    .restart local v7    # "i":I
    :cond_1
    move v15, v7

    .end local v7    # "i":I
    .restart local v15    # "i":I
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v8    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :goto_2
    add-int/lit8 v7, v15, 0x1

    .end local v15    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .line 394
    .end local v7    # "i":I
    :cond_2
    if-nez p1, :cond_3

    .line 395
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 399
    :cond_3
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    if-eqz v6, :cond_4

    .line 400
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    iget-object v7, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 404
    :cond_4
    if-eqz p2, :cond_5

    .line 405
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v7, v8}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 407
    :cond_5
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    const/4 p1, 0x0

    .line 416
    :cond_1
    const/16 v0, 0x10

    .line 417
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 418
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 419
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 420
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 421
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 422
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 425
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    return-void
.end method

.method public setTextChangeListener(Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    .line 819
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    .line 820
    return-void
.end method

.method public setUserActivityListener(Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;)V
    .locals 0
    .param p1, "userActivitiListener"    # Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    .line 323
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    .line 324
    return-void
.end method

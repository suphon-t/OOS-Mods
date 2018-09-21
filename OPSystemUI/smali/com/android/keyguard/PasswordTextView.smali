.class public Lcom/android/keyguard/PasswordTextView;
.super Landroid/view/View;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextView$CharState;,
        Lcom/android/keyguard/PasswordTextView$UserActivityListener;
    }
.end annotation


# static fields
.field private static DOT:C


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGravity:I

.field private mPM:Landroid/os/PowerManager;

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextHeightRaw:I

.field private mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/16 v0, 0x2022

    sput-char v0, Lcom/android/keyguard/PasswordTextView;->DOT:C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextView;->setFocusableInTouchMode(Z)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextView;->setFocusable(Z)V

    .line 123
    sget-object v1, Lcom/android/keyguard/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 125
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    .line 126
    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 127
    const/4 v2, 0x3

    .line 128
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 127
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 129
    const/4 v2, 0x2

    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 129
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    .line 132
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 133
    .local v2, "textColor":I
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v2    # "textColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    nop

    .line 137
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v4, 0x81

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 139
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const v4, 0x1040158

    .line 140
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "show_password"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const v2, 0x10c000d

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 151
    return-void

    .line 135
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/PasswordTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/PasswordTextView;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/PasswordTextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PasswordTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 6

    .line 189
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    .line 190
    .local v0, "textHeight":F
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 193
    return-object v1
.end method

.method private getDrawingWidth()F
    .locals 9

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 199
    .local v1, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 200
    .local v2, "bounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 201
    .local v3, "charLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 202
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 203
    .local v5, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    if-eqz v4, :cond_0

    .line 204
    int-to-float v6, v0

    iget v7, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 206
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v3

    iget v8, v5, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 201
    .end local v5    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    .end local v4    # "i":I
    :cond_1
    int-to-float v4, v0

    return v4
.end method

.method private getTransformedText()Ljava/lang/CharSequence;
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 274
    .local v0, "textLength":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 275
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 276
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 279
    .local v3, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    iget-object v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-nez v4, :cond_0

    .line 280
    goto :goto_2

    .line 282
    :cond_0
    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-char v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    goto :goto_1

    :cond_1
    sget-char v4, Lcom/android/keyguard/PasswordTextView;->DOT:C

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .end local v3    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;
    .locals 2
    .param p1, "c"    # C

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$1;)V

    .local v0, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    goto :goto_0

    .line 292
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 293
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->reset()V

    .line 295
    :goto_0
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 296
    return-object v0
.end method

.method private userActivity()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    invoke-interface {v0}, Lcom/android/keyguard/PasswordTextView$UserActivityListener;->onUserActivity()V

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 7
    .param p1, "c"    # C

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    .local v0, "visibleChars":I
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 216
    .local v1, "textbefore":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 218
    return-void

    .line 222
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 225
    .local v2, "newLength":I
    if-le v2, v0, :cond_1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;

    move-result-object v3

    .line 227
    .local v3, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v3    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 230
    .restart local v3    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    iput-char p1, v3, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 232
    :goto_0
    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView$CharState;->startAppearAnimation()V

    .line 235
    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 236
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 237
    .local v5, "previousState":Lcom/android/keyguard/PasswordTextView$CharState;
    iget-boolean v6, v5, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    if-eqz v6, :cond_2

    .line 238
    invoke-virtual {v5}, Lcom/android/keyguard/PasswordTextView$CharState;->swapToDotWhenAppearFinished()V

    .line 241
    .end local v5    # "previousState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 242
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, v6, v4}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 243
    return-void
.end method

.method public deleteLastChar()V
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 258
    .local v0, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 259
    .local v1, "textbefore":Ljava/lang/CharSequence;
    if-lez v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 262
    .local v2, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v5, v6}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 263
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 265
    .end local v2    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 266
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getDrawingWidth()F

    move-result v1

    .line 157
    .local v1, "totalDrawingWidth":F
    iget v2, v0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 158
    iget v2, v0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .local v2, "currentDrawPosition":F
    :goto_0
    goto :goto_1

    .line 165
    .end local v2    # "currentDrawPosition":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    .line 167
    .restart local v2    # "currentDrawPosition":F
    :goto_1
    iget-object v3, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 168
    .local v3, "length":I
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 169
    .local v4, "bounds":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 170
    .local v5, "charHeight":I
    nop

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 172
    .local v6, "yPosition":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingTop()I

    move-result v8

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    .line 172
    move-object/from16 v13, p1

    invoke-virtual {v13, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 174
    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v14, v7

    .line 175
    .local v14, "charLength":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move v15, v7

    .end local v7    # "i":I
    .local v15, "i":I
    if-ge v15, v3, :cond_2

    .line 176
    iget-object v7, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 177
    .local v16, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    move-object/from16 v7, v16

    move-object v8, v13

    move v9, v2

    move v10, v5

    move v11, v6

    move v12, v14

    invoke-virtual/range {v7 .. v12}, Lcom/android/keyguard/PasswordTextView$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v7

    .line 179
    .local v7, "charWidth":F
    add-float/2addr v2, v7

    .line 175
    .end local v7    # "charWidth":F
    .end local v16    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    add-int/lit8 v7, v15, 0x1

    .end local v15    # "i":I
    .local v7, "i":I
    goto :goto_2

    .line 181
    .end local v7    # "i":I
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 354
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 356
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 358
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 362
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 364
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 365
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 366
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 370
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 371
    return-void
.end method

.method public reset(ZZ)V
    .locals 18
    .param p1, "animated"    # Z
    .param p2, "announce"    # Z

    move-object/from16 v0, p0

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 301
    .local v1, "textbefore":Ljava/lang/CharSequence;
    const-string v2, ""

    iput-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 302
    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 303
    .local v2, "length":I
    add-int/lit8 v3, v2, -0x1

    div-int/lit8 v3, v3, 0x2

    .line 304
    .local v3, "middleIndex":I
    const-wide/16 v4, 0x28

    .line 305
    .local v4, "delayPerElement":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 306
    iget-object v8, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 307
    .local v8, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    if-eqz p1, :cond_1

    .line 309
    if-gt v7, v3, :cond_0

    .line 310
    mul-int/lit8 v9, v7, 0x2

    .local v9, "delayIndex":I
    goto :goto_1

    .line 312
    .end local v9    # "delayIndex":I
    :cond_0
    sub-int v9, v7, v3

    .line 313
    .local v9, "distToMiddle":I
    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v9, -0x1

    mul-int/lit8 v11, v11, 0x2

    sub-int v9, v10, v11

    .line 315
    .local v9, "delayIndex":I
    :goto_1
    int-to-long v10, v9

    mul-long/2addr v10, v4

    .line 316
    .local v10, "startDelay":J
    const-wide/16 v12, 0xc8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 317
    add-int/lit8 v14, v2, -0x1

    move v15, v7

    int-to-long v6, v14

    .end local v7    # "i":I
    .local v15, "i":I
    mul-long/2addr v6, v4

    .line 318
    .local v6, "maxDelay":J
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    const-wide/16 v16, 0xa0

    add-long v12, v12, v16

    .line 319
    .end local v6    # "maxDelay":J
    .local v12, "maxDelay":J
    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 320
    invoke-static {v8}, Lcom/android/keyguard/PasswordTextView$CharState;->access$100(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 321
    .end local v9    # "delayIndex":I
    .end local v10    # "startDelay":J
    .end local v12    # "maxDelay":J
    goto :goto_2

    .line 322
    .end local v15    # "i":I
    .restart local v7    # "i":I
    :cond_1
    move v15, v7

    .end local v7    # "i":I
    .restart local v15    # "i":I
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v8    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :goto_2
    add-int/lit8 v7, v15, 0x1

    .end local v15    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .line 325
    .end local v7    # "i":I
    :cond_2
    if-nez p1, :cond_3

    .line 326
    iget-object v6, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 328
    :cond_3
    if-eqz p2, :cond_4

    .line 329
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v7, v8}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 331
    :cond_4
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    :cond_0
    const/16 v0, 0x10

    .line 338
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 339
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 340
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 341
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 344
    .local v1, "transformedText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 350
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "transformedText":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method public setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V
    .locals 0
    .param p1, "userActivitiListener"    # Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 246
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 247
    return-void
.end method

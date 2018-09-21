.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/view/ViewGroup;
.source "NumPadKey.java"


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field private mDigit:I

.field private mDigitText:Landroid/widget/TextView;

.field private mEnableHaptics:Z

.field private mKlondikeText:Landroid/widget/TextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/os/PowerManager;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewForPin:Lcom/android/keyguard/PasswordTextViewForPin;

.field private mTextViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 87
    const v0, 0x7f0d0089

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "contentResource"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 48
    new-instance v0, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->setFocusable(Z)V

    .line 94
    sget-object v1, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 97
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    iget v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    .line 98
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    nop

    .line 103
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/NumPadKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v2, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/NumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 106
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    .line 108
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 111
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, p4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    const v0, 0x7f0a010c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v0, 0x7f0a01e0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-ltz v0, :cond_3

    .line 123
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f030036

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    .line 126
    :cond_1
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v0, v0

    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v0, v4, :cond_3

    .line 127
    sget-object v0, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    aget-object v0, v0, v4

    .line 128
    .local v0, "klondike":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 129
    .local v4, "len":I
    if-lez v4, :cond_2

    .line 130
    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    .end local v0    # "klondike":Ljava/lang/String;
    .end local v4    # "len":I
    :cond_3
    :goto_0
    sget-object v0, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 139
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const v3, 0x7f080566

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/NumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 100
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextViewForPin;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .line 33
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewForPin:Lcom/android/keyguard/PasswordTextViewForPin;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;
    .param p1, "x1"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 33
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextViewForPin:Lcom/android/keyguard/PasswordTextViewForPin;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .line 33
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;
    .param p1, "x1"    # Lcom/android/keyguard/PasswordTextView;

    .line 33
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/NumPadKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .line 33
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/NumPadKey;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/NumPadKey;

    .line 33
    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    return v0
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .line 183
    iget-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->performHapticFeedback(II)Z

    .line 188
    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 162
    .local v0, "digitHeight":I
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 163
    .local v1, "klondikeHeight":I
    add-int v2, v0, v1

    .line 164
    .local v2, "totalHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    .line 165
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 166
    .local v4, "centerX":I
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    .line 167
    .local v5, "left":I
    add-int v6, v3, v0

    .line 168
    .local v6, "bottom":I
    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v5, v3, v8, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 169
    int-to-float v7, v6

    int-to-float v8, v1

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 170
    add-int v6, v3, v1

    .line 172
    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v4, v7

    .line 173
    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v5, v3, v8, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 174
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 155
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey;->measureChildren(II)V

    .line 157
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->doHapticKeyClick()V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public userActivity()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 76
    return-void
.end method

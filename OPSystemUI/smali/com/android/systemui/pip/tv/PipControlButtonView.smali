.class public Lcom/android/systemui/pip/tv/PipControlButtonView;
.super Landroid/widget/RelativeLayout;
.source "PipControlButtonView.java"


# instance fields
.field private mButtonFocusGainAnimator:Landroid/animation/Animator;

.field private mButtonFocusLossAnimator:Landroid/animation/Animator;

.field mButtonImageView:Landroid/widget/ImageView;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mIconImageView:Landroid/widget/ImageView;

.field private final mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mTextFocusGainAnimator:Landroid/animation/Animator;

.field private mTextFocusLossAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlButtonView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlButtonView$1;-><init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d01da

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    const v1, 0x7f0a0197

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mIconImageView:Landroid/widget/ImageView;

    .line 83
    const v1, 0x7f0a009a

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    .line 84
    const v1, 0x7f0a00f5

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 87
    .local v1, "values":[I
    nop

    .line 88
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 90
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    .line 91
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    .line 93
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-void

    :array_0
    .array-data 4
        0x1010119
        0x101014f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/tv/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private static cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;

    .line 161
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    .line 98
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mInternalFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0100f7

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0100f8

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 124
    return-void
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public startFocusGainAnimation()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 179
    :cond_0
    return-void
.end method

.method public startFocusLossAnimation()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusGainAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mTextFocusLossAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlButtonView;->mButtonFocusLossAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 194
    :cond_0
    return-void
.end method

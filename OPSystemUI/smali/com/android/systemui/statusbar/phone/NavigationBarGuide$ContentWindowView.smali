.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentWindowView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "confirm"    # Ljava/lang/Runnable;

    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 247
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 199
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 248
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 249
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->setImportantForAccessibility(I)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContext:Landroid/content/Context;

    .line 252
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 187
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->initViews()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mConfirm:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initViews()V
    .locals 11

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->removeAllViews()V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$402(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;I)I

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 298
    const v0, 0x7f0d00e8

    .local v0, "layout":I
    :goto_0
    goto :goto_1

    .line 299
    .end local v0    # "layout":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 300
    const v0, 0x7f0d00e7

    goto :goto_0

    .line 302
    :cond_1
    const v0, 0x7f0d00e6

    .line 304
    .restart local v0    # "layout":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a0271

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 308
    .local v3, "title":Landroid/widget/TextView;
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 309
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1103ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    .local v5, "span":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 311
    .local v6, "start":I
    const-string v7, "pin_off"

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080319

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 313
    .local v7, "hide":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v7, v4, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v7, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    .local v8, "image":Landroid/text/style/ImageSpan;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v5, v8, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 316
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v5    # "span":Landroid/text/SpannableStringBuilder;
    .end local v6    # "start":I
    .end local v7    # "hide":Landroid/graphics/drawable/Drawable;
    .end local v8    # "image":Landroid/text/style/ImageSpan;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    const v6, 0x7f0a02a6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 320
    .local v5, "ok":Landroid/widget/Button;
    new-instance v6, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$900(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 329
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    .line 331
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v7

    if-eq v7, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f070363

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 336
    .local v2, "offsetX":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070365

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    .line 332
    .end local v2    # "offsetX":I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f070364

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 333
    .restart local v2    # "offsetX":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070366

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 336
    .local v7, "offsetY":I
    :goto_3
    nop

    .line 338
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v8

    if-ne v8, v1, :cond_5

    .line 339
    rsub-int/lit8 v2, v2, 0x0

    .line 341
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    .line 342
    int-to-float v1, v2

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 343
    int-to-float v1, v7

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 345
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 370
    .end local v2    # "offsetX":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "offsetY":I
    goto :goto_4

    .line 371
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 373
    :goto_4
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 257
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 259
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->enable()V

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->initViews()V

    .line 266
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->disable()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .line 287
    const/4 v0, 0x1

    return v0
.end method

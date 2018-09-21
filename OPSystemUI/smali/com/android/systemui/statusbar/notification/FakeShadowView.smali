.class public Lcom/android/systemui/statusbar/notification/FakeShadowView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "FakeShadowView.java"


# instance fields
.field private mFakeShadow:Landroid/view/View;

.field private mOutlineAlpha:F

.field private final mShadowMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;-><init>(Lcom/android/systemui/statusbar/notification/FakeShadowView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 69
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mShadowMinHeight:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/FakeShadowView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/FakeShadowView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 34
    iget v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    return v0
.end method


# virtual methods
.method public setFakeShadowTranslationZ(FFII)V
    .locals 2
    .param p1, "fakeShadowTranslationZ"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .line 75
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mShadowMinHeight:I

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 84
    iput p2, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 88
    :cond_1
    :goto_0
    return-void
.end method

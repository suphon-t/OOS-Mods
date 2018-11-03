.class public Lcom/android/systemui/volume/SegmentedButtons;
.super Landroid/widget/LinearLayout;
.source "SegmentedButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SegmentedButtons$Callback;
    }
.end annotation


# static fields
.field private static final MEDIUM:Landroid/graphics/Typeface;

.field private static final REGULAR:Landroid/graphics/Typeface;


# instance fields
.field private mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mClick:Landroid/view/View$OnClickListener;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mSelectedValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->REGULAR:Landroid/graphics/Typeface;

    .line 35
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    new-instance v0, Lcom/android/systemui/volume/SegmentedButtons$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SegmentedButtons$2;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SegmentedButtons;->setOrientation(I)V

    .line 49
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/SegmentedButtons;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SegmentedButtons;

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/volume/SegmentedButtons;->fireInteraction()V

    return-void
.end method

.method private fireInteraction()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/SegmentedButtons$Callback;->onInteraction()V

    .line 117
    :cond_0
    return-void
.end method

.method private fireOnSelected(Z)V
    .locals 2
    .param p1, "fromClick"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/volume/SegmentedButtons$Callback;->onSelected(Ljava/lang/Object;Z)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public addButton(IILjava/lang/Object;)V
    .locals 3
    .param p1, "labelResId"    # I
    .param p2, "contentDescriptionResId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->inflateButton()Landroid/widget/Button;

    move-result-object v0

    .line 83
    .local v0, "b":Landroid/widget/Button;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a01e4

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 90
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SegmentedButtons;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v2, Lcom/android/systemui/volume/SegmentedButtons$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SegmentedButtons$1;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    invoke-static {v0, v2}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 100
    iget-object v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 101
    return-void
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public inflateButton()Landroid/widget/Button;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 54
    return-void
.end method

.method protected setSelectedStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "selected"    # Z

    .line 74
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SegmentedButtons;->REGULAR:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    return-void
.end method

.method public setSelectedValue(Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fromClick"    # Z

    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "c":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 66
    .local v2, "tag":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 67
    .local v3, "selected":Z
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedStyle(Landroid/widget/TextView;Z)V

    .line 63
    .end local v1    # "c":Landroid/widget/TextView;
    .end local v2    # "tag":Ljava/lang/Object;
    .end local v3    # "selected":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/SegmentedButtons;->fireOnSelected(Z)V

    .line 71
    return-void
.end method

.method public update()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 105
    return-void
.end method

.class public Landroidx/slice/widget/MessageView;
.super Landroidx/slice/widget/SliceChildView;
.source "MessageView.java"


# instance fields
.field private mDetails:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mRowIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onFinishInflate()V

    .line 66
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroidx/slice/widget/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mDetails:Landroid/widget/TextView;

    .line 67
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroidx/slice/widget/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mIcon:Landroid/widget/ImageView;

    .line 68
    return-void
.end method

.method public resetView()V
    .locals 0

    .line 61
    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 7
    .param p1, "slice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "index"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 73
    invoke-virtual {p0, p5}, Landroidx/slice/widget/MessageView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 74
    iput p3, p0, Landroidx/slice/widget/MessageView;->mRowIndex:I

    .line 75
    const-string v0, "image"

    const-string v1, "source"

    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 76
    .local v0, "source":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    .line 78
    invoke-virtual {p0}, Landroidx/slice/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 77
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 80
    .local v1, "iconSize":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 81
    .local v2, "iconBm":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v3, "iconCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/slice/widget/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 83
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    iget-object v5, p0, Landroidx/slice/widget/MessageView;->mIcon:Landroid/widget/ImageView;

    invoke-static {v2}, Landroidx/slice/widget/SliceViewUtil;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    .end local v1    # "iconSize":I
    .end local v2    # "iconBm":Landroid/graphics/Bitmap;
    .end local v3    # "iconCanvas":Landroid/graphics/Canvas;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 88
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    .line 90
    .local v4, "text":Landroidx/slice/SliceItem;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 93
    :cond_1
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 94
    .end local v4    # "text":Landroidx/slice/SliceItem;
    goto :goto_0

    .line 95
    :cond_2
    iget-object v3, p0, Landroidx/slice/widget/MessageView;->mDetails:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.class Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightColorDrawable"
.end annotation


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mDimAlpha:F

.field private mHighlightPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    .line 126
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 132
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 131
    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 138
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 121
    return-void
.end method

.method public setColorAndDim(IF)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "dimAlpha"    # F

    .line 95
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mDimAlpha:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mColor:I

    .line 97
    iput p2, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mDimAlpha:F

    .line 98
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$000(Lcom/android/systemui/recents/views/TaskViewHeader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result p1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 106
    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    const v3, 0x3d99999a    # 0.075f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p2

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 105
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v2

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->mHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->invalidateSelf()V

    .line 111
    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 116
    return-void
.end method

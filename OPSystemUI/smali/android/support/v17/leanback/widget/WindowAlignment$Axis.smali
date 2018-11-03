.class public Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mMaxEdge:I

.field private mMaxScroll:I

.field private mMinEdge:I

.field private mMinScroll:I

.field private mName:Ljava/lang/String;

.field private mPaddingMax:I

.field private mPaddingMin:I

.field private mPreferredKeyLine:I

.field private mReversedFlow:Z

.field private mSize:I

.field private mWindowAlignment:I

.field private mWindowAlignmentOffset:I

.field private mWindowAlignmentOffsetPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    .line 61
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    .line 80
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->reset()V

    .line 81
    iput-object p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mName:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method final calculateKeyline()I
    .locals 4

    .line 196
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v0, :cond_1

    .line 197
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_0

    .line 198
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    .local v0, "keyLine":I
    goto :goto_0

    .line 200
    .end local v0    # "keyLine":I
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v3, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    add-int/2addr v0, v3

    .line 202
    .restart local v0    # "keyLine":I
    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 203
    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    add-int/2addr v0, v1

    goto :goto_2

    .line 206
    .end local v0    # "keyLine":I
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v0, :cond_2

    .line 207
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v3, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    sub-int/2addr v0, v3

    .restart local v0    # "keyLine":I
    goto :goto_1

    .line 209
    .end local v0    # "keyLine":I
    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    neg-int v0, v0

    .line 211
    .restart local v0    # "keyLine":I
    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 212
    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr v0, v1

    .line 215
    :cond_3
    :goto_2
    return v0
.end method

.method final calculateScrollToKeyLine(II)I
    .locals 1
    .param p1, "viewCenterPosition"    # I
    .param p2, "keyLine"    # I

    .line 222
    sub-int v0, p1, p2

    return v0
.end method

.method public final getClientSize()I
    .locals 2

    .line 191
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMaxScroll()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return v0
.end method

.method public final getMinScroll()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return v0
.end method

.method public final getPaddingMax()I
    .locals 1

    .line 187
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return v0
.end method

.method public final getPaddingMin()I
    .locals 1

    .line 183
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    return v0
.end method

.method public final getScroll(I)I
    .locals 7
    .param p1, "viewCenter"    # I

    .line 307
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    .line 308
    .local v0, "size":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v1

    .line 309
    .local v1, "keyLine":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    .line 310
    .local v2, "isMinUnknown":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v3

    .line 311
    .local v3, "isMaxUnknown":Z
    if-nez v2, :cond_2

    .line 312
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v4, v1, v4

    .line 313
    .local v4, "keyLineToMinEdge":I
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_0

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    :goto_0
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    sub-int v5, p1, v5

    if-gt v5, v4, :cond_2

    .line 317
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v5, v6

    .line 319
    .local v5, "alignToMin":I
    if-nez v3, :cond_1

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le v5, v6, :cond_1

    .line 320
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 322
    :cond_1
    return v5

    .line 325
    .end local v4    # "keyLineToMinEdge":I
    .end local v5    # "alignToMin":I
    :cond_2
    if-nez v3, :cond_5

    .line 326
    sub-int v4, v0, v1

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v4, v5

    .line 327
    .local v4, "keyLineToMaxEdge":I
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_3

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_3
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    :goto_1
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    sub-int/2addr v5, p1

    if-gt v5, v4, :cond_5

    .line 331
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int v6, v0, v6

    sub-int/2addr v5, v6

    .line 333
    .local v5, "alignToMax":I
    if-nez v2, :cond_4

    iget v6, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge v5, v6, :cond_4

    .line 334
    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 336
    :cond_4
    return v5

    .line 340
    .end local v4    # "keyLineToMaxEdge":I
    .end local v5    # "alignToMax":I
    :cond_5
    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v4

    return v4
.end method

.method public final getSize()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    return v0
.end method

.method public final invalidateScrollMax()V
    .locals 1

    .line 152
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 153
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 154
    return-void
.end method

.method public final invalidateScrollMin()V
    .locals 1

    .line 140
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 141
    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 142
    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 2

    .line 166
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMinUnknown()Z
    .locals 2

    .line 162
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isPreferKeylineOverHighEdge()Z
    .locals 1

    .line 105
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isPreferKeylineOverLowEdge()Z
    .locals 2

    .line 109
    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method reset()V
    .locals 1

    .line 157
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 158
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 159
    return-void
.end method

.method public final setPadding(II)V
    .locals 0
    .param p1, "paddingMin"    # I
    .param p2, "paddingMax"    # I

    .line 178
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    .line 179
    iput p2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    .line 180
    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0
    .param p1, "reversedFlow"    # Z

    .line 344
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    .line 345
    return-void
.end method

.method public final setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 170
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    .line 171
    return-void
.end method

.method public final setWindowAlignment(I)V
    .locals 0
    .param p1, "windowAlignment"    # I

    .line 89
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateMinMax(IIII)V
    .locals 6
    .param p1, "minEdge"    # I
    .param p2, "maxEdge"    # I
    .param p3, "minChildViewCenter"    # I
    .param p4, "maxChildViewCenter"    # I

    .line 230
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    .line 231
    iput p2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    .line 232
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v0

    .line 233
    .local v0, "clientSize":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v1

    .line 234
    .local v1, "keyLine":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    .line 235
    .local v2, "isMinUnknown":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v3

    .line 236
    .local v3, "isMaxUnknown":Z
    if-nez v2, :cond_2

    .line 237
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_0

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 240
    :goto_0
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {p0, p3, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 246
    :cond_2
    :goto_1
    if-nez v3, :cond_5

    .line 247
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_3

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_3
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 250
    :goto_2
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_3

    .line 253
    :cond_4
    invoke-virtual {p0, p4, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 256
    :cond_5
    :goto_3
    if-nez v3, :cond_d

    if-nez v2, :cond_d

    .line 257
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_9

    .line 258
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 259
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 262
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 263
    invoke-virtual {p0, p4, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 266
    :cond_6
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_4

    .line 267
    :cond_7
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    .line 268
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 271
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 272
    invoke-virtual {p0, p3, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 275
    :cond_8
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_4

    .line 278
    :cond_9
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    .line 279
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 282
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 283
    invoke-virtual {p0, p3, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 282
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 286
    :cond_a
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_4

    .line 287
    :cond_b
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_d

    .line 288
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 291
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 292
    invoke-virtual {p0, p4, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    .line 291
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    .line 295
    :cond_c
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    .line 299
    :cond_d
    :goto_4
    return-void
.end method

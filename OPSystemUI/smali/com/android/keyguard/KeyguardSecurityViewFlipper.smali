.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 55
    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .locals 3
    .param p1, "maxSize"    # I
    .param p2, "childDimen"    # I

    .line 254
    packed-switch p2, :pswitch_data_0

    .line 264
    const/high16 v0, 0x40000000    # 2.0f

    .line 265
    .local v0, "mode":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 260
    .end local v0    # "mode":I
    :pswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 261
    .restart local v0    # "mode":I
    move v1, p1

    .line 262
    .local v1, "size":I
    goto :goto_0

    .line 256
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_1
    const/high16 v0, -0x80000000

    .line 257
    .restart local v0    # "mode":I
    move v1, p1

    .line 258
    .restart local v1    # "size":I
    nop

    .line 265
    :goto_0
    nop

    .line 268
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 186
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 191
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 196
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_0

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityView;

    return-object v1

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 178
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 181
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public isCheckingPassword()Z
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 315
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->isCheckingPassword()Z

    move-result v1

    return v1

    .line 318
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public needsInput()Z
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 124
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    move-object/from16 v0, p0

    .line 201
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 202
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 203
    .local v2, "heightMode":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    .line 204
    const-string v4, "KeyguardSecurityViewFlipper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure: widthSpec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " should be AT_MOST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    if-eq v2, v3, :cond_1

    .line 208
    const-string v3, "KeyguardSecurityViewFlipper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure: heightSpec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " should be AT_MOST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 213
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 214
    .local v4, "heightSize":I
    move v5, v3

    .line 215
    .local v5, "maxWidth":I
    move v6, v4

    .line 216
    .local v6, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v7

    .line 217
    .local v7, "count":I
    const/4 v8, 0x0

    move v9, v6

    move v6, v5

    move v5, v8

    .local v5, "i":I
    .local v6, "maxWidth":I
    .local v9, "maxHeight":I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 218
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 219
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 221
    .local v11, "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v12, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    if-lez v12, :cond_2

    iget v12, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    if-ge v12, v6, :cond_2

    .line 222
    iget v6, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 224
    :cond_2
    iget v12, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    if-lez v12, :cond_3

    iget v12, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    if-ge v12, v9, :cond_3

    .line 225
    iget v9, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 217
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 229
    .end local v5    # "i":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingRight()I

    move-result v10

    add-int/2addr v5, v10

    .line 230
    .local v5, "wPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    .line 231
    .local v10, "hPadding":I
    sub-int v11, v6, v5

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 232
    sub-int v11, v9, v10

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 234
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v1, v11, :cond_5

    move v12, v3

    goto :goto_1

    :cond_5
    move v12, v8

    .line 235
    .local v12, "width":I
    :goto_1
    if-ne v2, v11, :cond_6

    move v11, v4

    goto :goto_2

    :cond_6
    move v11, v8

    .line 236
    .local v11, "height":I
    :goto_2
    nop

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_7

    .line 237
    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 238
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 240
    .local v14, "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v15, v14, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->width:I

    invoke-direct {v0, v6, v15}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v15

    .line 241
    .local v15, "childWidthSpec":I
    move/from16 v16, v1

    iget v1, v14, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->height:I

    .end local v1    # "widthMode":I
    .local v16, "widthMode":I
    invoke-direct {v0, v9, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v1

    .line 243
    .local v1, "childHeightSpec":I
    invoke-virtual {v13, v15, v1}, Landroid/view/View;->measure(II)V

    .line 245
    move/from16 v17, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .end local v1    # "childHeightSpec":I
    .local v17, "childHeightSpec":I
    move/from16 v18, v2

    sub-int v2, v3, v5

    .end local v2    # "heightMode":I
    .local v18, "heightMode":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 246
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, v4, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 236
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .end local v15    # "childWidthSpec":I
    .end local v17    # "childHeightSpec":I
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v2, v18

    goto :goto_3

    .line 248
    .end local v8    # "i":I
    .end local v16    # "widthMode":I
    .end local v18    # "heightMode":I
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    :cond_7
    move/from16 v16, v1

    move/from16 v18, v2

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .restart local v16    # "widthMode":I
    .restart local v18    # "heightMode":I
    add-int v1, v12, v5

    add-int v2, v11, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setMeasuredDimension(II)V

    .line 249
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 108
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 111
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 116
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 60
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "result":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 63
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 64
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 65
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 66
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v1, v4

    .line 67
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 61
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method public reset()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 100
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V

    .line 103
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 84
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 92
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 95
    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 143
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 144
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/CharSequence;I)V

    .line 147
    :cond_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 136
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 160
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 163
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 168
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v1

    return v1

    .line 171
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

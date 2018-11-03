.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mDotPadding:I

.field private mIconDotFrameWidth:I

.field private mLayoutStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsUnderflow:Z

.field private mShouldRestrictIcons:Z

.field private mStaticDotDiameter:I

.field private mUnderflowStart:I

.field private mUnderflowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 382
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>()V

    .line 389
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    .line 398
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->initDimens()V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setWillNotDraw(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method private applyIconStates()V
    .locals 3

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 306
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    .line 307
    .local v2, "vs":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    .line 304
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "vs":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private calculateIconTranslations()V
    .locals 17

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 231
    .local v1, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    .line 232
    .local v2, "translationX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getPaddingStart()I

    move-result v3

    int-to-float v3, v3

    .line 233
    .local v3, "contentStart":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v4

    .line 239
    .local v4, "childCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ltz v5, :cond_2

    .line 240
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 241
    .local v8, "child":Landroid/view/View;
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 242
    .local v9, "iconView":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v10

    .line 244
    .local v10, "childState":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    iput v7, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 251
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    iput v6, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    .line 252
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 254
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "iconView":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .end local v10    # "childState":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    goto :goto_2

    .line 245
    .restart local v8    # "child":Landroid/view/View;
    .restart local v9    # "iconView":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .restart local v10    # "childState":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    :cond_1
    :goto_1
    iput v6, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 247
    nop

    .line 239
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "iconView":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .end local v10    # "childState":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 258
    .end local v5    # "i":I
    :cond_2
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 259
    .local v5, "totalVisible":I
    const/16 v8, 0x46

    if-gt v5, v8, :cond_3

    goto :goto_3

    :cond_3
    const/16 v8, 0x45

    .line 261
    .local v8, "maxVisible":I
    :goto_3
    iput v7, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    .line 262
    const/4 v9, 0x0

    .line 263
    .local v9, "visible":I
    const/4 v10, -0x1

    .line 264
    .local v10, "firstUnderflowIndex":I
    add-int/lit8 v11, v5, -0x1

    .local v11, "i":I
    :goto_4
    if-ltz v11, :cond_7

    .line 265
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 267
    .local v12, "state":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-eqz v13, :cond_4

    iget v13, v12, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_5

    :cond_4
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v13, :cond_6

    if-lt v9, v8, :cond_6

    .line 269
    :cond_5
    move v10, v11

    .line 270
    goto :goto_5

    .line 272
    :cond_6
    iget v13, v12, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-static {v3, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    float-to-int v13, v13

    iput v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    .line 273
    add-int/lit8 v9, v9, 0x1

    .line 264
    .end local v12    # "state":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 276
    .end local v11    # "i":I
    :cond_7
    :goto_5
    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 277
    const/4 v11, 0x0

    .line 278
    .local v11, "totalDots":I
    iget v12, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v12, v13

    .line 279
    .local v12, "dotWidth":I
    iget v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v13, v14

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    sub-int/2addr v13, v14

    .line 280
    .local v13, "dotOffset":I
    move v14, v13

    move v13, v11

    move v11, v10

    .local v11, "i":I
    .local v13, "totalDots":I
    .local v14, "dotOffset":I
    :goto_6
    if-ltz v11, :cond_9

    .line 281
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 282
    .local v15, "state":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    if-gez v13, :cond_8

    .line 283
    int-to-float v7, v14

    iput v7, v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    .line 284
    const/4 v7, 0x1

    iput v7, v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 285
    sub-int/2addr v14, v12

    .line 286
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 288
    :cond_8
    iput v6, v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 280
    .end local v15    # "state":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    :goto_7
    add-int/lit8 v11, v11, -0x1

    const/4 v7, 0x0

    goto :goto_6

    .line 294
    .end local v11    # "i":I
    .end local v12    # "dotWidth":I
    .end local v13    # "totalDots":I
    .end local v14    # "dotOffset":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 295
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_8
    move/from16 v6, v16

    .end local v16    # "i":I
    .local v6, "i":I
    if-ge v6, v4, :cond_a

    .line 296
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 297
    .local v7, "child":Landroid/view/View;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v11

    .line 298
    .local v11, "state":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    iget v12, v11, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    sub-float v12, v1, v12

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    .line 295
    .end local v7    # "child":Landroid/view/View;
    .end local v11    # "state":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "i":I
    .restart local v16    # "i":I
    goto :goto_8

    .line 301
    .end local v16    # "i":I
    :cond_a
    return-void
.end method

.method private static getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 332
    const v0, 0x7f0a03d3

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    return-object v0
.end method

.method private static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getViewTotalWidth(Landroid/view/View;)I
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initDimens()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    .local v0, "radius":I
    const/4 v1, 0x2

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    .line 111
    return-void
.end method

.method private resetViewStates()V
    .locals 5

    .line 314
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v3

    .line 317
    .local v3, "vs":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    if-nez v3, :cond_0

    .line 318
    goto :goto_1

    .line 321
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->initFrom(Landroid/view/View;)V

    .line 322
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->alpha:F

    .line 323
    instance-of v4, v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v4, :cond_1

    .line 324
    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->hidden:Z

    goto :goto_1

    .line 326
    :cond_1
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->hidden:Z

    .line 314
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vs":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public isRestrictingIcons()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 133
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    .line 90
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 118
    .local v0, "midY":F
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 120
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 121
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 122
    .local v6, "height":I
    int-to-float v7, v6

    div-float/2addr v7, v1

    sub-float v7, v0, v7

    float-to-int v7, v7

    .line 123
    .local v7, "top":I
    add-int v8, v7, v6

    invoke-virtual {v4, v2, v7, v5, v8}, Landroid/view/View;->layout(IIII)V

    .line 118
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "top":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->resetViewStates()V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->calculateIconTranslations()V

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->applyIconStates()V

    .line 129
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 162
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 163
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v2

    .line 165
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 166
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 167
    .local v5, "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    invoke-interface {v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    move-object v7, v5

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v5    # "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 173
    .local v4, "visibleCount":I
    const/16 v5, 0x46

    if-gt v4, v5, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    const/16 v6, 0x45

    .line 174
    .local v6, "maxVisible":I
    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mPaddingLeft:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mPaddingRight:I

    add-int/2addr v7, v8

    .line 175
    .local v7, "totalWidth":I
    const/4 v8, 0x1

    .line 178
    .local v8, "trackWidth":Z
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 179
    .local v9, "childWidthSpec":I
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    if-le v4, v5, :cond_3

    move v5, v11

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 180
    nop

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 182
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v10, v4, v3

    sub-int/2addr v10, v11

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 183
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p0, v5, v9, p2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->measureChild(Landroid/view/View;II)V

    .line 184
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v10, :cond_5

    .line 185
    if-ge v3, v6, :cond_4

    if-eqz v8, :cond_4

    .line 186
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_4

    .line 187
    :cond_4
    if-eqz v8, :cond_6

    .line 189
    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v7, v10

    .line 190
    const/4 v8, 0x0

    goto :goto_4

    .line 193
    :cond_5
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v7, v10

    .line 180
    .end local v5    # "child":Landroid/view/View;
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 197
    .end local v3    # "i":I
    :cond_7
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_9

    .line 198
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-nez v3, :cond_8

    if-le v7, v1, :cond_8

    .line 199
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 201
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setMeasuredDimension(II)V

    goto :goto_5

    .line 203
    :cond_9
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_a

    if-le v7, v1, :cond_a

    .line 204
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 205
    move v3, v1

    .line 207
    .end local v7    # "totalWidth":I
    .local v3, "totalWidth":I
    move v7, v3

    .end local v3    # "totalWidth":I
    .restart local v7    # "totalWidth":I
    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setMeasuredDimension(II)V

    .line 209
    :goto_5
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 213
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    .line 215
    .local v0, "vs":Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 216
    const v1, 0x7f0a03d3

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 217
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 221
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 222
    const v0, 0x7f0a03d3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 223
    return-void
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0
    .param p1, "should"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 94
    return-void
.end method

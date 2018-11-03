.class public Lcom/android/keyguard/KeyguardSliceView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSliceView.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;,
        Lcom/android/keyguard/KeyguardSliceView$TitleView;,
        Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;,
        Lcom/android/keyguard/KeyguardSliceView$Row;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/arch/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;"
    }
.end annotation


# instance fields
.field private final mClickActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentChangeListener:Ljava/lang/Runnable;

.field private mDarkAmount:F

.field private mHasHeader:Z

.field private mIconSize:I

.field private mKeyguardSliceUri:Landroid/net/Uri;

.field private mLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mPulsing:Z

.field private mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

.field private mSlice:Landroidx/slice/Slice;

.field private mTextColor:I

.field mTitle:Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    .line 106
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 107
    .local v0, "tunerService":Lcom/android/systemui/tuner/TunerService;
    const-string v1, "keyguard_slice_uri"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    .line 111
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 112
    .local v1, "transition":Landroid/animation/LayoutTransition;
    const-wide/16 v2, 0x113

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 113
    const/4 v5, 0x2

    const-wide/16 v6, 0x226

    invoke-virtual {v1, v5, v6, v7}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 114
    const/4 v6, 0x3

    invoke-virtual {v1, v6, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 115
    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 117
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 118
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 119
    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 120
    new-instance v2, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;-><init>(Lcom/android/keyguard/KeyguardSliceView;Lcom/android/keyguard/KeyguardSliceView$1;)V

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSliceView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 122
    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .line 71
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSliceView;->findBestLineBreak(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static findBestLineBreak(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    return-object p0

    .line 264
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "source":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 271
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "words":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 273
    .local v2, "optimalString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 274
    .local v3, "current":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    .line 275
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 277
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    :cond_3
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    move v4, v3

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 283
    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4

    .line 285
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 289
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 268
    .end local v1    # "words":[Ljava/lang/String;
    .end local v2    # "optimalString":Ljava/lang/StringBuilder;
    .end local v3    # "current":I
    :cond_6
    :goto_2
    return-object v0
.end method

.method private showSlice()V
    .locals 20

    .line 150
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mPulsing:Z

    const/16 v2, 0x8

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 159
    :cond_0
    new-instance v1, Landroidx/slice/widget/ListContent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    invoke-direct {v1, v3, v4}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    .line 160
    .local v1, "lc":Landroidx/slice/widget/ListContent;
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->hasHeader()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v3, "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 163
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    .line 164
    .local v6, "subItem":Landroidx/slice/SliceItem;
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "itemUri":Ljava/lang/String;
    const-string v8, "content://com.android.systemui.keyguard/action"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 167
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v6    # "subItem":Landroidx/slice/SliceItem;
    .end local v7    # "itemUri":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    .end local v5    # "i":I
    :cond_2
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    const/4 v7, 0x1

    if-nez v5, :cond_3

    .line 171
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 173
    :cond_3
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    new-instance v5, Landroidx/slice/widget/RowContent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    invoke-direct {v5, v8, v9, v7}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 178
    .local v5, "header":Landroidx/slice/widget/RowContent;
    invoke-virtual {v5}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v8

    .line 179
    .local v8, "mainTitle":Landroidx/slice/SliceItem;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 180
    .local v9, "title":Ljava/lang/CharSequence;
    :goto_1
    iget-object v10, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .end local v5    # "header":Landroidx/slice/widget/RowContent;
    .end local v8    # "mainTitle":Landroidx/slice/SliceItem;
    .end local v9    # "title":Ljava/lang/CharSequence;
    :goto_2
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 184
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 185
    .local v5, "subItemsCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v8

    .line 186
    .local v8, "blendedColor":I
    iget-boolean v9, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 187
    .local v9, "startIndex":I
    iget-object v10, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    if-lez v5, :cond_5

    move v2, v4

    nop

    :cond_5
    invoke-virtual {v10, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->setVisibility(I)V

    .line 188
    move v2, v9

    .local v2, "i":I
    :goto_3
    if-ge v2, v5, :cond_b

    .line 189
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    .line 190
    .local v10, "item":Landroidx/slice/SliceItem;
    new-instance v11, Landroidx/slice/widget/RowContent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v10, v7}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 191
    .local v11, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v12

    .line 193
    .local v12, "itemTag":Landroid/net/Uri;
    iget-object v13, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v13, v12}, Lcom/android/keyguard/KeyguardSliceView$Row;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    .line 194
    .local v13, "button":Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;
    if-nez v13, :cond_6

    .line 195
    new-instance v14, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;-><init>(Landroid/content/Context;)V

    move-object v13, v14

    .line 196
    invoke-virtual {v13, v8}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setTextColor(I)V

    .line 197
    invoke-virtual {v13, v12}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setTag(Ljava/lang/Object;)V

    .line 198
    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    sub-int v14, v2, v14

    .line 199
    .local v14, "viewIndex":I
    iget-object v15, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v15, v13, v14}, Lcom/android/keyguard/KeyguardSliceView$Row;->addView(Landroid/view/View;I)V

    .line 202
    .end local v14    # "viewIndex":I
    :cond_6
    const/4 v14, 0x0

    .line 203
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 204
    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v14

    .line 206
    :cond_7
    iget-object v15, v0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v15, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v15

    .line 209
    .local v15, "titleItem":Landroidx/slice/SliceItem;
    if-nez v15, :cond_8

    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v15}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v6, v16

    :goto_4
    invoke-virtual {v13, v6}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v6, 0x0

    .line 213
    .local v6, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v7, "image"

    invoke-static {v4, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 215
    .local v4, "icon":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_9

    .line 216
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v7

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    .end local v1    # "lc":Landroidx/slice/widget/ListContent;
    .local v17, "lc":Landroidx/slice/widget/ListContent;
    invoke-virtual {v7, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 217
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 218
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    iget v7, v0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 219
    .local v1, "width":I
    move-object/from16 v18, v3

    const/4 v7, 0x1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v3    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v18, "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    iget v7, v0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    move/from16 v19, v1

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v1, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .end local v1    # "width":I
    goto :goto_5

    .line 221
    .end local v17    # "lc":Landroidx/slice/widget/ListContent;
    .end local v18    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v1, "lc":Landroidx/slice/widget/ListContent;
    .restart local v3    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_9
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    const/4 v1, 0x0

    .end local v1    # "lc":Landroidx/slice/widget/ListContent;
    .end local v3    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .restart local v17    # "lc":Landroidx/slice/widget/ListContent;
    .restart local v18    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_5
    const/4 v3, 0x0

    invoke-virtual {v13, v6, v3, v3, v3}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {v13, v0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    if-eqz v14, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    move v7, v1

    :goto_6
    invoke-virtual {v13, v7}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setClickable(Z)V

    .line 188
    .end local v4    # "icon":Landroidx/slice/SliceItem;
    .end local v6    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "item":Landroidx/slice/SliceItem;
    .end local v11    # "rc":Landroidx/slice/widget/RowContent;
    .end local v12    # "itemTag":Landroid/net/Uri;
    .end local v13    # "button":Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;
    .end local v14    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v15    # "titleItem":Landroidx/slice/SliceItem;
    add-int/lit8 v2, v2, 0x1

    move v4, v1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 227
    .end local v2    # "i":I
    .end local v17    # "lc":Landroidx/slice/widget/ListContent;
    .end local v18    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .restart local v1    # "lc":Landroidx/slice/widget/ListContent;
    .restart local v3    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move v1, v4

    .end local v3    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v1, "i":I
    .restart local v17    # "lc":Landroidx/slice/widget/ListContent;
    .restart local v18    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_7
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 228
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 229
    .local v2, "child":Landroid/view/View;
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 230
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->removeView(Landroid/view/View;)V

    .line 231
    add-int/lit8 v1, v1, -0x1

    .line 227
    .end local v2    # "child":Landroid/view/View;
    :cond_c
    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_7

    .line 235
    .end local v1    # "i":I
    :cond_d
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_e

    .line 236
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 238
    :cond_e
    return-void

    .line 151
    .end local v5    # "subItemsCount":I
    .end local v8    # "blendedColor":I
    .end local v9    # "startIndex":I
    .end local v17    # "lc":Landroidx/slice/widget/ListContent;
    .end local v18    # "subItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_f
    :goto_8
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->setVisibility(I)V

    .line 153
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_10

    .line 154
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 156
    :cond_10
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .line 299
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v0

    .line 300
    .local v0, "blendedColor":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildCount()I

    move-result v1

    .line 302
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 304
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 305
    move-object v4, v3

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 302
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method getTextColor()I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 376
    iget v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    iget v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    .line 138
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 340
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    .line 341
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->showSlice()V

    .line 342
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 313
    .local v0, "action":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "KeyguardSliceView"

    const-string v3, "Pending intent cancelled, nothing to launch"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    .line 388
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 146
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 127
    const v0, 0x7f0a0435

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0a036f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView$Row;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    const v1, 0x7f040468

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    .line 130
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 346
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSliceView;->setupUri(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 391
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    .line 392
    .local v0, "slice":Landroidx/slice/Slice;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->onChanged(Landroidx/slice/Slice;)V

    .line 393
    return-void
.end method

.method public setContentChangeListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "contentChangeListener"    # Ljava/lang/Runnable;

    .line 327
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    .line 328
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1
    .param p1, "darkAmount"    # F

    .line 293
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceView$Row;->setDarkAmount(F)V

    .line 295
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    .line 296
    return-void
.end method

.method public setPulsing(ZZ)V
    .locals 2
    .param p1, "pulsing"    # Z
    .param p2, "animate"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mPulsing:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 243
    .local v0, "transition":Landroid/animation/LayoutTransition;
    if-nez p2, :cond_0

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSliceView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->showSlice()V

    .line 247
    if-nez p2, :cond_1

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 250
    :cond_1
    return-void
.end method

.method setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 381
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    .line 382
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    .line 383
    return-void
.end method

.method public setupUri(Ljava/lang/String;)V
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;

    .line 350
    if-nez p1, :cond_0

    .line 351
    const-string p1, "content://com.android.systemui.keyguard/main"

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 355
    .local v0, "wasObserving":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    const/4 v0, 0x1

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "KeyguardSliceView"

    const-string v3, "setupUri fail, "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    .line 369
    if-eqz v0, :cond_2

    .line 370
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    .line 372
    :cond_2
    return-void
.end method

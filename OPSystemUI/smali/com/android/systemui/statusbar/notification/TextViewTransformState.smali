.class public Lcom/android/systemui/statusbar/notification/TextViewTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "TextViewTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/TextViewTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method private getEllipsisCount()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 124
    .local v0, "l":Landroid/text/Layout;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 126
    .local v2, "lines":I
    if-lez v2, :cond_0

    .line 128
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    return v1

    .line 131
    .end local v2    # "lines":I
    :cond_0
    return v1
.end method

.method private hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z
    .locals 13
    .param p1, "otherTvs"    # Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/text/Spanned;

    .line 61
    .local v0, "hasSpans":Z
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/text/Spanned;

    .line 62
    .local v1, "otherHasSpans":Z
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 63
    return v2

    .line 64
    :cond_0
    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 65
    return v3

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    check-cast v4, Landroid/text/Spanned;

    .line 69
    .local v4, "ownSpanned":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 70
    .local v5, "spans":[Ljava/lang/Object;
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    check-cast v6, Landroid/text/Spanned;

    .line 71
    .local v6, "otherSpanned":Landroid/text/Spanned;
    invoke-interface {v6}, Landroid/text/Spanned;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v6, v2, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 72
    .local v7, "otherSpans":[Ljava/lang/Object;
    array-length v8, v5

    array-length v9, v7

    if-eq v8, v9, :cond_2

    .line 73
    return v2

    .line 75
    :cond_2
    move v8, v2

    .local v8, "i":I
    :goto_0
    array-length v9, v5

    if-ge v8, v9, :cond_6

    .line 76
    aget-object v9, v5, v8

    .line 77
    .local v9, "span":Ljava/lang/Object;
    aget-object v10, v7, v8

    .line 78
    .local v10, "otherSpan":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 79
    return v2

    .line 81
    :cond_3
    invoke-interface {v4, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 82
    invoke-interface {v4, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-eq v11, v12, :cond_4

    goto :goto_1

    .line 75
    .end local v9    # "span":Ljava/lang/Object;
    .end local v10    # "otherSpan":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 83
    .restart local v9    # "span":Ljava/lang/Object;
    .restart local v10    # "otherSpan":Ljava/lang/Object;
    :cond_5
    :goto_1
    return v2

    .line 86
    .end local v8    # "i":I
    .end local v9    # "span":Ljava/lang/Object;
    .end local v10    # "otherSpan":Ljava/lang/Object;
    :cond_6
    return v3
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .locals 2

    .line 135
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 136
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    if-eqz v0, :cond_0

    .line 137
    return-object v0

    .line 139
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method protected getViewHeight()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    return v0
.end method

.method protected getViewWidth()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 107
    .local v0, "l":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v1

    return v1
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transformInfo"    # Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 38
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 145
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method protected reset()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 152
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 7
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .line 43
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 44
    return v1

    .line 46
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 48
    .local v0, "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v3

    .line 50
    .local v3, "ownEllipsized":I
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v4

    .line 51
    .local v4, "otherEllipsized":I
    if-ne v3, v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 53
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 56
    .end local v0    # "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .end local v3    # "ownEllipsized":I
    .end local v4    # "otherEllipsized":I
    :cond_2
    return v2
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 6
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .line 91
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    return v1

    .line 94
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 95
    .local v0, "otherTvs":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    return v1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 99
    .local v2, "lineCount":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v4

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getViewHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getViewHeight()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 99
    move v1, v3

    goto :goto_0

    .line 101
    :cond_2
    nop

    .line 99
    :goto_0
    return v1
.end method

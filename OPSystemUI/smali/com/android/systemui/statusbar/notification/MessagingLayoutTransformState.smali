.class public Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "MessagingLayoutTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/widget/MessagingGroup;",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

.field private mRelativeTranslationOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    return-void
.end method

.method private adaptGroupAppear(Lcom/android/internal/widget/MessagingGroup;FFZ)V
    .locals 3
    .param p1, "ownGroup"    # Lcom/android/internal/widget/MessagingGroup;
    .param p2, "transformationAmount"    # F
    .param p3, "overallTranslation"    # F
    .param p4, "to"    # Z

    .line 169
    if-eqz p4, :cond_0

    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    mul-float/2addr v0, p2

    .local v0, "relativeOffset":F
    goto :goto_0

    .line 172
    .end local v0    # "relativeOffset":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    mul-float/2addr v0, v1

    .line 174
    .restart local v0    # "relativeOffset":F
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 175
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    .line 178
    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v1, p3

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    .line 179
    return-void
.end method

.method private appear(Landroid/view/View;F)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transformationAmount"    # F

    .line 199
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 203
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 204
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 205
    return-void

    .line 200
    .end local v0    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    :cond_1
    :goto_0
    return-void
.end method

.method private appear(Lcom/android/internal/widget/MessagingGroup;F)V
    .locals 5
    .param p1, "ownGroup"    # Lcom/android/internal/widget/MessagingGroup;
    .param p2, "transformationAmount"    # F

    .line 150
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 151
    .local v0, "ownMessages":Lcom/android/internal/widget/MessagingLinearLayout;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    goto :goto_1

    .line 156
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    .line 157
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 151
    .end local v2    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "j":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    .line 160
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 164
    return-void
.end method

.method private disappear(Landroid/view/View;F)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transformationAmount"    # F

    .line 208
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 212
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 213
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 214
    return-void

    .line 209
    .end local v0    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    :cond_1
    :goto_0
    return-void
.end method

.method private disappear(Lcom/android/internal/widget/MessagingGroup;F)V
    .locals 5
    .param p1, "ownGroup"    # Lcom/android/internal/widget/MessagingGroup;
    .param p2, "transformationAmount"    # F

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 183
    .local v0, "ownMessages":Lcom/android/internal/widget/MessagingLinearLayout;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    goto :goto_1

    .line 188
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    .line 189
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 183
    .end local v2    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "j":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    .line 192
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    .line 193
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 196
    return-void
.end method

.method private filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    .line 218
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 221
    .local v2, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    add-int/lit8 v1, v1, -0x1

    .line 219
    .end local v2    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private findPairs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/internal/widget/MessagingGroup;",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    .line 310
    .local p1, "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .local p2, "otherGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 311
    const v0, 0x7fffffff

    .line 312
    .local v0, "lastMatch":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 313
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 314
    .local v2, "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    const/4 v3, 0x0

    .line 315
    .local v3, "bestMatch":Lcom/android/internal/widget/MessagingGroup;
    const/4 v4, 0x0

    .line 316
    .local v4, "bestCompatibility":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_1

    .line 317
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingGroup;

    .line 318
    .local v6, "otherGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v2, v6}, Lcom/android/internal/widget/MessagingGroup;->calculateGroupCompatibility(Lcom/android/internal/widget/MessagingGroup;)I

    move-result v7

    .line 319
    .local v7, "compatibility":I
    if-le v7, v4, :cond_0

    .line 320
    move v4, v7

    .line 321
    move-object v3, v6

    .line 322
    move v0, v5

    .line 316
    .end local v6    # "otherGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v7    # "compatibility":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 325
    .end local v5    # "j":I
    :cond_1
    if-eqz v3, :cond_2

    .line 326
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v2    # "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "bestMatch":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "bestCompatibility":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 329
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    return-object v1
.end method

.method private isGone(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 334
    return v1

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 337
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v2, v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_1

    .line 339
    return v1

    .line 341
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
    .locals 2

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    .line 50
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
    if-eqz v0, :cond_0

    .line 51
    return-object v0

    .line 53
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;-><init>()V

    return-object v1
.end method

.method private resetTransformedView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 416
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 417
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 418
    return-void
.end method

.method private setVisible(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "visible"    # Z
    .param p3, "force"    # Z

    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isAnimatingAlpha(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 372
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 373
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 374
    return-void

    .line 369
    .end local v0    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    :cond_1
    :goto_0
    return-void
.end method

.method private transformGroups(Lcom/android/internal/widget/MessagingGroup;Lcom/android/internal/widget/MessagingGroup;FZ)V
    .locals 20
    .param p1, "ownGroup"    # Lcom/android/internal/widget/MessagingGroup;
    .param p2, "otherGroup"    # Lcom/android/internal/widget/MessagingGroup;
    .param p3, "transformationAmount"    # F
    .param p4, "to"    # Z

    move-object/from16 v14, p0

    .line 231
    nop

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v0

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_0

    iget-object v0, v14, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v13

    goto :goto_0

    :cond_0
    move v6, v15

    .line 233
    .local v6, "useLinearTransformation":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, v14

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x1

    move-object v7, v14

    move/from16 v8, p3

    move/from16 v9, p4

    move v0, v13

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 238
    .local v1, "ownMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v2

    .line 239
    .local v2, "otherMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v3, 0x0

    .line 240
    .local v3, "previousTranslation":F
    move v4, v3

    move/from16 v3, p3

    .end local p3    # "transformationAmount":F
    .local v3, "transformationAmount":F
    .local v4, "previousTranslation":F
    .local v15, "i":I
    :goto_1
    move v5, v15

    .end local v15    # "i":I
    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    sub-int/2addr v7, v5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v7}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v13

    .line 242
    .local v13, "child":Landroid/view/View;
    invoke-direct {v14, v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    nop

    .line 240
    move-object/from16 v7, p1

    goto/16 :goto_3

    .line 245
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    sub-int v12, v7, v5

    .line 246
    .local v12, "otherIndex":I
    const/4 v7, 0x0

    .line 247
    .local v7, "otherChild":Landroid/view/View;
    if-ltz v12, :cond_2

    .line 248
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v8}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    .line 249
    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    const/4 v7, 0x0

    .line 253
    .end local v7    # "otherChild":Landroid/view/View;
    .local v11, "otherChild":Landroid/view/View;
    :cond_2
    move-object v11, v7

    const/4 v10, 0x0

    if-nez v11, :cond_3

    .line 254
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 255
    .local v7, "distanceToTop":F
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 256
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 257
    if-eqz p4, :cond_3

    .line 258
    sub-float/2addr v8, v3

    .line 261
    .end local v3    # "transformationAmount":F
    .end local v7    # "distanceToTop":F
    .local v8, "transformationAmount":F
    move v3, v8

    .end local v8    # "transformationAmount":F
    .restart local v3    # "transformationAmount":F
    :cond_3
    const/4 v15, 0x0

    move-object v7, v14

    move v8, v3

    move/from16 v9, p4

    move/from16 v16, v10

    move-object v10, v13

    move-object/from16 v17, v11

    .end local v11    # "otherChild":Landroid/view/View;
    .local v17, "otherChild":Landroid/view/View;
    move/from16 v18, v12

    move v12, v15

    .end local v12    # "otherIndex":I
    .local v18, "otherIndex":I
    move-object/from16 v19, v13

    move v13, v6

    .end local v13    # "child":Landroid/view/View;
    .local v19, "child":Landroid/view/View;
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V

    .line 263
    cmpl-float v7, v3, v16

    if-nez v7, :cond_5

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v7

    move-object/from16 v8, v17

    if-ne v7, v8, :cond_4

    .line 265
    .end local v17    # "otherChild":Landroid/view/View;
    .local v8, "otherChild":Landroid/view/View;
    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/MessagingGroup;->setTransformingImages(Z)V

    goto :goto_2

    .line 267
    :cond_4
    move-object/from16 v7, p1

    goto :goto_2

    .end local v8    # "otherChild":Landroid/view/View;
    .restart local v17    # "otherChild":Landroid/view/View;
    :cond_5
    move-object/from16 v7, p1

    move-object/from16 v8, v17

    .end local v17    # "otherChild":Landroid/view/View;
    .restart local v8    # "otherChild":Landroid/view/View;
    :goto_2
    if-nez v8, :cond_6

    .line 268
    move-object/from16 v9, v19

    invoke-virtual {v9, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 269
    .end local v19    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    goto :goto_3

    .line 270
    .end local v9    # "child":Landroid/view/View;
    .restart local v19    # "child":Landroid/view/View;
    :cond_6
    move-object/from16 v9, v19

    .end local v19    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    if-eqz p4, :cond_7

    .line 271
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v11

    add-int/2addr v10, v11

    .line 272
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    .line 273
    .local v10, "totalTranslation":F
    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v11

    sub-float/2addr v11, v10

    .line 274
    .end local v4    # "previousTranslation":F
    .end local v10    # "totalTranslation":F
    .local v11, "previousTranslation":F
    nop

    .line 240
    move v4, v11

    goto :goto_3

    .line 275
    .end local v11    # "previousTranslation":F
    .restart local v4    # "previousTranslation":F
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 240
    .end local v8    # "otherChild":Landroid/view/View;
    .end local v9    # "child":Landroid/view/View;
    .end local v18    # "otherIndex":I
    :goto_3
    add-int/lit8 v15, v5, 0x1

    .end local v5    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    .line 278
    .end local v15    # "i":I
    :cond_8
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    .line 279
    return-void
.end method

.method private transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "transformationAmount"    # F
    .param p2, "to"    # Z
    .param p3, "ownView"    # Landroid/view/View;
    .param p4, "otherView"    # Landroid/view/View;
    .param p5, "sameAsAny"    # Z
    .param p6, "useLinearTransformation"    # Z

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 284
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz p6, :cond_0

    .line 285
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 287
    :cond_0
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/notification/TransformState;->setIsSameAsAnyView(Z)V

    .line 288
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 289
    if-eqz p4, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    .line 291
    .local v1, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    .line 292
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 293
    .end local v1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_0

    .line 297
    :cond_2
    if-eqz p4, :cond_3

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    .line 299
    .restart local v1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 300
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 301
    .end local v1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 305
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 306
    return-void
.end method

.method private transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V
    .locals 20
    .param p1, "mlt"    # Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
    .param p2, "transformationAmount"    # F
    .param p3, "to"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 92
    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->ensureVisible()V

    .line 93
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    .line 94
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v3

    .line 93
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 95
    .local v3, "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    move-object/from16 v4, p1

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    .line 96
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v5

    .line 95
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 97
    .local v5, "otherGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-direct {v0, v3, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->findPairs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v6

    .line 98
    .local v6, "pairs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/widget/MessagingGroup;Lcom/android/internal/widget/MessagingGroup;>;"
    const/4 v7, 0x0

    .line 99
    .local v7, "lastPairedGroup":Lcom/android/internal/widget/MessagingGroup;
    const/4 v8, 0x0

    .line 100
    .local v8, "currentTranslation":F
    const/4 v9, 0x0

    .line 101
    .local v9, "transformationDistanceRemaining":F
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_8

    .line 102
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingGroup;

    .line 103
    .local v11, "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/MessagingGroup;

    .line 104
    .local v12, "matchingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 105
    if-eqz v12, :cond_2

    .line 106
    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformGroups(Lcom/android/internal/widget/MessagingGroup;Lcom/android/internal/widget/MessagingGroup;FZ)V

    .line 107
    if-nez v7, :cond_0

    .line 108
    move-object v7, v11

    .line 109
    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v13

    invoke-virtual {v12}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    .line 111
    .local v13, "totalTranslation":F
    nop

    .line 112
    invoke-virtual {v12}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v9

    .line 113
    sub-float v8, v9, v13

    .line 114
    .end local v13    # "totalTranslation":F
    nop

    .line 101
    .end local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .end local v11    # "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v12    # "matchingGroup":Lcom/android/internal/widget/MessagingGroup;
    .local v18, "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    :cond_0
    :goto_1
    move-object/from16 v18, v3

    goto :goto_4

    .line 115
    .end local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v11    # "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    .restart local v12    # "matchingGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_1
    invoke-virtual {v12}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v13

    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    .line 116
    .restart local v13    # "totalTranslation":F
    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 117
    sub-float v9, v8, v13

    .line 118
    .end local v13    # "totalTranslation":F
    goto :goto_1

    .line 121
    :cond_2
    move v13, v1

    .line 122
    .local v13, "groupTransformationAmount":F
    if-eqz v7, :cond_4

    .line 123
    invoke-direct {v0, v11, v1, v8, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->adaptGroupAppear(Lcom/android/internal/widget/MessagingGroup;FFZ)V

    .line 125
    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v14

    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    .line 126
    .local v14, "distance":I
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 127
    int-to-float v15, v14

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x3f400000    # 0.75f

    mul-float v15, v15, v16

    .line 129
    .local v15, "transformationDistance":F
    :goto_2
    int-to-float v1, v14

    sub-float/2addr v1, v15

    sub-float v1, v9, v1

    .line 131
    .local v1, "translationProgress":F
    div-float v13, v1, v15

    .line 133
    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "translationProgress":F
    .local v17, "translationProgress":F
    move-object/from16 v18, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .end local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 135
    if-eqz v2, :cond_5

    .line 136
    sub-float v13, v3, v13

    .end local v14    # "distance":I
    .end local v15    # "transformationDistance":F
    .end local v17    # "translationProgress":F
    goto :goto_3

    .line 139
    .end local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    :cond_4
    move-object/from16 v18, v3

    .end local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 140
    invoke-direct {v0, v11, v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Lcom/android/internal/widget/MessagingGroup;F)V

    goto :goto_4

    .line 142
    :cond_6
    invoke-direct {v0, v11, v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Lcom/android/internal/widget/MessagingGroup;F)V

    .end local v11    # "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v12    # "matchingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v13    # "groupTransformationAmount":F
    goto :goto_4

    .line 101
    .end local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    :cond_7
    move-object/from16 v18, v3

    .end local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    :goto_4
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v3, v18

    move/from16 v1, p2

    move-object/from16 v4, p1

    goto/16 :goto_0

    .line 147
    .end local v10    # "i":I
    .end local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    :cond_8
    move-object/from16 v18, v3

    .end local v3    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    .restart local v18    # "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    return-void
.end method


# virtual methods
.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transformInfo"    # Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformedView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformedView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getMessagingLayout()Lcom/android/internal/widget/MessagingLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    .line 65
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public prepareFadeIn()V
    .locals 2

    .line 410
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    .line 411
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(ZZ)V

    .line 412
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 429
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 431
    sget-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method protected reset()V
    .locals 1

    .line 422
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 424
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    .line 425
    return-void
.end method

.method protected resetTransformedView()V
    .locals 8

    .line 378
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    .local v0, "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 381
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 382
    .local v3, "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 383
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    .line 384
    .local v4, "ownMessages":Lcom/android/internal/widget/MessagingLinearLayout;
    move v5, v1

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 385
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 386
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 387
    goto :goto_2

    .line 389
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 390
    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 384
    .end local v6    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 392
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 393
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 394
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v5

    .line 395
    .local v5, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-eqz v5, :cond_2

    .line 396
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    .line 398
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 399
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 400
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    .line 401
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    .line 403
    .end local v4    # "ownMessages":Lcom/android/internal/widget/MessagingLinearLayout;
    .end local v5    # "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingGroup;->setTransformingImages(Z)V

    .line 404
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    .line 380
    .end local v3    # "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "force"    # Z

    .line 346
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView()V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 349
    .local v0, "ownGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 350
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 351
    .local v3, "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 352
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    .line 353
    .local v4, "ownMessages":Lcom/android/internal/widget/MessagingLinearLayout;
    move v5, v1

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 354
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 355
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    .line 353
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 357
    .end local v5    # "j":I
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    .line 358
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    .line 359
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v5

    .line 360
    .local v5, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-eqz v5, :cond_1

    .line 361
    invoke-direct {p0, v5, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    .line 349
    .end local v3    # "ownGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "ownMessages":Lcom/android/internal/widget/MessagingLinearLayout;
    .end local v5    # "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 81
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 88
    :goto_0
    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 69
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    .line 73
    return v1

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    move-result v0

    return v0
.end method

.class final Landroid/support/v7/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public arcs:[Landroid/support/v7/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/support/v7/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1101
    const-class v0, Landroid/support/v7/widget/GridLayout;

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/GridLayout;Z)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v7/widget/GridLayout;
    .param p2, "horizontal"    # Z

    .line 1141
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 1109
    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1115
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1118
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1121
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1124
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1127
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1130
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1133
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1136
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1138
    new-instance v1, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1139
    new-instance v0, Landroid/support/v7/widget/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1142
    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    .line 1143
    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .line 1372
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    .local p2, "links":Landroid/support/v7/widget/GridLayout$PackedMap;, "Landroid/support/v7/widget/GridLayout$PackedMap<Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1373
    iget-object v2, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$Interval;

    aget-object v2, v2, v1

    .line 1374
    .local v2, "key":Landroid/support/v7/widget/GridLayout$Interval;
    iget-object v3, p2, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroid/support/v7/widget/GridLayout$MutableInt;

    aget-object v3, v3, v1

    invoke-direct {p0, p1, v2, v3, v0}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1372
    .end local v2    # "key":Landroid/support/v7/widget/GridLayout$Interval;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1446
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "x"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "y"

    .line 1447
    .local v0, "var":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1448
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1449
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayout$Arc;

    .line 1450
    .local v4, "arc":Landroid/support/v7/widget/GridLayout$Arc;
    if-eqz v2, :cond_1

    .line 1451
    const/4 v2, 0x0

    goto :goto_2

    .line 1453
    :cond_1
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1455
    :goto_2
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1456
    .local v5, "src":I
    iget-object v6, v4, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v6, v6, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1457
    .local v6, "dst":I
    iget-object v7, v4, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget v7, v7, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1458
    .local v7, "value":I
    if-ge v5, v6, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    .end local v4    # "arc":Landroid/support/v7/widget/GridLayout$Arc;
    .end local v5    # "src":I
    .end local v6    # "dst":I
    .end local v7    # "value":I
    goto :goto_1

    .line 1463
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private calculateMaxIndex()I
    .locals 8

    .line 1147
    const/4 v0, -0x1

    .line 1148
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1149
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1150
    .local v3, "c":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1151
    .local v4, "params":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1152
    .local v5, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    iget-object v6, v5, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1153
    .local v6, "span":Landroid/support/v7/widget/GridLayout$Interval;
    iget v7, v6, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1154
    iget v7, v6, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1155
    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1148
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "params":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v6    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/high16 v1, -0x80000000

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    return v1
.end method

.method private calculateTotalWeight()F
    .locals 7

    .line 1686
    const/4 v0, 0x0

    .line 1687
    .local v0, "totalWeight":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1688
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1689
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 1690
    goto :goto_2

    .line 1692
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1693
    .local v4, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1694
    .local v5, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    iget v6, v5, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    add-float/2addr v0, v6

    .line 1687
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1696
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_2
    return v0
.end method

.method private computeArcs()V
    .locals 0

    .line 1410
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1411
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1412
    return-void
.end method

.method private computeGroupBounds()V
    .locals 14

    .line 1203
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1204
    .local v0, "values":[Landroid/support/v7/widget/GridLayout$Bounds;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1205
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    .line 1204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1207
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    .local v3, "N":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1208
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1210
    .local v4, "c":Landroid/view/View;
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v11

    .line 1211
    .local v11, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_1

    iget-object v5, v11, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    :cond_1
    iget-object v5, v11, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_2
    move-object v12, v5

    .line 1212
    .local v12, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v5, v4, v6}, Landroid/support/v7/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v5

    iget v6, v12, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 1213
    move v6, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v6

    aget v6, v6, v2

    :goto_3
    add-int v13, v5, v6

    .line 1214
    .local v13, "size":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayout$Bounds;

    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    move-object v7, v4

    move-object v8, v12

    move-object v9, p0

    move v10, v13

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/GridLayout$Bounds;->include(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Axis;I)V

    .line 1207
    .end local v4    # "c":Landroid/view/View;
    .end local v11    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v12    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v13    # "size":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1216
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_3
    return-void
.end method

.method private computeHasWeights()Z
    .locals 7

    .line 1600
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1601
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1602
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1603
    goto :goto_2

    .line 1605
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1606
    .local v3, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1607
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    iget v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 1608
    const/4 v5, 0x1

    return v5

    .line 1600
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1611
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V
    .locals 7
    .param p2, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .line 1241
    .local p1, "links":Landroid/support/v7/widget/GridLayout$PackedMap;, "Landroid/support/v7/widget/GridLayout$PackedMap<Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;>;"
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1242
    .local v0, "spans":[Landroid/support/v7/widget/GridLayout$MutableInt;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1243
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$MutableInt;->reset()V

    .line 1242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1247
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1248
    .local v2, "bounds":[Landroid/support/v7/widget/GridLayout$Bounds;
    nop

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1249
    aget-object v3, v2, v1

    invoke-virtual {v3, p2}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    .line 1250
    .local v3, "size":I
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayout$MutableInt;

    .line 1252
    .local v4, "valueHolder":Landroid/support/v7/widget/GridLayout$MutableInt;
    iget v5, v4, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    neg-int v6, v3

    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1248
    .end local v3    # "size":I
    .end local v4    # "valueHolder":Landroid/support/v7/widget/GridLayout$MutableInt;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1254
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 4
    .param p1, "a"    # [I

    .line 1700
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1701
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)Z

    goto :goto_0

    .line 1703
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solveAndDistributeSpace([I)V

    .line 1705
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v0, :cond_1

    .line 1712
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 1713
    .local v0, "a0":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "N":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1714
    aget v3, p1, v1

    sub-int/2addr v3, v0

    aput v3, p1, v1

    .line 1713
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1717
    .end local v0    # "a0":I
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    return-void
.end method

.method private computeMargins(Z)V
    .locals 11
    .param p1, "leading"    # Z

    .line 1559
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1560
    .local v0, "margins":[I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 1561
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1562
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .end local v3    # "c":Landroid/view/View;
    goto :goto_4

    .line 1563
    .restart local v3    # "c":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1564
    .local v4, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    :cond_2
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1565
    .local v5, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_2
    iget-object v6, v5, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1566
    .local v6, "span":Landroid/support/v7/widget/GridLayout$Interval;
    if-eqz p1, :cond_3

    iget v7, v6, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_3
    iget v7, v6, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1567
    .local v7, "index":I
    :goto_3
    aget v8, v0, v7

    iget-object v9, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-boolean v10, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v9, v3, v10, p1}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v0, v7

    .line 1560
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v6    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v7    # "index":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1569
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_4
    return-void
.end method

.method private createArcs()[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 6

    .line 1379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    .local v0, "mins":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    .local v1, "maxs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V

    .line 1385
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/support/v7/widget/GridLayout$PackedMap;)V

    .line 1388
    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1390
    move v2, v3

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1391
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v2, v5}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    new-instance v5, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v5, v3}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V

    .line 1390
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1397
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v2

    .line 1398
    .local v2, "N":I
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    invoke-direct {v4, v3, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {p0, v0, v4, v5, v3}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1399
    new-instance v4, Landroid/support/v7/widget/GridLayout$Interval;

    invoke-direct {v4, v2, v3}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {p0, v1, v4, v5, v3}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1402
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v3

    .line 1403
    .local v3, "sMins":[Landroid/support/v7/widget/GridLayout$Arc;
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v4

    .line 1405
    .local v4, "sMaxs":[Landroid/support/v7/widget/GridLayout$Arc;
    invoke-static {v3, v4}, Landroid/support/v7/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/support/v7/widget/GridLayout$Arc;

    return-object v5
.end method

.method private createGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1190
    const-class v0, Landroid/support/v7/widget/GridLayout$Spec;

    const-class v1, Landroid/support/v7/widget/GridLayout$Bounds;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1191
    .local v0, "assoc":Landroid/support/v7/widget/GridLayout$Assoc;, "Landroid/support/v7/widget/GridLayout$Assoc<Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Bounds;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1192
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1194
    .local v3, "c":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1195
    .local v4, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_0
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1196
    .local v5, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayout$Alignment;->getBounds()Landroid/support/v7/widget/GridLayout$Bounds;

    move-result-object v6

    .line 1197
    .local v6, "bounds":Landroid/support/v7/widget/GridLayout$Bounds;
    invoke-virtual {v0, v5, v6}, Landroid/support/v7/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1191
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v5    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v6    # "bounds":Landroid/support/v7/widget/GridLayout$Bounds;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Assoc;->pack()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v1

    return-object v1
.end method

.method private createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 6
    .param p1, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1231
    const-class v0, Landroid/support/v7/widget/GridLayout$Interval;

    const-class v1, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v0

    .line 1232
    .local v0, "result":Landroid/support/v7/widget/GridLayout$Assoc;, "Landroid/support/v7/widget/GridLayout$Assoc<Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v1, [Landroid/support/v7/widget/GridLayout$Spec;

    .line 1233
    .local v1, "keys":[Landroid/support/v7/widget/GridLayout$Spec;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "N":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1234
    if-eqz p1, :cond_0

    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    goto :goto_1

    :cond_0
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$Interval;->inverse()Landroid/support/v7/widget/GridLayout$Interval;

    move-result-object v4

    .line 1235
    .local v4, "span":Landroid/support/v7/widget/GridLayout$Interval;
    :goto_1
    new-instance v5, Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1233
    .end local v4    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1237
    .end local v2    # "i":I
    .end local v3    # "N":I
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Assoc;->pack()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    return-object v2
.end method

.method private getBackwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1269
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1271
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1272
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1275
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1258
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->createLinks(Z)Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1260
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1261
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeLinks(Landroid/support/v7/widget/GridLayout$PackedMap;Z)V

    .line 1262
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1264
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .locals 2

    .line 1161
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1162
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    .line 1164
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1745
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1746
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->size([I)I

    move-result v0

    return v0
.end method

.method private hasWeights()Z
    .locals 1

    .line 1615
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    if-nez v0, :cond_0

    .line 1616
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights:Z

    .line 1617
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1619
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeights:Z

    return v0
.end method

.method private include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V
    .locals 1
    .param p2, "key"    # Landroid/support/v7/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/support/v7/widget/GridLayout$MutableInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .line 1303
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V

    .line 1304
    return-void
.end method

.method private include(Ljava/util/List;Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;Z)V
    .locals 4
    .param p2, "key"    # Landroid/support/v7/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/support/v7/widget/GridLayout$MutableInt;
    .param p4, "ignoreIfAlreadyPresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$Interval;",
            "Landroid/support/v7/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .line 1286
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    return-void

    .line 1291
    :cond_0
    if-eqz p4, :cond_2

    .line 1292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayout$Arc;

    .line 1293
    .local v1, "arc":Landroid/support/v7/widget/GridLayout$Arc;
    iget-object v2, v1, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1294
    .local v2, "span":Landroid/support/v7/widget/GridLayout$Interval;
    invoke-virtual {v2, p2}, Landroid/support/v7/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1295
    return-void

    .line 1297
    .end local v1    # "arc":Landroid/support/v7/widget/GridLayout$Arc;
    .end local v2    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    :cond_1
    goto :goto_0

    .line 1299
    :cond_2
    new-instance v0, Landroid/support/v7/widget/GridLayout$Arc;

    invoke-direct {v0, p2, p3}, Landroid/support/v7/widget/GridLayout$Arc;-><init>(Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    return-void
.end method

.method private init([I)V
    .locals 1
    .param p1, "locations"    # [I

    .line 1442
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1443
    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$Arc;[Z)V
    .locals 5
    .param p1, "axisName"    # Ljava/lang/String;
    .param p2, "arcs"    # [Landroid/support/v7/widget/GridLayout$Arc;
    .param p3, "culprits0"    # [Z

    .line 1467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    .local v0, "culprits":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1470
    aget-object v3, p2, v2

    .line 1471
    .local v3, "arc":Landroid/support/v7/widget/GridLayout$Arc;
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_0

    .line 1472
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    :cond_0
    iget-boolean v4, v3, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1

    .line 1475
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    .end local v3    # "arc":Landroid/support/v7/widget/GridLayout$Arc;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1478
    .end local v2    # "c":I
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    iget-object v2, v2, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " constraints: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " are inconsistent; permanently removing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1478
    invoke-interface {v2, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method private relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z
    .locals 7
    .param p1, "locations"    # [I
    .param p2, "entry"    # Landroid/support/v7/widget/GridLayout$Arc;

    .line 1426
    iget-boolean v0, p2, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1427
    return v1

    .line 1429
    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1430
    .local v0, "span":Landroid/support/v7/widget/GridLayout$Interval;
    iget v2, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1431
    .local v2, "u":I
    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 1432
    .local v3, "v":I
    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget v4, v4, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1433
    .local v4, "value":I
    aget v5, p1, v2

    add-int/2addr v5, v4

    .line 1434
    .local v5, "candidate":I
    aget v6, p1, v3

    if-le v5, v6, :cond_1

    .line 1435
    aput v5, p1, v3

    .line 1436
    const/4 v1, 0x1

    return v1

    .line 1438
    :cond_1
    return v1
.end method

.method private setParentConstraints(II)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1739
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1740
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMax:Landroid/support/v7/widget/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 1741
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1742
    return-void
.end method

.method private shareOutDelta(IF)V
    .locals 8
    .param p1, "totalDelta"    # I
    .param p2, "totalWeight"    # F

    .line 1630
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1631
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v1

    .local v1, "N":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1632
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1633
    .local v2, "c":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1634
    goto :goto_2

    .line 1636
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1637
    .local v3, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1638
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    iget v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    .line 1639
    .local v5, "weight":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    .line 1640
    int-to-float v6, p1

    mul-float/2addr v6, v5

    div-float/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1641
    .local v6, "delta":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    aput v6, v7, v0

    .line 1644
    sub-int/2addr p1, v6

    .line 1645
    sub-float/2addr p2, v5

    .line 1631
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v5    # "weight":F
    .end local v6    # "delta":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1648
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_3
    return-void
.end method

.method private size([I)I
    .locals 1
    .param p1, "locations"    # [I

    .line 1735
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private solve([I)Z
    .locals 1
    .param p1, "a"    # [I

    .line 1596
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([Landroid/support/v7/widget/GridLayout$Arc;[I)Z

    move-result v0

    return v0
.end method

.method private solve([Landroid/support/v7/widget/GridLayout$Arc;[I)Z
    .locals 1
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$Arc;
    .param p2, "locations"    # [I

    .line 1503
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout$Axis;->solve([Landroid/support/v7/widget/GridLayout$Arc;[IZ)Z

    move-result v0

    return v0
.end method

.method private solve([Landroid/support/v7/widget/GridLayout$Arc;[IZ)Z
    .locals 12
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$Arc;
    .param p2, "locations"    # [I
    .param p3, "modifyOnError"    # Z

    .line 1507
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "vertical"

    .line 1508
    .local v0, "axisName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1509
    .local v1, "N":I
    const/4 v3, 0x0

    .line 1511
    .local v3, "originalCulprits":[Z
    const/4 v4, 0x0

    move-object v5, v3

    move v3, v4

    .line 1511
    .local v3, "p":I
    .local v5, "originalCulprits":[Z
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_c

    .line 1512
    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayout$Axis;->init([I)V

    .line 1515
    move v6, v4

    .line 1515
    .local v6, "i":I
    :goto_2
    if-ge v6, v1, :cond_4

    .line 1516
    const/4 v7, 0x0

    .line 1517
    .local v7, "changed":Z
    const/4 v8, 0x0

    .line 1517
    .local v8, "j":I
    array-length v9, p1

    .line 1517
    .local v9, "length":I
    :goto_3
    if-ge v8, v9, :cond_1

    .line 1518
    aget-object v10, p1, v8

    invoke-direct {p0, p2, v10}, Landroid/support/v7/widget/GridLayout$Axis;->relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 1517
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1520
    .end local v8    # "j":I
    .end local v9    # "length":I
    :cond_1
    if-nez v7, :cond_3

    .line 1521
    if-eqz v5, :cond_2

    .line 1522
    invoke-direct {p0, v0, p1, v5}, Landroid/support/v7/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$Arc;[Z)V

    .line 1524
    :cond_2
    return v2

    .line 1515
    .end local v7    # "changed":Z
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1528
    .end local v6    # "i":I
    :cond_4
    if-nez p3, :cond_5

    .line 1529
    return v4

    .line 1532
    :cond_5
    array-length v6, p1

    new-array v6, v6, [Z

    .line 1533
    .local v6, "culprits":[Z
    move v7, v4

    .line 1533
    .local v7, "i":I
    :goto_4
    if-ge v7, v1, :cond_7

    .line 1534
    const/4 v8, 0x0

    .line 1534
    .restart local v8    # "j":I
    array-length v9, p1

    .line 1534
    .restart local v9    # "length":I
    :goto_5
    if-ge v8, v9, :cond_6

    .line 1535
    aget-boolean v10, v6, v8

    aget-object v11, p1, v8

    invoke-direct {p0, p2, v11}, Landroid/support/v7/widget/GridLayout$Axis;->relax([ILandroid/support/v7/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v6, v8

    .line 1534
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1533
    .end local v8    # "j":I
    .end local v9    # "length":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1539
    .end local v7    # "i":I
    :cond_7
    if-nez v3, :cond_8

    .line 1540
    move-object v5, v6

    .line 1543
    :cond_8
    move v7, v4

    .line 1543
    .restart local v7    # "i":I
    :goto_6
    array-length v8, p1

    if-ge v7, v8, :cond_b

    .line 1544
    aget-boolean v8, v6, v7

    if-eqz v8, :cond_a

    .line 1545
    aget-object v8, p1, v7

    .line 1547
    .local v8, "arc":Landroid/support/v7/widget/GridLayout$Arc;
    iget-object v9, v8, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v9, v9, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    iget-object v10, v8, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v10, v10, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-ge v9, v10, :cond_9

    .line 1548
    goto :goto_7

    .line 1550
    :cond_9
    iput-boolean v4, v8, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    .line 1551
    goto :goto_8

    .line 1543
    .end local v8    # "arc":Landroid/support/v7/widget/GridLayout$Arc;
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1511
    .end local v6    # "culprits":[Z
    .end local v7    # "i":I
    :cond_b
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1555
    .end local v3    # "p":I
    :cond_c
    return v2
.end method

.method private solveAndDistributeSpace([I)V
    .locals 10
    .param p1, "a"    # [I

    .line 1651
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getDeltas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1652
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)Z

    .line 1653
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->parentMin:Landroid/support/v7/widget/GridLayout$MutableInt;

    iget v0, v0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    mul-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 1654
    .local v0, "deltaMax":I
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 1655
    return-void

    .line 1657
    :cond_0
    const/4 v3, 0x0

    .line 1659
    .local v3, "deltaMin":I
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->calculateTotalWeight()F

    move-result v4

    .line 1661
    .local v4, "totalWeight":F
    const/4 v5, -0x1

    .line 1662
    .local v5, "validDelta":I
    nop

    .line 1664
    .local v2, "validSolution":Z
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1666
    int-to-long v6, v3

    int-to-long v8, v0

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 1667
    .local v6, "delta":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 1668
    invoke-direct {p0, v6, v4}, Landroid/support/v7/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1669
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v7

    invoke-direct {p0, v7, p1, v1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([Landroid/support/v7/widget/GridLayout$Arc;[IZ)Z

    move-result v2

    .line 1670
    if-eqz v2, :cond_1

    .line 1671
    move v5, v6

    .line 1672
    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    .line 1674
    :cond_1
    move v0, v6

    .line 1676
    .end local v6    # "delta":I
    :goto_1
    goto :goto_0

    .line 1677
    :cond_2
    if-lez v5, :cond_3

    if-nez v2, :cond_3

    .line 1679
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 1680
    invoke-direct {p0, v5, v4}, Landroid/support/v7/widget/GridLayout$Axis;->shareOutDelta(IF)V

    .line 1681
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->solve([I)Z

    .line 1683
    :cond_3
    return-void
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/support/v7/widget/GridLayout$Arc;"
        }
    .end annotation

    .line 1368
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$Arc;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v7/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/GridLayout$Arc;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->topologicalSort([Landroid/support/v7/widget/GridLayout$Arc;)[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private topologicalSort([Landroid/support/v7/widget/GridLayout$Arc;)[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 1
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$Arc;

    .line 1329
    new-instance v0, Landroid/support/v7/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$Axis$1;-><init>(Landroid/support/v7/widget/GridLayout$Axis;[Landroid/support/v7/widget/GridLayout$Arc;)V

    .line 1364
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis$1;->sort()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArcs()[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 1

    .line 1415
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    if-nez v0, :cond_0

    .line 1416
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->createArcs()[Landroid/support/v7/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1418
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    .line 1419
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeArcs()V

    .line 1420
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1422
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1168
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDeltas()[I
    .locals 1

    .line 1623
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    if-nez v0, :cond_0

    .line 1624
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->this$0:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    .line 1626
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    return-object v0
.end method

.method public getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap<",
            "Landroid/support/v7/widget/GridLayout$Spec;",
            "Landroid/support/v7/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .line 1219
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1220
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->createGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1222
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    .line 1223
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->computeGroupBounds()V

    .line 1224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1226
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .locals 2

    .line 1574
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1575
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1577
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1578
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1579
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1581
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .locals 3

    .line 1720
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1721
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1722
    .local v0, "N":I
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    .line 1724
    .end local v0    # "N":I
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v0, :cond_1

    .line 1725
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1726
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1728
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    return-object v0
.end method

.method public getMeasure(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 1750
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1751
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1752
    .local v1, "size":I
    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    .line 1763
    nop

    .line 1764
    return v3

    .line 1757
    :cond_0
    invoke-direct {p0, v1, v1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    .line 1754
    :cond_1
    const v2, 0x186a0

    invoke-direct {p0, v3, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2

    .line 1760
    :cond_2
    invoke-direct {p0, v3, v1}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    return v2
.end method

.method public getTrailingMargins()[I
    .locals 2

    .line 1585
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1586
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1588
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1590
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1592
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/support/v7/widget/GridLayout$Arc;)[[Landroid/support/v7/widget/GridLayout$Arc;
    .locals 10
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$Arc;

    .line 1309
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1310
    .local v0, "N":I
    new-array v1, v0, [[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1311
    .local v1, "result":[[Landroid/support/v7/widget/GridLayout$Arc;
    new-array v2, v0, [I

    .line 1312
    .local v2, "sizes":[I
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p1, v5

    .line 1313
    .local v6, "arc":Landroid/support/v7/widget/GridLayout$Arc;
    iget-object v7, v6, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v7, v7, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v7

    .line 1312
    .end local v6    # "arc":Landroid/support/v7/widget/GridLayout$Arc;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    move v3, v4

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 1316
    aget v5, v2, v3

    new-array v5, v5, [Landroid/support/v7/widget/GridLayout$Arc;

    aput-object v5, v1, v3

    .line 1315
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1319
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1320
    array-length v3, p1

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 1321
    .local v5, "arc":Landroid/support/v7/widget/GridLayout$Arc;
    iget-object v6, v5, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v6, v6, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 1322
    .local v6, "i":I
    aget-object v7, v1, v6

    aget v8, v2, v6

    add-int/lit8 v9, v8, 0x1

    aput v9, v2, v6

    aput-object v5, v7, v8

    .line 1320
    .end local v5    # "arc":Landroid/support/v7/widget/GridLayout$Arc;
    .end local v6    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1325
    :cond_2
    return-object v1
.end method

.method public invalidateStructure()V
    .locals 1

    .line 1775
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->maxIndex:I

    .line 1777
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBounds:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1778
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1779
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinks:Landroid/support/v7/widget/GridLayout$PackedMap;

    .line 1781
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1782
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1783
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcs:[Landroid/support/v7/widget/GridLayout$Arc;

    .line 1785
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locations:[I

    .line 1787
    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->deltas:[I

    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->hasWeightsValid:Z

    .line 1790
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 1791
    return-void
.end method

.method public invalidateValues()V
    .locals 1

    .line 1794
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1795
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1796
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1798
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1799
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1800
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->arcsValid:Z

    .line 1802
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Axis;->locationsValid:Z

    .line 1803
    return-void
.end method

.method public layout(I)V
    .locals 0
    .param p1, "size"    # I

    .line 1770
    invoke-direct {p0, p1, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1771
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    .line 1772
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 1172
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v1, :cond_0

    const-string v1, "column"

    goto :goto_0

    :cond_0
    const-string v1, "row"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 1177
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 1178
    return-void
.end method

.method public setOrderPreserved(Z)V
    .locals 0
    .param p1, "orderPreserved"    # Z

    .line 1185
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1186
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 1187
    return-void
.end method

.class Landroid/support/v7/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2268
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    .line 2269
    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I
    .locals 2
    .param p1, "gl"    # Landroid/support/v7/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/support/v7/widget/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    .line 2292
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .param p1, "before"    # I
    .param p2, "after"    # I

    .line 2278
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    .line 2279
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    .line 2280
    return-void
.end method

.method protected final include(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Axis;I)V
    .locals 4
    .param p1, "gl"    # Landroid/support/v7/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Landroid/support/v7/widget/GridLayout$Spec;
    .param p4, "axis"    # Landroid/support/v7/widget/GridLayout$Axis;
    .param p5, "size"    # I

    .line 2296
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Landroid/support/v7/widget/GridLayout$Spec;->getFlexibility()I

    move-result v1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    .line 2297
    iget-boolean v0, p4, Landroid/support/v7/widget/GridLayout$Axis;->horizontal:Z

    .line 2298
    .local v0, "horizontal":Z
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v1

    .line 2300
    .local v1, "alignment":Landroid/support/v7/widget/GridLayout$Alignment;
    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v2

    invoke-virtual {v1, p2, p5, v2}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v2

    .line 2301
    .local v2, "before":I
    sub-int v3, p5, v2

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/GridLayout$Bounds;->include(II)V

    .line 2302
    return-void
.end method

.method protected reset()V
    .locals 1

    .line 2272
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    .line 2273
    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    .line 2274
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    .line 2275
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    .line 2283
    if-nez p1, :cond_0

    .line 2284
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2285
    const v0, 0x186a0

    return v0

    .line 2288
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

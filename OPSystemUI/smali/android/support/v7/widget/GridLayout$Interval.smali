.class final Landroid/support/v7/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final max:I

.field public final min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 2345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2346
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2347
    iput p2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 2348
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .line 2370
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2371
    return v0

    .line 2373
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2377
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/GridLayout$Interval;

    .line 2379
    .local v2, "interval":Landroid/support/v7/widget/GridLayout$Interval;
    iget v3, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v4, v2, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-eq v3, v4, :cond_2

    .line 2380
    return v1

    .line 2383
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    iget v4, v2, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-eq v3, v4, :cond_3

    .line 2384
    return v1

    .line 2387
    :cond_3
    return v0

    .line 2374
    .end local v2    # "interval":Landroid/support/v7/widget/GridLayout$Interval;
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 2392
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2393
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    add-int/2addr v1, v2

    .line 2394
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method inverse()Landroid/support/v7/widget/GridLayout$Interval;
    .locals 3

    .line 2355
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    return-object v0
.end method

.method size()I
    .locals 2

    .line 2351
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

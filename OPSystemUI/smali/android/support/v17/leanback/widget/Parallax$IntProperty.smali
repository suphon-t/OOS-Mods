.class public Landroid/support/v17/leanback/widget/Parallax$IntProperty;
.super Landroid/util/Property;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/v17/leanback/widget/Parallax;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIndex:I


# virtual methods
.method public final get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/support/v17/leanback/widget/Parallax;

    .line 133
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, Landroid/support/v17/leanback/widget/Parallax;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getIndex()I
    .locals 1

    .line 145
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->mIndex:I

    return v0
.end method

.method public final set(Landroid/support/v17/leanback/widget/Parallax;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "object"    # Landroid/support/v17/leanback/widget/Parallax;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 138
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->mIndex:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/Parallax;->setIntPropertyValue(II)V

    .line 139
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Landroid/support/v17/leanback/widget/Parallax;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->set(Landroid/support/v17/leanback/widget/Parallax;Ljava/lang/Integer;)V

    return-void
.end method

.class final Landroid/support/v17/leanback/widget/ItemAlignment$Axis;
.super Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
.source "ItemAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Axis"
.end annotation


# instance fields
.field private mOrientation:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 33
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 34
    iput p1, p0, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->mOrientation:I

    .line 35
    return-void
.end method


# virtual methods
.method public getAlignmentPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 41
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->mOrientation:I

    invoke-static {p1, p0, v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result v0

    return v0
.end method

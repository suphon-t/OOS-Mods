.class public final Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
.super Ljava/lang/Object;
.source "ItemAlignmentFacet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    }
.end annotation


# instance fields
.field private mAlignmentDefs:[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->mAlignmentDefs:[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    return-void
.end method


# virtual methods
.method public getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->mAlignmentDefs:[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    return-object v0
.end method

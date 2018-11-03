.class public Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
.super Ljava/lang/Object;
.source "ItemAlignmentFacet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemAlignmentDef"
.end annotation


# instance fields
.field private mAlignToBaseline:Z

.field mFocusViewId:I

.field mOffset:I

.field mOffsetPercent:F

.field mOffsetWithPadding:Z

.field mViewId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    .line 49
    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    .line 51
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 52
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    return-void
.end method


# virtual methods
.method public final getItemAlignmentFocusViewId()I
    .locals 2

    .line 167
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    :goto_0
    return v0
.end method

.method public isAlignedToTextViewBaseLine()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mAlignToBaseline:Z

    return v0
.end method

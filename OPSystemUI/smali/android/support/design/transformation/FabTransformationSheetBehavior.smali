.class public Landroid/support/design/transformation/FabTransformationSheetBehavior;
.super Landroid/support/design/transformation/FabTransformationBehavior;
.source "FabTransformationSheetBehavior.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expanded"    # Z

    .line 44
    if-eqz p2, :cond_0

    .line 45
    sget v0, Landroid/support/design/transformation/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    .local v0, "specRes":I
    goto :goto_0

    .line 47
    .end local v0    # "specRes":I
    :cond_0
    sget v0, Landroid/support/design/transformation/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    .line 50
    .restart local v0    # "specRes":I
    :goto_0
    new-instance v1, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;

    invoke-direct {v1}, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;-><init>()V

    .line 51
    .local v1, "spec":Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    invoke-static {p1, v0}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v2

    iput-object v2, v1, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    .line 52
    new-instance v2, Landroid/support/design/animation/Positioning;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroid/support/design/animation/Positioning;-><init>(IFF)V

    iput-object v2, v1, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    .line 53
    return-object v1
.end method

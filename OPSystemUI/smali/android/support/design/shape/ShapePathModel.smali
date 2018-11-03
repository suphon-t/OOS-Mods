.class public Landroid/support/design/shape/ShapePathModel;
.super Ljava/lang/Object;
.source "ShapePathModel.java"


# static fields
.field private static final DEFAULT_CORNER_TREATMENT:Landroid/support/design/shape/CornerTreatment;

.field private static final DEFAULT_EDGE_TREATMENT:Landroid/support/design/shape/EdgeTreatment;


# instance fields
.field private bottomEdge:Landroid/support/design/shape/EdgeTreatment;

.field private bottomLeftCorner:Landroid/support/design/shape/CornerTreatment;

.field private bottomRightCorner:Landroid/support/design/shape/CornerTreatment;

.field private leftEdge:Landroid/support/design/shape/EdgeTreatment;

.field private rightEdge:Landroid/support/design/shape/EdgeTreatment;

.field private topEdge:Landroid/support/design/shape/EdgeTreatment;

.field private topLeftCorner:Landroid/support/design/shape/CornerTreatment;

.field private topRightCorner:Landroid/support/design/shape/CornerTreatment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/support/design/shape/CornerTreatment;

    invoke-direct {v0}, Landroid/support/design/shape/CornerTreatment;-><init>()V

    sput-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Landroid/support/design/shape/CornerTreatment;

    .line 26
    new-instance v0, Landroid/support/design/shape/EdgeTreatment;

    invoke-direct {v0}, Landroid/support/design/shape/EdgeTreatment;-><init>()V

    sput-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->topLeftCorner:Landroid/support/design/shape/CornerTreatment;

    .line 42
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->topRightCorner:Landroid/support/design/shape/CornerTreatment;

    .line 43
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->bottomRightCorner:Landroid/support/design/shape/CornerTreatment;

    .line 44
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->bottomLeftCorner:Landroid/support/design/shape/CornerTreatment;

    .line 45
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->topEdge:Landroid/support/design/shape/EdgeTreatment;

    .line 46
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->rightEdge:Landroid/support/design/shape/EdgeTreatment;

    .line 47
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->bottomEdge:Landroid/support/design/shape/EdgeTreatment;

    .line 48
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->leftEdge:Landroid/support/design/shape/EdgeTreatment;

    .line 49
    return-void
.end method


# virtual methods
.method public getBottomEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->bottomEdge:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->bottomLeftCorner:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->bottomRightCorner:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public getLeftEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->leftEdge:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->rightEdge:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->topEdge:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->topLeftCorner:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->topRightCorner:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public setTopEdge(Landroid/support/design/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "topEdge"    # Landroid/support/design/shape/EdgeTreatment;

    .line 195
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->topEdge:Landroid/support/design/shape/EdgeTreatment;

    .line 196
    return-void
.end method

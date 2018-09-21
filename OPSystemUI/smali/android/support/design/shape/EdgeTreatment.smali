.class public Landroid/support/design/shape/EdgeTreatment;
.super Ljava/lang/Object;
.source "EdgeTreatment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEdgePath(FFLandroid/support/design/shape/ShapePath;)V
    .locals 1
    .param p1, "length"    # F
    .param p2, "interpolation"    # F
    .param p3, "shapePath"    # Landroid/support/design/shape/ShapePath;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    .line 44
    return-void
.end method

.class public abstract Landroid/support/v7/widget/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    return-void
.end method


# virtual methods
.method abstract getAlignmentValue(Landroid/view/View;II)I
.end method

.method getBounds()Landroid/support/v7/widget/GridLayout$Bounds;
    .locals 1

    .line 2683
    new-instance v0, Landroid/support/v7/widget/GridLayout$Bounds;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$Bounds;-><init>()V

    return-object v0
.end method

.method abstract getDebugString()Ljava/lang/String;
.end method

.method abstract getGravityOffset(Landroid/view/View;I)I
.end method

.method getSizeInCell(Landroid/view/View;II)I
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "cellSize"    # I

    .line 2679
    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alignment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

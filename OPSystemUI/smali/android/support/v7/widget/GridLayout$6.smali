.class final Landroid/support/v7/widget/GridLayout$6;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2817
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .line 2825
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method

.method getDebugString()Ljava/lang/String;
    .locals 1

    .line 2830
    const-string v0, "CENTER"

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .line 2820
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method

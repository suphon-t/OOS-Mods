.class final Landroid/support/v7/widget/GridLayout$5;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

.field final synthetic val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V
    .locals 0

    .line 2778
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .line 2788
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2790
    .local v0, "isLayoutRtl":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    return v1
.end method

.method getDebugString()Ljava/lang/String;
    .locals 2

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SWITCHING[L:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .line 2781
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2783
    .local v0, "isLayoutRtl":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v1

    return v1
.end method

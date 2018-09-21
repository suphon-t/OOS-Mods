.class Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableOutlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$000(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$100(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .line 88
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$200(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$300(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .line 89
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$400(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 91
    .local v0, "translation":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 92
    .local v2, "left":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v3, v3, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$500(Lcom/android/systemui/statusbar/ExpandableOutlineView;)I

    move-result v4

    add-int/2addr v3, v4

    .line 93
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getWidth()I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v4, v1

    .line 94
    .local v4, "right":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v5, v5, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr v1, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 95
    .local v1, "bottom":I
    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 96
    .end local v0    # "translation":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$600(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Path;

    move-result-object v0

    .line 98
    .local v0, "clipPath":Landroid/graphics/Path;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 104
    .end local v0    # "clipPath":Landroid/graphics/Path;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->access$700(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 105
    return-void
.end method

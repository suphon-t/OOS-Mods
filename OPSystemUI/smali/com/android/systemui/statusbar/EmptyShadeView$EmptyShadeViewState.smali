.class public Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "EmptyShadeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/EmptyShadeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyShadeViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/EmptyShadeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 84
    instance-of v0, p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v0, :cond_2

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 86
    .local v0, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    iget v1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->clipTopAmount:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->access$000(Lcom/android/systemui/statusbar/EmptyShadeView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 87
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->setContentVisible(Z)V

    .line 89
    .end local v0    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v1    # "visible":Z
    :cond_2
    return-void
.end method

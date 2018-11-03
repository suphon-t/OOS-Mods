.class public Lcom/android/systemui/statusbar/FooterView$FooterViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "FooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FooterViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/FooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/FooterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/FooterView;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/FooterView$FooterViewState;->this$0:Lcom/android/systemui/statusbar/FooterView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 97
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 98
    instance-of v0, p1, Lcom/android/systemui/statusbar/FooterView;

    if-eqz v0, :cond_2

    .line 99
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/FooterView;

    .line 100
    .local v0, "footerView":Lcom/android/systemui/statusbar/FooterView;
    iget v1, p0, Lcom/android/systemui/statusbar/FooterView$FooterViewState;->clipTopAmount:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/FooterView$FooterViewState;->this$0:Lcom/android/systemui/statusbar/FooterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/FooterView;->access$000(Lcom/android/systemui/statusbar/FooterView;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 101
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FooterView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    nop

    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/FooterView;->setContentVisible(Z)V

    .line 103
    .end local v0    # "footerView":Lcom/android/systemui/statusbar/FooterView;
    .end local v1    # "visible":Z
    :cond_2
    return-void
.end method

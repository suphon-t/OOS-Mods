.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .line 579
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 580
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 581
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/view/ActionMode;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$002(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->requestFitSystemWindows()V

    .line 603
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 610
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 612
    :goto_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->requestFitSystemWindows()V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

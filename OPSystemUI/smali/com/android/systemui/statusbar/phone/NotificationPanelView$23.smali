.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2860
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onFragmentViewCreated$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 2873
    sub-int v0, p5, p3

    .line 2874
    .local v0, "height":I
    sub-int v1, p9, p7

    .line 2875
    .local v1, "oldHeight":I
    if-eq v0, v1, :cond_0

    .line 2876
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    .line 2878
    :cond_0
    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 2863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/plugins/qs/QS;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    .line 2864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    .line 2865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 2866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 2867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setKeyguardShowing(Z)V

    .line 2868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 2871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$23$XQZgn2N_XiHovkvBnq4FuEa2Doo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$23$XQZgn2N_XiHovkvBnq4FuEa2Doo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQsContainer(Landroid/view/ViewGroup;)V

    .line 2880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 2881
    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 2888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 2889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    .line 2891
    :cond_0
    return-void
.end method

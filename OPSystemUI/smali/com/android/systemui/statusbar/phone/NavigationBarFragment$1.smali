.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonAlphaChanged(FZ)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 203
    .local v0, "backButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 204
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAlpha(FZ)V

    .line 205
    return-void
.end method

.method public onConnectionChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateStates()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    .line 183
    return-void
.end method

.method public onInteractionFlagsChanged(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->onChange(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateStates()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    .line 198
    return-void
.end method

.method public onQuickStepStarted()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 189
    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final USER_SETTINGS_INTENT:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 807
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 818
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/UserDetailView;

    if-nez v0, :cond_0

    .line 819
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/android/systemui/qs/tiles/UserDetailView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;

    move-result-object v0

    .line 820
    .local v0, "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/UserDetailView;->createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    goto :goto_0

    .line 822
    .end local v0    # "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/UserDetailView;

    .line 824
    .restart local v0    # "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UserDetailView;->refreshAdapter()V

    .line 825
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 844
    const/16 v0, 0x7d

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v1, 0x7f110527

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 840
    return-void
.end method

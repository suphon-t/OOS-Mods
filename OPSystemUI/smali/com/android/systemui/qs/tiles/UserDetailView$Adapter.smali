.class public Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UserDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 76
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 79
    return-void
.end method


# virtual methods
.method public createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Lcom/android/systemui/qs/tiles/UserDetailItemView;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object v0

    .line 91
    .local v0, "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    if-eq v0, p1, :cond_0

    .line 92
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p3}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p3}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    iget-object v3, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 101
    :goto_0
    iget-boolean v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->updateThemeColor(Z)V

    .line 103
    iget-boolean v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setActivated(Z)V

    .line 104
    iget-boolean v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setDisabledByAdmin(Z)V

    .line 106
    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isStorageInsufficient:Z

    .line 108
    iget-boolean v3, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-nez v3, :cond_2

    .line 109
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    goto :goto_1

    .line 112
    :cond_2
    iget-boolean v3, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez v3, :cond_3

    iget-boolean v3, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v3, :cond_4

    iget-object v3, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v3, :cond_4

    .line 113
    :cond_3
    invoke-static {}, Lcom/android/systemui/qs/tiles/UserDetailView;->getAvailableInternalMemorySize()J

    move-result-wide v3

    .line 114
    .local v3, "size":J
    const-string v5, "UserDetailView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available storage size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-wide/32 v5, -0x44800000

    cmp-long v5, v3, v5

    if-gez v5, :cond_4

    .line 116
    const-string v5, "UserDetailView"

    const-string v6, "Storage size is too small, disable add user function"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 118
    iput-boolean v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isStorageInsufficient:Z

    .line 123
    .end local v3    # "size":J
    :cond_4
    :goto_1
    invoke-virtual {v0, p3}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setTag(Ljava/lang/Object;)V

    .line 124
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    .line 84
    .local v0, "item":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Lcom/android/systemui/qs/tiles/UserDetailItemView;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 129
    nop

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 131
    .local v0, "tag":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->startActivity(Landroid/content/Intent;)V

    .line 135
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x9c

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 138
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "quick_user"

    const-string v2, "guest"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-nez v1, :cond_2

    .line 141
    const-string v1, "quick_user"

    const-string v2, "switch"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    goto :goto_1

    .line 147
    :cond_3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isStorageInsufficient:Z

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11051a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_4
    :goto_1
    return-void
.end method

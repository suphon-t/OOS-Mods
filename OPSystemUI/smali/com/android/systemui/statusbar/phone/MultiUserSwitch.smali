.class public Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
.super Landroid/widget/FrameLayout;
.source "MultiUserSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mKeyguardMode:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field protected mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mTmpInt2:[I

.field private mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field final mUserManager:Landroid/os/UserManager;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method private refreshContentDescription()V
    .locals 6

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "currentUser":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_0
    const/4 v1, 0x0

    .line 166
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mContext:Landroid/content/Context;

    const v3, 0x7f1100e4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    :cond_2
    return-void
.end method

.method private registerListener()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 103
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    .line 118
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 123
    const-string v0, "quick_user"

    const-string v1, "icon"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    goto :goto_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 133
    .local v0, "center":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 134
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    aget v4, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aput v4, v3, v1

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    aget v3, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    .line 137
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    .line 140
    .end local v0    # "center":Landroid/view/View;
    goto :goto_1

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_3

    .line 143
    nop

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 143
    invoke-static {v0, p1, v2, v3, v4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 67
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    .line 69
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 185
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 186
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public setClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .line 153
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    .line 155
    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 73
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 74
    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "userSwitcherController"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    .line 88
    return-void
.end method

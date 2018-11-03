.class public Lcom/android/systemui/qs/QSSecurityFooter;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;,
        Lcom/android/systemui/qs/QSSecurityFooter$H;,
        Lcom/android/systemui/qs/QSSecurityFooter$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDivider:Landroid/view/View;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextContent:Ljava/lang/CharSequence;

.field protected mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUm:Landroid/os/UserManager;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-string v0, "QSSecurityFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSSecurityFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 4
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 74
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 451
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    .line 458
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 79
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    const v2, 0x7f0d01a2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0163

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0161

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0804a7

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 88
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 90
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 91
    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 92
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 93
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    .line 95
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleClick()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSSecurityFooter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleRefreshState()V

    return-void
.end method

.method private createDialog()V
    .locals 24

    .line 258
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v7

    .line 259
    .local v7, "isDeviceManaged":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v8

    .line 260
    .local v8, "hasWorkProfile":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 261
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 262
    .local v9, "deviceOwnerOrganization":Ljava/lang/CharSequence;
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v10

    .line 263
    .local v10, "hasCACerts":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v11

    .line 264
    .local v11, "hasCACertsInWorkProfile":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v12

    .line 265
    .local v12, "isNetworkLoggingEnabled":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, "vpnName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v14

    .line 268
    .local v14, "vpnNameWorkProfile":Ljava/lang/String;
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    .line 269
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 274
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 275
    const v0, 0x7f120429

    goto :goto_0

    :cond_0
    const v0, 0x7f120426

    :goto_0
    move v15, v0

    .line 276
    .local v15, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01a3

    const/4 v3, 0x0

    .line 278
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 280
    .local v5, "dialogView":Landroid/view/View;
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 281
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 284
    invoke-virtual {v6, v7, v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 286
    .local v2, "managementMessage":Ljava/lang/CharSequence;
    const/4 v0, -0x2

    const v1, 0x7f0a0114

    const/16 v3, 0x8

    if-nez v2, :cond_1

    .line 287
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 289
    :cond_1
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 290
    const v1, 0x7f0a0116

    .line 291
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    .local v1, "deviceManagementWarning":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v4, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 297
    .end local v1    # "deviceManagementWarning":Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v6, v7, v10, v11}, Lcom/android/systemui/qs/QSSecurityFooter;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object v4

    .line 299
    .local v4, "caCertsMessage":Ljava/lang/CharSequence;
    const v1, 0x7f0a00a8

    if-nez v4, :cond_2

    .line 300
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 302
    :cond_2
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v1, 0x7f0a00aa

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 304
    .local v1, "caCertsWarning":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v3, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 310
    .end local v1    # "caCertsWarning":Landroid/widget/TextView;
    :goto_2
    invoke-virtual {v6, v12}, Lcom/android/systemui/qs/QSSecurityFooter;->getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 311
    .local v3, "networkLoggingMessage":Ljava/lang/CharSequence;
    const v1, 0x7f0a028f

    if-nez v3, :cond_3

    .line 312
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 314
    :cond_3
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    const v0, 0x7f0a0291

    .line 316
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 317
    .local v0, "networkLoggingWarning":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v0    # "networkLoggingWarning":Landroid/widget/TextView;
    :goto_3
    invoke-virtual {v6, v7, v8, v13, v14}, Lcom/android/systemui/qs/QSSecurityFooter;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 323
    .local v1, "vpnMessage":Ljava/lang/CharSequence;
    const v0, 0x7f0a0498

    if-nez v1, :cond_4

    .line 324
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move/from16 v21, v7

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .end local v7    # "isDeviceManaged":Z
    .local v21, "isDeviceManaged":Z
    goto :goto_4

    .line 326
    .end local v21    # "isDeviceManaged":Z
    .restart local v7    # "isDeviceManaged":Z
    :cond_4
    move/from16 v21, v7

    .end local v7    # "isDeviceManaged":Z
    .restart local v21    # "isDeviceManaged":Z
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 327
    const v0, 0x7f0a049a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    .local v0, "vpnWarning":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    new-instance v7, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v7}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 335
    .end local v0    # "vpnWarning":Landroid/widget/TextView;
    :goto_4
    if-eqz v2, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-eqz v4, :cond_6

    const/16 v18, 0x1

    goto :goto_6

    :cond_6
    const/16 v18, 0x0

    :goto_6
    if-eqz v3, :cond_7

    const/16 v19, 0x1

    goto :goto_7

    :cond_7
    const/16 v19, 0x0

    :goto_7
    if-eqz v1, :cond_8

    const/16 v16, 0x1

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    :goto_8
    move/from16 v22, v8

    const/4 v8, -0x2

    move-object v0, v6

    .end local v8    # "hasWorkProfile":Z
    .local v22, "hasWorkProfile":Z
    move-object/from16 v20, v1

    move v1, v7

    .end local v1    # "vpnMessage":Ljava/lang/CharSequence;
    .local v20, "vpnMessage":Ljava/lang/CharSequence;
    move-object v7, v2

    move/from16 v2, v18

    .end local v2    # "managementMessage":Ljava/lang/CharSequence;
    .local v7, "managementMessage":Ljava/lang/CharSequence;
    move-object/from16 v17, v3

    const/4 v8, -0x1

    move/from16 v3, v19

    .end local v3    # "networkLoggingMessage":Ljava/lang/CharSequence;
    .local v17, "networkLoggingMessage":Ljava/lang/CharSequence;
    move-object/from16 v18, v4

    move/from16 v4, v16

    .end local v4    # "caCertsMessage":Ljava/lang/CharSequence;
    .local v18, "caCertsMessage":Ljava/lang/CharSequence;
    move-object/from16 v16, v5

    .end local v5    # "dialogView":Landroid/view/View;
    .local v16, "dialogView":Landroid/view/View;
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSSecurityFooter;->configSubtitleVisibility(ZZZZLandroid/view/View;)V

    .line 341
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 342
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v8, v1}, Landroid/view/Window;->setLayout(II)V

    .line 344
    return-void
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11042f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    .line 128
    return-void
.end method

.method private handleRefreshState()V
    .locals 22

    .line 141
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v11

    .line 142
    .local v11, "isDeviceManaged":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 143
    .local v12, "currentUser":Landroid/content/pm/UserInfo;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz v12, :cond_0

    .line 144
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v13, v0

    .line 145
    .local v13, "isDemoDevice":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v14

    .line 146
    .local v14, "hasWorkProfile":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v15

    .line 147
    .local v15, "hasCACerts":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v16

    .line 148
    .local v16, "hasCACertsInWorkProfile":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v17

    .line 149
    .local v17, "isNetworkLoggingEnabled":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "vpnName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v19

    .line 151
    .local v19, "vpnNameWorkProfile":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v20

    .line 152
    .local v20, "organizationName":Ljava/lang/CharSequence;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v21

    .line 154
    .local v21, "workProfileName":Ljava/lang/CharSequence;
    if-eqz v11, :cond_1

    if-eqz v13, :cond_3

    :cond_1
    if-nez v15, :cond_3

    if-nez v16, :cond_3

    if-nez v18, :cond_3

    if-eqz v19, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    iput-boolean v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    .line 157
    move-object v0, v10

    move v1, v11

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 161
    const v0, 0x7f0804a7

    .line 162
    .local v0, "footerIconId":I
    if-nez v18, :cond_4

    if-eqz v19, :cond_6

    .line 163
    :cond_4
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    const v0, 0x7f08056f

    goto :goto_3

    .line 166
    :cond_5
    const v0, 0x7f08059d

    .line 169
    :cond_6
    :goto_3
    iget v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v1, v0, :cond_7

    .line 170
    iput v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 171
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_7
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method


# virtual methods
.method protected configSubtitleVisibility(ZZZZLandroid/view/View;)V
    .locals 3
    .param p1, "showDeviceManagement"    # Z
    .param p2, "showCaCerts"    # Z
    .param p3, "showNetworkLogging"    # Z
    .param p4, "showVpn"    # Z
    .param p5, "dialogView"    # Landroid/view/View;

    .line 350
    if-eqz p1, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 355
    .local v0, "mSectionCountExcludingDeviceMgt":I
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 356
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 357
    :cond_2
    if-eqz p4, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 360
    :cond_3
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 361
    return-void

    .line 363
    :cond_4
    const/16 v1, 0x8

    if-eqz p2, :cond_5

    .line 364
    const v2, 0x7f0a00a9

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_5
    if-eqz p3, :cond_6

    .line 367
    const v2, 0x7f0a0290

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_6
    if-eqz p4, :cond_7

    .line 370
    const v2, 0x7f0a0499

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_7
    return-void
.end method

.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasCACerts"    # Z
    .param p3, "hasCACertsInWorkProfile"    # Z

    .line 393
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_0
    if-eqz p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 397
    :cond_1
    if-eqz p3, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasWorkProfile"    # Z
    .param p3, "hasCACerts"    # Z
    .param p4, "hasCACertsInWorkProfile"    # Z
    .param p5, "isNetworkLoggingEnabled"    # Z
    .param p6, "vpnName"    # Ljava/lang/String;
    .param p7, "vpnNameWorkProfile"    # Ljava/lang/String;
    .param p8, "organizationName"    # Ljava/lang/CharSequence;
    .param p9, "workProfileName"    # Ljava/lang/CharSequence;

    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 184
    if-nez p3, :cond_9

    if-nez p4, :cond_9

    if-eqz p5, :cond_0

    goto/16 :goto_3

    .line 193
    :cond_0
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 194
    if-nez p8, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104fa

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_2
    if-nez p6, :cond_5

    if-eqz p7, :cond_3

    goto :goto_0

    .line 211
    :cond_3
    if-nez p8, :cond_4

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104f7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_5
    :goto_0
    if-nez p8, :cond_7

    .line 202
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104f3

    new-array v1, v1, [Ljava/lang/Object;

    .line 204
    if-eqz p6, :cond_6

    move-object v4, p6

    goto :goto_1

    :cond_6
    move-object v4, p7

    :goto_1
    aput-object v4, v1, v0

    .line 202
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104f9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p8, v4, v0

    .line 209
    if-eqz p6, :cond_8

    move-object v0, p6

    goto :goto_2

    :cond_8
    move-object v0, p7

    :goto_2
    aput-object v0, v4, v1

    .line 206
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_9
    :goto_3
    if-nez p8, :cond_a

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104f8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_b
    if-eqz p4, :cond_d

    .line 218
    if-nez p9, :cond_c

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104f6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p9, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_d
    if-eqz p3, :cond_e

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :cond_e
    if-eqz p6, :cond_f

    if-eqz p7, :cond_f

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :cond_f
    if-eqz p7, :cond_10

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104f0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p7, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_10
    if-eqz p6, :cond_12

    .line 237
    if-eqz p2, :cond_11

    .line 238
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104fc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104fb

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "isDeviceManaged"    # Z
    .param p2, "organizationName"    # Ljava/lang/CharSequence;

    .line 384
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    if-eqz p2, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103dd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isNetworkLoggingEnabled"    # Z

    .line 405
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasWorkProfile"    # Z
    .param p3, "vpnName"    # Ljava/lang/String;
    .param p4, "vpnNameWorkProfile"    # Ljava/lang/String;

    .line 411
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 413
    .local v0, "message":Landroid/text/SpannableStringBuilder;
    const v1, 0x7f1103de

    const/4 v2, 0x2

    const v3, 0x7f1103e1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 414
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    aput-object p4, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    .line 419
    if-eqz p3, :cond_2

    move-object v4, p3

    goto :goto_0

    :cond_2
    move-object v4, p4

    :goto_0
    aput-object v4, v3, v5

    .line 418
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 422
    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 423
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    aput-object p4, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 425
    :cond_4
    if-eqz p4, :cond_5

    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103d9

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 429
    :cond_5
    if-eqz p2, :cond_6

    .line 430
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103e0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 433
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 437
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 438
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 440
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 250
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 255
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 124
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f0705bf

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 111
    return-void
.end method

.method public refreshState()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 138
    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 99
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    .line 107
    :goto_0
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialog()V

    .line 134
    return-void
.end method

.method public updateThemeColor()V
    .locals 3

    .line 525
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 526
    .local v0, "backgroundColor":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 527
    .local v1, "textColor":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 528
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 530
    return-void
.end method

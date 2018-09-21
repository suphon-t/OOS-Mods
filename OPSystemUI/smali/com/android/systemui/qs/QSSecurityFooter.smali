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

    .line 54
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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 73
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 443
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    .line 450
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 78
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    const v2, 0x7f0d0191

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0154

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0152

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f08026c

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 87
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 89
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 90
    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 91
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 92
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    .line 94
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleClick()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSSecurityFooter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleRefreshState()V

    return-void
.end method

.method private createDialog()V
    .locals 23

    .line 257
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v7

    .line 258
    .local v7, "isDeviceManaged":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v8

    .line 259
    .local v8, "hasWorkProfile":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 260
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 261
    .local v9, "deviceOwnerOrganization":Ljava/lang/CharSequence;
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v10

    .line 262
    .local v10, "hasCACerts":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v11

    .line 263
    .local v11, "hasCACertsInWorkProfile":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v12

    .line 264
    .local v12, "isNetworkLoggingEnabled":Z
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "vpnName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, "vpnNameWorkProfile":Ljava/lang/String;
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    .line 268
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 269
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f120425

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 271
    const/4 v2, 0x0

    const v3, 0x7f0d0192

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 272
    .local v15, "dialogView":Landroid/view/View;
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 273
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 276
    invoke-virtual {v6, v7, v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 278
    .local v4, "managementMessage":Ljava/lang/CharSequence;
    const/4 v3, -0x2

    const v0, 0x7f0a0107

    const/16 v1, 0x8

    if-nez v4, :cond_0

    .line 279
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v0, 0x7f0a0109

    .line 283
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    .local v0, "deviceManagementWarning":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 289
    .end local v0    # "deviceManagementWarning":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v6, v7, v10, v11}, Lcom/android/systemui/qs/QSSecurityFooter;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object v5

    .line 291
    .local v5, "caCertsMessage":Ljava/lang/CharSequence;
    const v0, 0x7f0a00a1

    if-nez v5, :cond_1

    .line 292
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 294
    :cond_1
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    const v0, 0x7f0a00a3

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    .local v0, "caCertsWarning":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 302
    .end local v0    # "caCertsWarning":Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v6, v12}, Lcom/android/systemui/qs/QSSecurityFooter;->getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 303
    .local v2, "networkLoggingMessage":Ljava/lang/CharSequence;
    const v0, 0x7f0a0279

    if-nez v2, :cond_2

    .line 304
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 306
    :cond_2
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    const v0, 0x7f0a027b

    .line 308
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    .local v0, "networkLoggingWarning":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .end local v0    # "networkLoggingWarning":Landroid/widget/TextView;
    :goto_2
    invoke-virtual {v6, v7, v8, v13, v14}, Lcom/android/systemui/qs/QSSecurityFooter;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 315
    .local v3, "vpnMessage":Ljava/lang/CharSequence;
    const v0, 0x7f0a0463

    if-nez v3, :cond_3

    .line 316
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 318
    :cond_3
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    const v0, 0x7f0a0465

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    .local v0, "vpnWarning":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 327
    .end local v0    # "vpnWarning":Landroid/widget/TextView;
    :goto_3
    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v5, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    :goto_5
    if-eqz v2, :cond_6

    const/16 v20, 0x1

    goto :goto_6

    :cond_6
    const/16 v20, 0x0

    :goto_6
    if-eqz v3, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    move-object v0, v6

    move-object/from16 v19, v2

    move/from16 v2, v17

    .end local v2    # "networkLoggingMessage":Ljava/lang/CharSequence;
    .local v19, "networkLoggingMessage":Ljava/lang/CharSequence;
    move-object/from16 v17, v3

    move/from16 v21, v7

    const/4 v7, -0x2

    move/from16 v3, v20

    .end local v3    # "vpnMessage":Ljava/lang/CharSequence;
    .end local v7    # "isDeviceManaged":Z
    .local v17, "vpnMessage":Ljava/lang/CharSequence;
    .local v21, "isDeviceManaged":Z
    move-object/from16 v18, v4

    move/from16 v4, v16

    .end local v4    # "managementMessage":Ljava/lang/CharSequence;
    .local v18, "managementMessage":Ljava/lang/CharSequence;
    move-object/from16 v16, v5

    const/4 v7, -0x1

    move-object v5, v15

    .end local v5    # "caCertsMessage":Ljava/lang/CharSequence;
    .local v16, "caCertsMessage":Ljava/lang/CharSequence;
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSSecurityFooter;->configSubtitleVisibility(ZZZZLandroid/view/View;)V

    .line 333
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 334
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v7, v1}, Landroid/view/Window;->setLayout(II)V

    .line 336
    return-void
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110429

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    .line 127
    return-void
.end method

.method private handleRefreshState()V
    .locals 22

    .line 140
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v11

    .line 141
    .local v11, "isDeviceManaged":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 142
    .local v12, "currentUser":Landroid/content/pm/UserInfo;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz v12, :cond_0

    .line 143
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v13, v0

    .line 144
    .local v13, "isDemoDevice":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v14

    .line 145
    .local v14, "hasWorkProfile":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v15

    .line 146
    .local v15, "hasCACerts":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v16

    .line 147
    .local v16, "hasCACertsInWorkProfile":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v17

    .line 148
    .local v17, "isNetworkLoggingEnabled":Z
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v18

    .line 149
    .local v18, "vpnName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v19

    .line 150
    .local v19, "vpnNameWorkProfile":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v20

    .line 151
    .local v20, "organizationName":Ljava/lang/CharSequence;
    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v21

    .line 153
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

    .line 156
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

    .line 160
    const v0, 0x7f08026c

    .line 161
    .local v0, "footerIconId":I
    if-nez v18, :cond_4

    if-eqz v19, :cond_6

    .line 162
    :cond_4
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    const v0, 0x7f08032f

    goto :goto_3

    .line 165
    :cond_5
    const v0, 0x7f08035d

    .line 168
    :cond_6
    :goto_3
    iget v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v1, v0, :cond_7

    .line 169
    iput v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 170
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_7
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
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

    .line 342
    if-eqz p1, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    .line 347
    .local v0, "mSectionCountExcludingDeviceMgt":I
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 348
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 349
    :cond_2
    if-eqz p4, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 352
    :cond_3
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 353
    return-void

    .line 355
    :cond_4
    const/16 v1, 0x8

    if-eqz p2, :cond_5

    .line 356
    const v2, 0x7f0a00a2

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_5
    if-eqz p3, :cond_6

    .line 359
    const v2, 0x7f0a027a

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_6
    if-eqz p4, :cond_7

    .line 362
    const v2, 0x7f0a0464

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_7
    return-void
.end method

.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasCACerts"    # Z
    .param p3, "hasCACertsInWorkProfile"    # Z

    .line 385
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_0
    if-eqz p1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_1
    if-eqz p3, :cond_2

    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103cb

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

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 183
    if-nez p3, :cond_9

    if-nez p4, :cond_9

    if-eqz p5, :cond_0

    goto/16 :goto_3

    .line 192
    :cond_0
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 193
    if-nez p8, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104df

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_2
    if-nez p6, :cond_5

    if-eqz p7, :cond_3

    goto :goto_0

    .line 210
    :cond_3
    if-nez p8, :cond_4

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104dc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_5
    :goto_0
    if-nez p8, :cond_7

    .line 201
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104d8

    new-array v1, v1, [Ljava/lang/Object;

    .line 203
    if-eqz p6, :cond_6

    move-object v4, p6

    goto :goto_1

    :cond_6
    move-object v4, p7

    :goto_1
    aput-object v4, v1, v0

    .line 201
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104de

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p8, v4, v0

    .line 208
    if-eqz p6, :cond_8

    move-object v0, p6

    goto :goto_2

    :cond_8
    move-object v0, p7

    :goto_2
    aput-object v0, v4, v1

    .line 205
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_9
    :goto_3
    if-nez p8, :cond_a

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104dd

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_b
    if-eqz p4, :cond_d

    .line 217
    if-nez p9, :cond_c

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104db

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p9, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_d
    if-eqz p3, :cond_e

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :cond_e
    if-eqz p6, :cond_f

    if-eqz p7, :cond_f

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1104e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    :cond_f
    if-eqz p7, :cond_10

    .line 232
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104d5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p7, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_10
    if-eqz p6, :cond_12

    .line 236
    if-eqz p2, :cond_11

    .line 237
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104e1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1104e0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "isDeviceManaged"    # Z
    .param p2, "organizationName"    # Ljava/lang/CharSequence;

    .line 376
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 377
    :cond_0
    if-eqz p2, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isNetworkLoggingEnabled"    # Z

    .line 397
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasWorkProfile"    # Z
    .param p3, "vpnName"    # Ljava/lang/String;
    .param p4, "vpnNameWorkProfile"    # Ljava/lang/String;

    .line 403
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 405
    .local v0, "message":Landroid/text/SpannableStringBuilder;
    const v1, 0x7f1103d8

    const/4 v2, 0x2

    const v3, 0x7f1103db

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 406
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    aput-object p4, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 410
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    .line 411
    if-eqz p3, :cond_2

    move-object v4, p3

    goto :goto_0

    :cond_2
    move-object v4, p4

    :goto_0
    aput-object v4, v3, v5

    .line 410
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 414
    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 415
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    aput-object p4, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 417
    :cond_4
    if-eqz p4, :cond_5

    .line 418
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103d3

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 421
    :cond_5
    if-eqz p2, :cond_6

    .line 422
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103da

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 425
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 429
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 430
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f1103de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 432
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 249
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 252
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 254
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f07057e

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 110
    return-void
.end method

.method public refreshState()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 137
    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 98
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    .line 106
    :goto_0
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialog()V

    .line 133
    return-void
.end method

.method public updateThemeColor()V
    .locals 3

    .line 517
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 518
    .local v0, "backgroundColor":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 519
    .local v1, "textColor":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 520
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 522
    return-void
.end method

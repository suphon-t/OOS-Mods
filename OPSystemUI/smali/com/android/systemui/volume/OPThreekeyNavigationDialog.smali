.class public Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
.super Ljava/lang/Object;
.source "OPThreekeyNavigationDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mAccentColor:I

.field private final mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

.field private final mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private final mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

.field private mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

.field private mMainView:Landroid/view/View;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mParentStatus:I

.field private mSecondView:Landroid/view/View;

.field private mShowing:Z

.field private mShowingType:I

.field private mTextSize:I

.field private mThemeBgColor:I

.field private mThemeColorMode:I

.field private mThemeIconColor:I

.field private mThemeTextColor:I

.field private mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

.field private mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

.field private mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

.field mThreeKeyRowIcon:[Landroid/widget/ImageView;

.field mThreeKeyRowText:[Landroid/widget/TextView;

.field private mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

.field private mThreekeyType:I

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUserId:I

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "OPThreekeyNavigationDialog"

    sput-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    .line 54
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    .line 79
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    .line 81
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    .line 85
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    .line 86
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    .line 87
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    .line 88
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    .line 89
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    .line 90
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mTextSize:I

    .line 94
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUserId:I

    .line 298
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$2;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

    .line 731
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$4;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    .line 114
    const-class v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    .line 115
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$1;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$1;-><init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->stateChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->changeH()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->rotateH()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # Z

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateTheme(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->inflateView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->show()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->setAlphaH(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->change()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->setFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->showH(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->dismissH(Landroid/view/View;)V

    return-void
.end method

.method private applyTheme()V
    .locals 6

    .line 686
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 687
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v1, :cond_0

    return-void

    .line 689
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 698
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    .line 699
    const v1, 0x7f06032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    .line 700
    const v1, 0x7f060312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    goto :goto_0

    .line 691
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    .line 692
    const v1, 0x7f06032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    .line 693
    const v1, 0x7f060310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    .line 694
    nop

    .line 704
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const v4, 0x7f0a041a

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 705
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 706
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 708
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 709
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 710
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 712
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 713
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 714
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 716
    return-void
.end method

.method private change()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    return-void
.end method

.method private changeH()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->checkShowPage()I

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateThreekeyLayout()V

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    .line 490
    :cond_0
    return-void
.end method

.method private checkShowPage()I
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 494
    .local v0, "mMainViewExist":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 495
    .local v3, "mSecondViewExist":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 496
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v2, "mShowingType Invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 497
    :cond_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 498
    iput v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    goto :goto_2

    .line 499
    :cond_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    .line 500
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    goto :goto_2

    .line 501
    :cond_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    .line 502
    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    .line 505
    :cond_5
    :goto_2
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkShowPage mShowingType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    return v1
.end method

.method private dismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    return-void
.end method

.method private dismissH(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 463
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 469
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 472
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 475
    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    const-class v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    if-nez v1, :cond_0

    .line 104
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v2, "OPThreekeyNavigationDialog getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 106
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-direct {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->init()V

    .line 108
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    return-object v0

    .line 108
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private inflateView()V
    .locals 10

    .line 172
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateView mOrientationType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d014f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0152

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    .line 176
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    .line 178
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const v8, 0x1000128

    const/4 v9, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 188
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OPThreekeyNavigationDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 191
    return-void
.end method

.method private init()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    .line 140
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init / mThreekeyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->inflateView()V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 146
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mDensity:I

    .line 147
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 148
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 149
    .local v1, "config":Lcom/android/systemui/statusbar/policy/ConfigurationController;
    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 151
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 155
    return-void
.end method

.method private initDialog()V
    .locals 18

    .line 194
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDialog / mMainView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " / mSecondView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 197
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v2, 0x7f0a041d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    .line 199
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v2, 0x7f0a0420

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

    .line 200
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v2, 0x7f0a0426

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    .line 203
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    const v2, 0x7f0a041e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

    .line 204
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    .line 209
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v5, 0x7f0a042a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 210
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v6, 0x7f0a042b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 211
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    const v7, 0x7f0a0429

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 213
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    const v4, 0x7f0a041a

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f080204

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v8, 0x7f080200

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v7

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v9, 0x7f0801ff

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    new-array v3, v2, [Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    .line 218
    new-array v3, v2, [Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    .line 219
    move v3, v5

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 220
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v10, v10, v3

    const v11, 0x7f0a0419

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    aput-object v10, v9, v3

    .line 221
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v10, v10, v3

    const v11, 0x7f0a0428

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v9, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    const v9, 0x7f080711

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    const v9, 0x7f080712

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    const v9, 0x7f08070f

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    const v9, 0x7f11068d

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    const v9, 0x7f1106a1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    const v9, 0x7f11068c

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {v0, v6}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateTheme(Z)V

    .line 234
    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    const/16 v9, 0x8

    packed-switch v3, :pswitch_data_0

    .line 252
    const v2, 0x7f070681

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 253
    .local v2, "up_y":I
    const v3, 0x7f07067f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 254
    .local v3, "middle_y":I
    const v8, 0x7f07067d

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 256
    .local v8, "down_y":I
    const v10, 0x7f0704fc

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 258
    .local v10, "layoutPadding":I
    const/4 v11, 0x3

    .line 259
    .local v11, "picNum":I
    const/4 v12, -0x2

    if-ne v2, v3, :cond_5

    if-ne v3, v8, :cond_5

    .line 261
    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    rem-int/2addr v13, v11

    aget-object v4, v4, v13

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    add-int/lit8 v14, v11, -0x2

    add-int/2addr v13, v14

    rem-int/2addr v13, v11

    aget-object v4, v4, v13

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    add-int/lit8 v14, v11, -0x1

    add-int/2addr v13, v14

    rem-int/2addr v13, v11

    aget-object v4, v4, v13

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v9, 0x7f0704ff

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v4, v5, v9, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 266
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_3

    .line 245
    .end local v2    # "up_y":I
    .end local v3    # "middle_y":I
    .end local v8    # "down_y":I
    .end local v10    # "layoutPadding":I
    .end local v11    # "picNum":I
    :pswitch_0
    move v3, v5

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 246
    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 248
    .end local v3    # "i":I
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    goto/16 :goto_4

    .line 243
    :pswitch_1
    goto/16 :goto_4

    .line 236
    :pswitch_2
    move v3, v5

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 237
    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v3

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 239
    .end local v3    # "i":I
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v2, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v3, v6

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    goto/16 :goto_4

    .line 268
    .restart local v2    # "up_y":I
    .local v3, "middle_y":I
    .restart local v8    # "down_y":I
    .restart local v10    # "layoutPadding":I
    .restart local v11    # "picNum":I
    :cond_5
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    rem-int/2addr v13, v11

    aget-object v9, v9, v13

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v13, 0x3e8

    invoke-direct {v0, v9, v13}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->setAlpha(Landroid/view/View;I)V

    .line 270
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v13, v6

    add-int/lit8 v14, v11, -0x2

    add-int/2addr v13, v14

    rem-int/2addr v13, v11

    aget-object v9, v9, v13

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v13, 0x3e99999a    # 0.3f

    invoke-virtual {v9, v13}, Landroid/view/View;->setAlpha(F)V

    .line 271
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v14, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v14, v6

    add-int/lit8 v15, v11, -0x1

    add-int/2addr v14, v15

    rem-int/2addr v14, v11

    aget-object v9, v9, v14

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/view/View;->setAlpha(F)V

    .line 272
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 273
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v9, 0x7f0704fe

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int v13, v7, v10

    sub-int/2addr v9, v13

    invoke-virtual {v4, v5, v9, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 274
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    const v4, 0x105019d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 279
    .local v4, "statusBarHeight":I
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 280
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 281
    iget-object v13, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v13, "lp0":Landroid/widget/FrameLayout$LayoutParams;
    neg-int v14, v10

    sub-int v15, v2, v10

    add-int/2addr v15, v4

    invoke-virtual {v13, v14, v15, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 285
    iget-object v14, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v14, v14, v5

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v14, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    neg-int v15, v10

    sub-int v16, v3, v10

    add-int v7, v16, v4

    invoke-virtual {v14, v15, v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 289
    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v6, v7, v6

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v6, "lp3":Landroid/widget/FrameLayout$LayoutParams;
    neg-int v7, v10

    sub-int v12, v8, v10

    add-int/2addr v12, v4

    invoke-virtual {v6, v7, v12, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    iget-object v5, v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    .end local v2    # "up_y":I
    .end local v3    # "middle_y":I
    .end local v4    # "statusBarHeight":I
    .end local v6    # "lp3":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "down_y":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "layoutPadding":I
    .end local v11    # "picNum":I
    .end local v13    # "lp0":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :goto_4
    return-void

    .line 195
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_6
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerOrientationListener(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 366
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOrientationListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 370
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 376
    :goto_0
    return-void
.end method

.method private rotateH()V
    .locals 5

    .line 518
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rotateH /mOrientationType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 526
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateThreekeyLayout()V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 529
    .local v0, "mainViewCheckParent":Landroid/view/ViewParent;
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 556
    if-eqz v0, :cond_4

    .line 557
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 558
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d014f

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    .line 559
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 545
    :pswitch_0
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    if-ne v3, v1, :cond_2

    .line 546
    if-eqz v0, :cond_4

    .line 547
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 548
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0151

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    .line 549
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 551
    :cond_2
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    goto :goto_0

    .line 543
    :pswitch_1
    goto :goto_0

    .line 531
    :pswitch_2
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    if-ne v3, v1, :cond_3

    .line 532
    if-eqz v0, :cond_4

    .line 533
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 534
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0150

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    .line 535
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 537
    :cond_3
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    .line 564
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    .line 565
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAlpha(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    return-void
.end method

.method private setAlphaH(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 572
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 573
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 574
    return-void
.end method

.method private setFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 659
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFinished / UserHandle.myUserId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUpdateMonitor.getCurrentUser():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 661
    return-void
.end method

.method private show()V
    .locals 5

    .line 317
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show mShowingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 319
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 321
    .local v1, "rotation":I
    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    if-eq v1, v2, :cond_0

    .line 322
    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    .line 326
    .end local v1    # "rotation":I
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 345
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0152

    invoke-virtual {v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    .line 347
    iput-boolean v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    .line 348
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 327
    :cond_2
    :goto_0
    const v1, 0x7f0d014f

    .line 328
    .local v1, "MainViewId":I
    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 335
    :pswitch_0
    const v1, 0x7f0d0151

    .line 336
    goto :goto_1

    .line 333
    :pswitch_1
    goto :goto_1

    .line 330
    :pswitch_2
    const v1, 0x7f0d0150

    .line 331
    nop

    .line 340
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    .line 342
    iput-boolean v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    .line 343
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 344
    .end local v1    # "MainViewId":I
    nop

    .line 350
    :cond_3
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->registerOrientationListener(Z)V

    .line 351
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showH(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 437
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH view.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->removeMessages(I)V

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->checkShowPage()I

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->updateThreekeyLayout()V

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    .line 453
    return-void
.end method

.method private stateChange(I)V
    .locals 3
    .param p1, "threeKey"    # I

    .line 510
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    if-eq p1, v0, :cond_1

    .line 512
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    .line 513
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->initDialog()V

    .line 515
    :cond_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 10
    .param p1, "force"    # Z

    .line 665
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 668
    .local v0, "theme":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 670
    .local v1, "accentColor":I
    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 672
    .local v2, "change":Z
    :goto_1
    sget-object v5, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTheme change:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " force:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " theme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " accentColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "0x%08X"

    new-array v8, v3, [Ljava/lang/Object;

    .line 674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mThemeColorMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mAccentColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "0x%08X"

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    .line 676
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    .line 679
    :cond_3
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThemeColorMode:I

    .line 680
    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mAccentColor:I

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->applyTheme()V

    .line 683
    :cond_4
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 6

    .line 379
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 381
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_1

    return-void

    .line 382
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v1, :cond_2

    return-void

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 385
    .local v1, "gravity":I
    sget-boolean v2, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateThreekeyLayout() / mShowingType == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_3
    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 387
    const/16 v1, 0x31

    .line 388
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 389
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    return-void

    .line 393
    :cond_4
    const/4 v2, 0x0

    .line 394
    .local v2, "isRightTk":Z
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mThreekeyType:I

    if-nez v3, :cond_5

    .line 395
    const/4 v2, 0x1

    .line 398
    :cond_5
    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOrientationType:I

    packed-switch v3, :pswitch_data_0

    .line 421
    if-eqz v2, :cond_9

    .line 422
    const/16 v1, 0x35

    goto :goto_0

    .line 414
    :pswitch_0
    if-eqz v2, :cond_6

    .line 415
    const/16 v1, 0x55

    goto :goto_0

    .line 417
    :cond_6
    const/16 v1, 0x35

    .line 419
    goto :goto_0

    .line 407
    :pswitch_1
    if-eqz v2, :cond_7

    .line 408
    const/16 v1, 0x53

    goto :goto_0

    .line 410
    :cond_7
    const/16 v1, 0x55

    .line 412
    goto :goto_0

    .line 400
    :pswitch_2
    if-eqz v2, :cond_8

    .line 401
    const/16 v1, 0x33

    goto :goto_0

    .line 403
    :cond_8
    const/16 v1, 0x53

    .line 405
    goto :goto_0

    .line 424
    :cond_9
    const/16 v1, 0x33

    .line 429
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 430
    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 431
    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :cond_a
    return-void

    .line 379
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "gravity":I
    .end local v2    # "isRightTk":Z
    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 721
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged, mShowingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / newConfig.toString():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 729
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 5
    .param p1, "threekey"    # I

    .line 640
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    .line 641
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_threekey_navigation_completed"

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    .line 642
    .local v0, "completed":Z
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThreeKeyStatus() / completed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / userId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / UserHandle.myUserId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", threekey:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mShowing:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mParentStatus:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-eqz v0, :cond_1

    .line 645
    return-void

    .line 648
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mOPThreekeyNavigationDialog:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    if-nez v1, :cond_2

    return-void

    .line 649
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 652
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mHandler:Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 653
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mParentStatus:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->mShowing:Z

    if-nez v1, :cond_4

    .line 654
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->show()V

    .line 656
    :cond_4
    return-void
.end method

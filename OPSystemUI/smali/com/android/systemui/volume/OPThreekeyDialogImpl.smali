.class public Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.super Ljava/lang/Object;
.source "OPThreekeyDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/OPThreekeyDialog;
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccentColor:I

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDensity:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogPosition:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

.field private mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

.field private mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mShowing:Z

.field private mThemeBgColor:I

.field private mThemeColorMode:I

.field private mThemeIconColor:I

.field private mThemeTextColor:I

.field private mThreeKeyIcon:Landroid/widget/ImageView;

.field private mThreeKeyText:Landroid/widget/TextView;

.field private mThreeKeystate:I

.field private mWindow:Landroid/view/Window;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, "OPThreekeyDialogImpl"

    sput-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    .line 61
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 77
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    .line 80
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    .line 86
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    .line 87
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    .line 88
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    .line 89
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    .line 90
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    .line 443
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    .line 96
    const-class v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    .line 98
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 118
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 56
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # I

    .line 56
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->stateChange(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    .line 384
    const/16 v0, 0xbb8

    return v0
.end method

.method private dismissH(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 348
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "dismissH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    .line 353
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    .line 355
    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 357
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 359
    return-void
.end method

.method private initDialog()V
    .locals 4

    .line 151
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 154
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 156
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10c0128

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 169
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-class v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0d0143

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a03fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a03fd

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a03ff

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    .line 180
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    .line 181
    return-void
.end method

.method private registerOrientationListener(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 192
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 193
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 199
    :goto_0
    return-void
.end method

.method private showH(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 331
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "showH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    .line 335
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 336
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    .line 338
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    .line 340
    iput-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 341
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 345
    :cond_2
    return-void
.end method

.method private stateChange(I)V
    .locals 3
    .param p1, "threeKey"    # I

    .line 362
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-eq p1, v0, :cond_1

    .line 364
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 370
    :cond_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 6
    .param p1, "force"    # Z

    .line 508
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 509
    .local v0, "theme":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 511
    .local v1, "accentColor":I
    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 512
    .local v2, "change":Z
    :goto_1
    sget-boolean v3, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTheme change"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " force:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    .line 514
    :cond_3
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    .line 515
    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->applyTheme()V

    .line 518
    :cond_4
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 17

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x0

    .line 206
    .local v1, "iconId":I
    const/4 v2, 0x0

    .line 208
    .local v2, "textId":I
    const/4 v3, 0x0

    .line 209
    .local v3, "bgid":I
    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 211
    .local v4, "res":Landroid/content/res/Resources;
    if-nez v4, :cond_1

    .line 212
    return-void

    .line 215
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 216
    .local v5, "positionY":I
    iget-object v6, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 217
    .local v6, "positionX":I
    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 218
    .local v7, "gravity":I
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 228
    :pswitch_0
    const v1, 0x7f0804e4

    .line 229
    const v2, 0x7f110671

    .line 230
    goto :goto_0

    .line 224
    :pswitch_1
    const v1, 0x7f0804e7

    .line 225
    const v2, 0x7f110686

    .line 226
    goto :goto_0

    .line 220
    :pswitch_2
    const v1, 0x7f0804e6

    .line 221
    const v2, 0x7f110672

    .line 222
    nop

    .line 235
    :goto_0
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    const v11, 0x7f07064a

    const v12, 0x7f07064c

    const v13, 0x7f07064e

    const/4 v15, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const v14, 0x7f070648

    packed-switch v8, :pswitch_data_1

    .line 276
    const/16 v7, 0x35

    .line 277
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 278
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_b

    .line 279
    const v8, 0x7f07064d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 280
    const v3, 0x7f0801e6

    goto/16 :goto_4

    .line 264
    :pswitch_3
    const/16 v7, 0x55

    .line 265
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 266
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_2

    .line 267
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    .line 268
    :cond_2
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v9, :cond_3

    .line 269
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    .line 270
    :cond_3
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v15, :cond_4

    .line 271
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 273
    :cond_4
    :goto_1
    const v3, 0x7f0801e5

    .line 274
    goto/16 :goto_4

    .line 252
    :pswitch_4
    const/16 v7, 0x53

    .line 253
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 254
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_5

    .line 255
    const v8, 0x7f07064d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 256
    :cond_5
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v9, :cond_6

    .line 257
    const v8, 0x7f07064b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 258
    :cond_6
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v15, :cond_7

    .line 259
    const v8, 0x7f070649

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 261
    :cond_7
    :goto_2
    const v3, 0x7f0801e5

    .line 262
    goto :goto_4

    .line 237
    :pswitch_5
    const/16 v7, 0x33

    .line 239
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v14, 0x105019d

    .line 240
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int v5, v8, v14

    .line 242
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_8

    .line 243
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3

    .line 244
    :cond_8
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v9, :cond_9

    .line 245
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3

    .line 246
    :cond_9
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v15, :cond_a

    .line 247
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 249
    :cond_a
    :goto_3
    const v3, 0x7f0801e5

    .line 250
    goto :goto_4

    .line 281
    :cond_b
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v9, :cond_c

    .line 282
    const v8, 0x7f07064b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 283
    const v3, 0x7f0801e5

    goto :goto_4

    .line 284
    :cond_c
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v15, :cond_d

    .line 285
    const v8, 0x7f070649

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 286
    const v3, 0x7f0801e4

    .line 291
    :cond_d
    :goto_4
    const v8, 0x7f070477

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 294
    .local v8, "textSize":I
    iget v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    .line 295
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    if-eqz v9, :cond_e

    .line 296
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    :cond_e
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    if-eqz v9, :cond_f

    .line 299
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    const/4 v10, 0x0

    int-to-float v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 304
    :cond_f
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_10

    .line 305
    iget-object v9, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_10
    iput v5, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    .line 310
    :cond_11
    const v9, 0x7f0704d9

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 313
    .local v9, "layoutPadding":I
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 314
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v11, v5, v9

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 315
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v11, v6, v9

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 316
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    .line 318
    sget-boolean v10, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v10, :cond_12

    sget-object v10, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateThreekeyLayout mThreeKeystate:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public applyTheme()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 423
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 432
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    .line 433
    const v1, 0x7f06032c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    .line 434
    const v1, 0x7f060311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    goto :goto_0

    .line 425
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    .line 426
    const v1, 0x7f06032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    .line 427
    const v1, 0x7f06030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    .line 428
    nop

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 438
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 440
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 140
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 143
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 148
    return-void
.end method

.method public init(ILcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;)V
    .locals 4
    .param p1, "windowType"    # I
    .param p2, "listener"    # Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    .line 122
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 125
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDensity:I

    .line 126
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 127
    iput-object p2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    .line 130
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    .line 136
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 413
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    .line 416
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 3
    .param p1, "threekey"    # I

    .line 323
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThreeKeyStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 326
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->show(I)V

    .line 328
    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .line 373
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 375
    .local v0, "timeout":I
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    .line 376
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 375
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    sget-boolean v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 381
    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

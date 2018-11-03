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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    .line 86
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    .line 92
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    .line 93
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    .line 94
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    .line 95
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    .line 96
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    .line 509
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    .line 106
    const-class v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    .line 108
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 116
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->checkOrientationType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->stateChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    return-void
.end method

.method private checkOrientationType()V
    .locals 5

    .line 121
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 123
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 127
    .local v1, "rotation":I
    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    if-eq v1, v2, :cond_1

    .line 128
    sget-object v2, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientype to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    .line 132
    :cond_1
    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    .line 450
    const/16 v0, 0xbb8

    return v0
.end method

.method private dismissH(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 414
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "dismissH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 417
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    .line 419
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    .line 421
    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 423
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 425
    return-void
.end method

.method private initDialog()V
    .locals 4

    .line 171
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 174
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    .line 175
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 176
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10c0128

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 188
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-class v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0d014c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a041a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0419

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0428

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    .line 200
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    .line 201
    return-void
.end method

.method private registerOrientationListener(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 212
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 213
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "Can detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 216
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 219
    :goto_0
    return-void
.end method

.method private showH(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 393
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "showH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 398
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateTheme(Z)V

    .line 401
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->checkOrientationType()V

    .line 403
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showH mOrientationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 407
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 411
    :cond_2
    return-void
.end method

.method private stateChange(I)V
    .locals 3
    .param p1, "threeKey"    # I

    .line 428
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-eq p1, v0, :cond_1

    .line 430
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 436
    :cond_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 6
    .param p1, "force"    # Z

    .line 575
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 576
    .local v0, "theme":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 578
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

    .line 579
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

    .line 580
    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    .line 581
    :cond_3
    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    .line 582
    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->applyTheme()V

    .line 585
    :cond_4
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 17

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    const/4 v1, 0x0

    .line 226
    .local v1, "iconId":I
    const/4 v2, 0x0

    .line 228
    .local v2, "textId":I
    const/4 v3, 0x0

    .line 229
    .local v3, "bgid":I
    iget-object v4, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 231
    .local v4, "res":Landroid/content/res/Resources;
    if-nez v4, :cond_1

    .line 232
    return-void

    .line 235
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 236
    .local v5, "positionY":I
    iget-object v6, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 237
    .local v6, "positionX":I
    iget-object v7, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 238
    .local v7, "gravity":I
    iget v8, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    const v1, 0x7f08070f

    .line 249
    const v2, 0x7f11068c

    .line 250
    goto :goto_0

    .line 244
    :pswitch_1
    const v1, 0x7f080712

    .line 245
    const v2, 0x7f1106a1

    .line 246
    goto :goto_0

    .line 240
    :pswitch_2
    const v1, 0x7f080711

    .line 241
    const v2, 0x7f11068d

    .line 242
    nop

    .line 255
    :goto_0
    const v8, 0x7f0b0064

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 256
    .local v8, "threekeyType":I
    const/4 v9, 0x1

    .line 257
    .local v9, "isRightTk":Z
    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 258
    const/4 v9, 0x0

    goto :goto_1

    .line 260
    :cond_2
    if-nez v8, :cond_3

    .line 261
    const/4 v9, 0x1

    .line 265
    :cond_3
    :goto_1
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    const v14, 0x7f070684

    const v15, 0x7f070683

    const/4 v12, 0x2

    const v13, 0x105019d

    packed-switch v11, :pswitch_data_1

    .line 323
    if-eqz v9, :cond_12

    .line 324
    const/16 v7, 0x35

    goto/16 :goto_9

    .line 304
    :pswitch_3
    if-eqz v9, :cond_4

    .line 305
    const/16 v7, 0x55

    goto :goto_2

    .line 307
    :cond_4
    const/16 v7, 0x35

    .line 309
    :goto_2
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 310
    if-nez v9, :cond_5

    .line 311
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v5, v11

    .line 313
    :cond_5
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_6

    .line 314
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3

    .line 315
    :cond_6
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_7

    .line 316
    const v10, 0x7f070680

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_3

    .line 317
    :cond_7
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_8

    .line 318
    const v10, 0x7f07067e

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 320
    :cond_8
    :goto_3
    const v3, 0x7f080200

    .line 321
    goto/16 :goto_a

    .line 288
    :pswitch_4
    if-eqz v9, :cond_9

    .line 289
    const/16 v7, 0x53

    goto :goto_4

    .line 291
    :cond_9
    const/16 v7, 0x55

    .line 293
    :goto_4
    const v11, 0x7f070682

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 294
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_a

    .line 295
    const v10, 0x7f070681

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 301
    .end local v5    # "positionY":I
    .local v10, "positionY":I
    :goto_5
    move v5, v10

    goto :goto_6

    .line 296
    .end local v10    # "positionY":I
    .restart local v5    # "positionY":I
    :cond_a
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_b

    .line 297
    const v10, 0x7f07067f

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_5

    .line 298
    :cond_b
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    .line 299
    const v10, 0x7f07067d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_5

    .line 301
    :cond_c
    :goto_6
    const v3, 0x7f080200

    .line 302
    goto/16 :goto_a

    .line 267
    :pswitch_5
    if-eqz v9, :cond_d

    .line 268
    const/16 v7, 0x33

    goto :goto_7

    .line 270
    :cond_d
    const/16 v7, 0x53

    .line 273
    :goto_7
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 274
    if-eqz v9, :cond_e

    .line 275
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v5, v11

    .line 278
    :cond_e
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_f

    .line 279
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_8

    .line 280
    :cond_f
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_10

    .line 281
    const v10, 0x7f070680

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_8

    .line 282
    :cond_10
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_11

    .line 283
    const v10, 0x7f07067e

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 285
    :cond_11
    :goto_8
    const v3, 0x7f080200

    .line 286
    goto :goto_a

    .line 326
    :cond_12
    const/16 v7, 0x33

    .line 328
    :goto_9
    const v11, 0x7f070682

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 329
    iget v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v11, v10, :cond_13

    .line 330
    const v10, 0x7f070681

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v5, v10, v11

    .line 331
    const v3, 0x7f080204

    goto :goto_a

    .line 332
    :cond_13
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v10, v12, :cond_14

    .line 333
    const v10, 0x7f07067f

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v5, v10, v11

    .line 334
    const v3, 0x7f080200

    goto :goto_a

    .line 335
    :cond_14
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_15

    .line 336
    const v10, 0x7f07067d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v5, v10, v11

    .line 337
    const v3, 0x7f0801ff

    .line 347
    :cond_15
    :goto_a
    iget v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1a

    .line 348
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_16

    .line 349
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    :cond_16
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    if-eqz v10, :cond_18

    .line 355
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, "inputText":Ljava/lang/String;
    if-eqz v10, :cond_17

    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_17

    .line 357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 359
    :cond_17
    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .end local v10    # "inputText":Ljava/lang/String;
    :cond_18
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v10, :cond_19

    .line 367
    iget-object v10, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    :cond_19
    iput v5, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    .line 372
    :cond_1a
    const v10, 0x7f0704fc

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 375
    .local v10, "layoutPadding":I
    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 376
    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v12, v5, v10

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 377
    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v12, v6, v10

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 378
    iget-object v11, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v12, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v11, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    .line 380
    sget-boolean v11, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v11, :cond_1b

    sget-object v11, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateThreekeyLayout mThreeKeystate:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1b
    return-void

    nop

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

    .line 487
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 489
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeColorMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 498
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    .line 499
    const v1, 0x7f06032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    .line 500
    const v1, 0x7f060312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    goto :goto_0

    .line 491
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    .line 492
    const v1, 0x7f06032b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    .line 493
    const v1, 0x7f060310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    .line 494
    nop

    .line 503
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeBgColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThemeIconColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 506
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 160
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 163
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 168
    return-void
.end method

.method public init(ILcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;)V
    .locals 4
    .param p1, "windowType"    # I
    .param p2, "listener"    # Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    .line 136
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 140
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDensity:I

    .line 141
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 142
    iput-object p2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    .line 145
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    .line 153
    sget-object v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "in OPThreekeyDialog init mOPThreekeyNavigationDialog.getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->getInstance(Landroid/content/Context;)Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 156
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 479
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    .line 482
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 3
    .param p1, "threekey"    # I

    .line 385
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

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 387
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 388
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->show(I)V

    .line 390
    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 441
    .local v0, "timeout":I
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    .line 442
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 441
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 443
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

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 447
    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

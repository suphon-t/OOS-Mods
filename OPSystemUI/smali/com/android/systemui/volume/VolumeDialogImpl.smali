.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccentColor:I

.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mActiveAlpha:I

.field private mActiveStream:I

.field private mActiveTint:Landroid/content/res/ColorStateList;

.field private mAutomute:Z

.field private mBackgroundSliderTint:Landroid/content/res/ColorStateList;

.field private final mClickOutputChooser:Landroid/view/View$OnClickListener;

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private mConnectedDevice:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private mDialogRowContainer:Landroid/view/ViewGroup;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHovering:Z

.field private mInactiveAlpha:I

.field private mInactiveTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mOutputChooser:Landroid/widget/ImageButton;

.field private mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

.field private final mOutputChooserLock:Ljava/lang/Object;

.field private mPendingInit:Z

.field private mPrevActiveStream:I

.field private mRingerIcon:Landroid/widget/ImageButton;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsView:Landroid/view/View;

.field private mShowA11yStream:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mSinglePress:Ljava/lang/Runnable;

.field private mSingleUnpress:Ljava/lang/Runnable;

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mThemeButtonBg:I

.field private mThemeColorDialogBackground:I

.field private mThemeColorDialogRowContainerBackground:I

.field private mThemeColorIcon:I

.field private mThemeColorMode:I

.field private mThemeColorSeekbar:I

.field private mThemeColorSeekbarBackgroundDrawable:I

.field private mThemeColorSeekbarThumb:I

.field private mThemeColorText:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 157
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 179
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 184
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    .line 185
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    .line 186
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 187
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 188
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 189
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 190
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 191
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 193
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 196
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    .line 202
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 1343
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSinglePress:Ljava/lang/Runnable;

    .line 1351
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSingleUnpress:Ljava/lang/Runnable;

    .line 1359
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    .line 1368
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 211
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f12054a

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 212
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 214
    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 215
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 217
    const v0, 0x7f0603f8

    const v1, 0x42ffffff    # 127.99999f

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBackgroundSliderTint:Landroid/content/res/ColorStateList;

    .line 219
    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 131
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/systemui/volume/OutputChooserDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 131
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSingleUnpress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showOutputChooserH()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # I

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # I

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    return-object v0
.end method

.method private addExistingRows()V
    .locals 10

    .line 419
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 420
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 422
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v8

    .line 423
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v9

    .line 422
    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 424
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 425
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 420
    .end local v2    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .param p5, "defaultStream"    # Z

    .line 406
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    .line 407
    return-void
.end method

.method private addRow(IIIZZZ)V
    .locals 9
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .param p5, "defaultStream"    # Z
    .param p6, "dynamic"    # Z

    .line 411
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding row for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    .line 413
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 414
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method

.method private applyAndroidTheme()V
    .locals 2

    .line 1746
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1747
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080a92

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 1748
    const v1, 0x7f080a96

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 1749
    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 1751
    const v1, 0x7f060399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 1752
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 1753
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 1757
    const v1, 0x7f080a94

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 1758
    const v1, 0x7f060349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    .line 1760
    return-void
.end method

.method private applyBlackTheme()V
    .locals 2

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1731
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080a91

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 1732
    const v1, 0x7f080a95

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 1733
    const v1, 0x7f06032e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 1735
    const v1, 0x7f060398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 1736
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 1737
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 1740
    const v1, 0x7f080a93

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 1741
    const v1, 0x7f060348

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    .line 1743
    return-void
.end method

.method private applyColorTheme(Z)V
    .locals 3
    .param p1, "forceupdate"    # Z

    .line 1682
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 1685
    .local v0, "theme":I
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAccentColorChanged(IZ)Z

    move-result v1

    .line 1688
    .local v1, "accentColorChanged":Z
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    if-ne v2, v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 1689
    return-void

    .line 1692
    :cond_0
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    .line 1694
    packed-switch v0, :pswitch_data_0

    .line 1705
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyWhiteTheme()V

    goto :goto_0

    .line 1702
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyAndroidTheme()V

    .line 1703
    goto :goto_0

    .line 1699
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyBlackTheme()V

    .line 1700
    goto :goto_0

    .line 1696
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyWhiteTheme()V

    .line 1697
    nop

    .line 1710
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColors()V

    .line 1711
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyColors()V
    .locals 5

    .line 1763
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1765
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1766
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1769
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1771
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1774
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1775
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v1, v2, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZZ)V

    .line 1776
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    goto :goto_0

    .line 1777
    :cond_1
    return-void
.end method

.method private applyWhiteTheme()V
    .locals 2

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1715
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080a92

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogBackground:I

    .line 1716
    const v1, 0x7f080a96

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorDialogRowContainerBackground:I

    .line 1717
    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorText:I

    .line 1719
    const v1, 0x7f060399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    .line 1720
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbar:I

    .line 1721
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarThumb:I

    .line 1724
    const v1, 0x7f080a94

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    .line 1725
    const v1, 0x7f060349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeButtonBg:I

    .line 1727
    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    .line 688
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    const/16 v0, 0x1388

    return v0

    .line 690
    :cond_2
    const/16 v0, 0xbb8

    return v0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .line 444
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 445
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 446
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_0
    goto :goto_0

    .line 447
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 431
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 432
    return-object v1

    .line 434
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_0
    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 436
    .restart local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 437
    return-object v1

    .line 439
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_2
    goto :goto_1

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object v0
.end method

.method private getAlphaAttr(I)I
    .locals 3
    .param p1, "attr"    # I

    .line 371
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 372
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 373
    .local v1, "alpha":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .line 465
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 466
    .local v0, "m":I
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 467
    .local v1, "n":I
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 468
    :cond_0
    if-ne p1, v0, :cond_1

    div-int/lit8 v2, v0, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v0

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 469
    .local v2, "level":I
    :goto_0
    return v2
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4
    .param p1, "ss"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1329
    if-nez p1, :cond_0

    .line 1330
    const-string v0, ""

    return-object v0

    .line 1332
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v0

    .line 1336
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1337
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v1, ""

    return-object v1
.end method

.method private initDialog()V
    .locals 15

    .line 238
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 240
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 243
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 245
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 257
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 258
    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 262
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 263
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 267
    const v1, 0x7f0603f8

    const v3, 0x42ffffff    # 127.99999f

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mBackgroundSliderTint:Landroid/content/res/ColorStateList;

    .line 269
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d015b

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setContentView(I)V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$eeWNm-10SD-dSjYhBX_A44Q0NUE;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$eeWNm-10SD-dSjYhBX_A44Q0NUE;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 295
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a048c

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 296
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a048d

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowContainer:Landroid/view/ViewGroup;

    .line 307
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveTint:Landroid/content/res/ColorStateList;

    .line 308
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveAlpha:I

    .line 309
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1010030

    .line 310
    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 309
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveTint:Landroid/content/res/ColorStateList;

    .line 311
    const v1, 0x1010553

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getAlphaAttr(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveAlpha:I

    .line 313
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a048e

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 320
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a03c2

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 321
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a03bf

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    .line 323
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x7f0a02f8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    .line 324
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickOutputChooser:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0491

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    .line 328
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    const/16 v4, 0xa

    const v5, 0x7f080611

    const v6, 0x7f080611

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 333
    :cond_1
    const/4 v10, 0x3

    const v11, 0x7f08061e

    const v12, 0x7f080621

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 335
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 336
    const/4 v4, 0x2

    const v5, 0x7f080625

    const v6, 0x7f080626

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 338
    const/4 v10, 0x4

    const v11, 0x7f080612

    const v12, 0x7f080613

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 340
    const/4 v4, 0x0

    const v5, 0x7f08062b

    const v6, 0x7f08062b

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 342
    const/4 v10, 0x6

    const v11, 0x7f080614

    const v12, 0x7f080614

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 344
    const/4 v4, 0x1

    const v5, 0x7f080629

    const v6, 0x7f08062a

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_1

    .line 348
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    .line 351
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 358
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    .line 361
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 363
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColorTheme(Z)V

    .line 364
    return-void
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .param p6, "defaultStream"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 475
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 476
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 477
    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 478
    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 479
    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 481
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d015c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 483
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 484
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 485
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0492

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 486
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/16 v3, 0x14

    mul-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 487
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 488
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 490
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0120

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 491
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0494

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 492
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 493
    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 495
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0493

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 496
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 498
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 500
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 501
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    .line 540
    :goto_0
    return-void
.end method

.method private isAccentColorChanged(IZ)Z
    .locals 2
    .param p1, "theme"    # I
    .param p2, "forceupdate"    # Z

    .line 1665
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 1667
    .local v0, "accentColor":I
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    if-eq v1, v0, :cond_0

    .line 1668
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    .line 1669
    const/4 v1, 0x1

    return v1

    .line 1672
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isLandscape()Z
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dismissH$5(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 2

    .line 710
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->dismiss()V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 715
    return-void
.end method

.method public static synthetic lambda$dismissH$6(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$dafhVt2G4QzbFkVcNfwc2qWSrdM;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$dafhVt2G4QzbFkVcNfwc2qWSrdM;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$initDialog$0(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 281
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 294
    return-void
.end method

.method public static synthetic lambda$initDialog$1(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 298
    .local v0, "action":I
    const/4 v1, 0x1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 301
    return v1
.end method

.method public static synthetic lambda$initRow$2(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "v"    # Landroid/view/View;

    .line 502
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x7

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 505
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 506
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v0, v5, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    .line 507
    .local v0, "wasMin":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    nop

    :cond_1
    invoke-interface {v1, p2, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 508
    .end local v0    # "wasMin":Z
    goto :goto_1

    .line 509
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v0, v5

    .line 510
    .local v0, "vmute":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    nop

    :cond_4
    invoke-interface {v1, p2, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 535
    .end local v0    # "vmute":Z
    :goto_1
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    .line 536
    return-void
.end method

.method public static synthetic lambda$initSettingsH$3(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 546
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 550
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 551
    return-void
.end method

.method private loadColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I
    .param p2, "mask"    # I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    and-int/2addr v0, p2

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1256
    if-nez p1, :cond_1

    .line 1257
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "recheckH ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1260
    .local v1, "r":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1261
    .end local v1    # "r":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    goto :goto_0

    .line 1263
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recheckH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1266
    :cond_3
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1270
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1272
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setStreamImportantH stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " important:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-static {v1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 1275
    return-void

    .line 1277
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_0
    goto :goto_0

    .line 1278
    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "activeRow"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 729
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 730
    .local v0, "isActive":Z
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 731
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v1

    .line 736
    :cond_1
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 737
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v1, v5, :cond_2

    .line 738
    return v3

    .line 740
    :cond_2
    if-eqz v0, :cond_3

    .line 741
    return v3

    .line 744
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 745
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    .line 746
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_5

    .line 747
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 748
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 749
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    .line 745
    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    return v2

    .line 752
    :cond_6
    return v2
.end method

.method private showH(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 653
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 657
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 659
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    if-eqz v0, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 661
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingInit:Z

    .line 666
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->applyColorTheme(Z)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->show()V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 675
    return-void
.end method

.method private showOutputChooserH()V
    .locals 5

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    if-eqz v1, :cond_0

    .line 1311
    monitor-exit v0

    return-void

    .line 1313
    :cond_0
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/volume/MediaRouterWrapper;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1314
    invoke-static {v4}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/volume/MediaRouterWrapper;-><init>(Landroid/support/v7/media/MediaRouter;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    .line 1322
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/OutputChooserDialog;->show()V

    .line 1323
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooserDialog:Lcom/android/systemui/volume/OutputChooserDialog;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserDialog;->setTheme(I)V

    .line 1324
    monitor-exit v0

    .line 1325
    return-void

    .line 1324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showSafetyWarningH(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 1282
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSafetyWarningH flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_2

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_1

    .line 1289
    monitor-exit v0

    return-void

    .line 1291
    :cond_1
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1300
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V

    .line 1301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1304
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1305
    return-void

    .line 1301
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private trimObsoleteH()V
    .locals 4

    .line 916
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 917
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 918
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 919
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    .line 919
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    goto :goto_1

    .line 920
    .restart local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 921
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 922
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 917
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 925
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private updateOutputChooserLayout()V
    .locals 11

    .line 781
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 782
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x0

    .line 786
    .local v0, "visibleRows":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 787
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 788
    add-int/lit8 v0, v0, 0x1

    .line 790
    .end local v2    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    goto :goto_0

    .line 791
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 792
    .local v3, "isMultiRow":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 794
    .local v1, "isConnectedDevice":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 795
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, 0x0

    .line 797
    .local v5, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    instance-of v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_5

    .line 798
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    .line 802
    :cond_5
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v5, v6

    .line 804
    :goto_3
    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070515

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_4

    :cond_6
    move v6, v2

    .line 805
    .local v6, "marginLeft":I
    :goto_4
    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070514

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v2

    .line 806
    .local v7, "marginRight":I
    :goto_5
    if-eqz v1, :cond_8

    move v8, v2

    goto :goto_6

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070513

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 807
    .local v8, "marginBottom":I
    :goto_6
    if-eqz v3, :cond_9

    const/4 v9, -0x1

    goto :goto_7

    :cond_9
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070516

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 809
    .local v9, "width":I
    :goto_7
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 810
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 811
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOutputChooser:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    return-void
.end method

.method private updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 6
    .param p1, "activeRow"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 756
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRowsH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 762
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 763
    .local v3, "isActive":Z
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v4

    .line 764
    .local v4, "shouldBeVisible":Z
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 766
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 769
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 772
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .end local v3    # "isActive":Z
    .end local v4    # "shouldBeVisible":Z
    :cond_3
    goto :goto_0

    .line 775
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateOutputChooserLayout()V

    .line 777
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 26
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-object/from16 v0, p0

    .line 972
    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolumeRowH s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_1

    return-void

    .line 974
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 975
    .local v2, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-nez v2, :cond_2

    return-void

    .line 976
    :cond_2
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 977
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    const/4 v4, 0x2

    if-lez v3, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 978
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 980
    :cond_3
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 981
    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 983
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    if-ne v3, v5, :cond_5

    move v3, v7

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 984
    .local v3, "isA11yStream":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    if-ne v5, v4, :cond_6

    move v5, v7

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    .line 985
    .local v5, "isRingStream":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    if-ne v8, v7, :cond_7

    move v8, v7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 986
    .local v8, "isSystemStream":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    move v9, v7

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 987
    .local v9, "isAlarmStream":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    move v10, v7

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    .line 988
    .local v10, "isMusicStream":Z
    :goto_4
    if-eqz v5, :cond_a

    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v12, v7, :cond_a

    move v12, v7

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    .line 990
    .local v12, "isRingVibrate":Z
    :goto_5
    if-eqz v5, :cond_b

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v13, :cond_b

    move v13, v7

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    .line 992
    .local v13, "isRingSilent":Z
    :goto_6
    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v14, v7, :cond_c

    move v14, v7

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    .line 993
    .local v14, "isZenPriorityOnly":Z
    :goto_7
    iget-object v15, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v15, v11, :cond_d

    move v15, v7

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    .line 994
    .local v15, "isZenAlarms":Z
    :goto_8
    iget-object v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v11, v4, :cond_e

    move v11, v7

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    .line 995
    .local v11, "isZenNone":Z
    :goto_9
    if-eqz v15, :cond_11

    if-nez v5, :cond_10

    if-eqz v8, :cond_f

    goto :goto_b

    .line 1001
    :cond_f
    :goto_a
    const/4 v4, 0x0

    goto :goto_e

    .line 995
    :cond_10
    :goto_b
    nop

    .line 1001
    :goto_c
    move v4, v7

    goto :goto_e

    .line 996
    :cond_11
    if-eqz v11, :cond_14

    if-nez v5, :cond_13

    if-nez v8, :cond_13

    if-nez v9, :cond_13

    if-eqz v10, :cond_12

    goto :goto_d

    :cond_12
    goto :goto_a

    :cond_13
    :goto_d
    goto :goto_c

    .line 997
    :cond_14
    if-eqz v14, :cond_1a

    if-eqz v9, :cond_15

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-nez v4, :cond_18

    :cond_15
    if-eqz v10, :cond_16

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v4, :cond_18

    :cond_16
    if-eqz v5, :cond_17

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-nez v4, :cond_18

    :cond_17
    if-eqz v8, :cond_19

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-eqz v4, :cond_19

    :cond_18
    goto :goto_c

    :cond_19
    goto :goto_a

    .line 1001
    :cond_1a
    goto :goto_a

    .line 1003
    .local v4, "zenMuted":Z
    :goto_e
    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-le v6, v7, :cond_1b

    if-eqz v5, :cond_1b

    if-nez v4, :cond_1b

    .line 1004
    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {v1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1011
    :cond_1b
    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 1013
    .local v6, "max":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v6, v7, :cond_1c

    .line 1014
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1018
    :cond_1c
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 1022
    .local v7, "min":I
    sget-boolean v17, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v17, :cond_1d

    move/from16 v18, v6

    sget-object v6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 1022
    .end local v6    # "max":I
    .local v18, "max":I
    move/from16 v19, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 1022
    .end local v7    # "min":I
    .local v19, "min":I
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v8

    const-string/jumbo v8, "updateVolumeRowH s="

    .line 1022
    .end local v8    # "isSystemStream":Z
    .local v20, "isSystemStream":Z
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " min:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1028
    .end local v18    # "max":I
    .end local v19    # "min":I
    .end local v20    # "isSystemStream":Z
    .restart local v6    # "max":I
    .restart local v7    # "min":I
    .restart local v8    # "isSystemStream":Z
    :cond_1d
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    .line 1028
    .end local v6    # "max":I
    .end local v7    # "min":I
    .end local v8    # "isSystemStream":Z
    .restart local v18    # "max":I
    .restart local v19    # "min":I
    .restart local v20    # "isSystemStream":Z
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1029
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v7

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 1033
    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-nez v6, :cond_1e

    iget-boolean v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v6, :cond_1f

    :cond_1e
    if-nez v4, :cond_1f

    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    .line 1034
    .local v6, "iconEnabled":Z
    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1035
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v6, :cond_20

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_20
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_11
    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1039
    if-eqz v12, :cond_21

    .line 1045
    const v8, 0x7f080627

    goto :goto_13

    .line 1040
    :cond_21
    if-nez v13, :cond_27

    if-eqz v4, :cond_22

    goto :goto_12

    .line 1041
    :cond_22
    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v8, :cond_24

    .line 1042
    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v8, :cond_23

    .line 1045
    const v8, 0x7f080620

    goto :goto_13

    .line 1043
    :cond_23
    nop

    .line 1045
    const v8, 0x7f08061f

    goto :goto_13

    .line 1044
    :cond_24
    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v8, :cond_25

    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v8, :cond_25

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    goto :goto_13

    .line 1045
    :cond_25
    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v8, :cond_26

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    goto :goto_13

    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    goto :goto_13

    .line 1040
    :cond_27
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    .line 1045
    :goto_13
    nop

    .line 1054
    .local v8, "iconRes":I
    if-eqz v5, :cond_28

    .line 1055
    sget-object v7, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    move/from16 v21, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .line 1055
    .end local v8    # "iconRes":I
    .local v21, "iconRes":I
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v9

    const-string v9, " isRingSilent:"

    .line 1055
    .end local v9    # "isAlarmStream":Z
    .local v22, "isAlarmStream":Z
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isRingVibrate:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1058
    .end local v21    # "iconRes":I
    .end local v22    # "isAlarmStream":Z
    .restart local v8    # "iconRes":I
    .restart local v9    # "isAlarmStream":Z
    :cond_28
    move/from16 v21, v8

    move/from16 v22, v9

    .line 1058
    .end local v8    # "iconRes":I
    .end local v9    # "isAlarmStream":Z
    .restart local v21    # "iconRes":I
    .restart local v22    # "isAlarmStream":Z
    :goto_14
    if-eqz v5, :cond_2a

    if-eqz v13, :cond_2a

    .line 1060
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportSOCThreekey()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1061
    const v8, 0x7f080626

    .line 1061
    .end local v21    # "iconRes":I
    .restart local v8    # "iconRes":I
    :goto_15
    goto :goto_16

    .line 1065
    .end local v8    # "iconRes":I
    .restart local v21    # "iconRes":I
    :cond_29
    const v8, 0x7f080625

    goto :goto_15

    .line 1069
    :cond_2a
    move/from16 v8, v21

    .line 1069
    .end local v21    # "iconRes":I
    .restart local v8    # "iconRes":I
    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-eq v8, v7, :cond_2b

    .line 1070
    invoke-static {v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1071
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1075
    :cond_2b
    nop

    .line 1076
    const v7, 0x7f080627

    if-ne v8, v7, :cond_2c

    .line 1075
    const/4 v7, 0x3

    goto :goto_19

    .line 1077
    :cond_2c
    const v7, 0x7f080620

    if-eq v8, v7, :cond_30

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-ne v8, v7, :cond_2d

    goto :goto_18

    .line 1079
    :cond_2d
    const v7, 0x7f08061f

    if-eq v8, v7, :cond_2f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-ne v8, v7, :cond_2e

    goto :goto_17

    .line 1081
    :cond_2e
    nop

    .line 1075
    const/4 v7, 0x0

    goto :goto_19

    .line 1080
    :cond_2f
    :goto_17
    nop

    .line 1075
    const/4 v7, 0x1

    goto :goto_19

    .line 1078
    :cond_30
    :goto_18
    nop

    .line 1075
    const/4 v7, 0x2

    :goto_19
    invoke-static {v1, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1082
    if-eqz v6, :cond_3a

    .line 1083
    const v9, 0x7f110696

    if-eqz v5, :cond_35

    .line 1084
    if-eqz v12, :cond_31

    .line 1085
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v9

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move/from16 v23, v6

    move/from16 v24, v8

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    .line 1087
    .end local v6    # "iconEnabled":Z
    .end local v8    # "iconRes":I
    .local v23, "iconEnabled":Z
    .local v24, "iconRes":I
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v8, v16

    .line 1085
    const v6, 0x7f110697

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1123
    move/from16 v25, v10

    .line 1123
    .end local v10    # "isMusicStream":Z
    .local v25, "isMusicStream":Z
    :goto_1a
    const/4 v8, 0x1

    goto/16 :goto_1f

    .line 1089
    .end local v23    # "iconEnabled":Z
    .end local v24    # "iconRes":I
    .end local v25    # "isMusicStream":Z
    .restart local v6    # "iconEnabled":Z
    .restart local v8    # "iconRes":I
    .restart local v10    # "isMusicStream":Z
    :cond_31
    move/from16 v23, v6

    move/from16 v24, v8

    .line 1089
    .end local v6    # "iconEnabled":Z
    .end local v8    # "iconRes":I
    .restart local v23    # "iconEnabled":Z
    .restart local v24    # "iconRes":I
    iget-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v6}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1090
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1091
    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_32

    .line 1092
    const v8, 0x7f110699

    goto :goto_1b

    .line 1093
    :cond_32
    const v8, 0x7f110698

    :goto_1b
    move/from16 v25, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 1094
    .end local v10    # "isMusicStream":Z
    .restart local v25    # "isMusicStream":Z
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    aput-object v9, v10, v16

    .line 1090
    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1096
    .end local v25    # "isMusicStream":Z
    .restart local v10    # "isMusicStream":Z
    :cond_33
    move/from16 v25, v10

    .line 1096
    .end local v10    # "isMusicStream":Z
    .restart local v25    # "isMusicStream":Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1097
    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_34

    .line 1098
    goto :goto_1c

    .line 1099
    :cond_34
    const v9, 0x7f110695

    :goto_1c
    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    .line 1100
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v10, v16

    .line 1096
    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1103
    .end local v23    # "iconEnabled":Z
    .end local v24    # "iconRes":I
    .end local v25    # "isMusicStream":Z
    .restart local v6    # "iconEnabled":Z
    .restart local v8    # "iconRes":I
    .restart local v10    # "isMusicStream":Z
    :cond_35
    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v10

    .line 1103
    .end local v6    # "iconEnabled":Z
    .end local v8    # "iconRes":I
    .end local v10    # "isMusicStream":Z
    .restart local v23    # "iconEnabled":Z
    .restart local v24    # "iconRes":I
    .restart local v25    # "isMusicStream":Z
    if-eqz v3, :cond_36

    .line 1104
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1106
    :cond_36
    iget-boolean v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v6, :cond_39

    iget-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v6, :cond_37

    iget v6, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v6, :cond_37

    goto :goto_1e

    .line 1111
    :cond_37
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1112
    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_38

    .line 1113
    goto :goto_1d

    .line 1114
    :cond_38
    const v9, 0x7f110695

    :goto_1d
    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    .line 1115
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v10, v16

    .line 1111
    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1107
    :cond_39
    :goto_1e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 1109
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v9, v16

    .line 1107
    const v10, 0x7f110697

    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 1119
    .end local v23    # "iconEnabled":Z
    .end local v24    # "iconRes":I
    .end local v25    # "isMusicStream":Z
    .restart local v6    # "iconEnabled":Z
    .restart local v8    # "iconRes":I
    .restart local v10    # "isMusicStream":Z
    :cond_3a
    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v10

    const/4 v8, 0x1

    .line 1119
    .end local v6    # "iconEnabled":Z
    .end local v8    # "iconRes":I
    .end local v10    # "isMusicStream":Z
    .restart local v23    # "iconEnabled":Z
    .restart local v24    # "iconRes":I
    .restart local v25    # "isMusicStream":Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v6

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1123
    :goto_1f
    if-eqz v4, :cond_3b

    .line 1124
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    goto :goto_20

    .line 1131
    :cond_3b
    const/4 v6, 0x0

    :goto_20
    if-nez v4, :cond_3c

    goto :goto_21

    :cond_3c
    move v8, v6

    :goto_21
    move v7, v8

    .line 1132
    .local v7, "enableSlider":Z
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v8, :cond_3d

    if-nez v5, :cond_3d

    if-nez v4, :cond_3d

    goto :goto_22

    .line 1133
    :cond_3d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 1137
    .local v6, "vlevel":I
    :goto_22
    if-eqz v5, :cond_3f

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v8, :cond_3e

    if-eqz v15, :cond_3f

    .line 1141
    :cond_3e
    const/4 v6, 0x0

    .line 1144
    :cond_3f
    sget-boolean v8, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v8, :cond_40

    if-eqz v5, :cond_40

    .line 1145
    sget-object v8, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateVolumeRowSliderH zenMuted:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isZenAlarms:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_40
    invoke-direct {v0, v1, v7, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V

    .line 1149
    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V
    .locals 16
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1192
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1194
    .local v2, "isRingStream":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1195
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    iget v8, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v6, v8, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-direct {v0, v1, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 1196
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1197
    return-void

    .line 1199
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    .line 1200
    .local v6, "progress":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v8

    .line 1201
    .local v8, "level":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v4

    .line 1202
    .local v9, "rowVisible":Z
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v4

    .line 1204
    .local v10, "inGracePeriod":Z
    :goto_3
    iget-object v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v14, 0x3

    invoke-virtual {v11, v14, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    .line 1205
    iget-boolean v11, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v11, :cond_6

    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    .line 1206
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v4, "inGracePeriod"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v4, v14, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1208
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v14

    add-long/2addr v14, v12

    .line 1207
    invoke-virtual {v3, v4, v14, v15}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1209
    return-void

    .line 1211
    :cond_6
    move/from16 v11, p3

    if-ne v11, v6, :cond_8

    .line 1212
    iget-boolean v12, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v12, :cond_8

    if-eqz v9, :cond_8

    .line 1214
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 1215
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "don\'t clamp if visible and vlevel is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_7
    return-void

    .line 1221
    :cond_8
    move v12, v11

    .line 1222
    .local v12, "newProgress":I
    if-eq v6, v12, :cond_e

    .line 1224
    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_9

    if-eqz v2, :cond_9

    .line 1225
    sget-object v13, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateVolumeRowSliderH newProgress:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_9
    iget-boolean v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v13, :cond_c

    if-eqz v9, :cond_c

    .line 1230
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1231
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v13

    if-ne v13, v12, :cond_a

    .line 1232
    return-void

    .line 1235
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    if-nez v13, :cond_b

    .line 1236
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v13

    const-string v14, "progress"

    new-array v3, v3, [I

    aput v6, v3, v4

    aput v12, v3, v5

    invoke-static {v13, v14, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1237
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 1239
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1240
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v3, v3, [I

    aput v6, v3, v4

    aput v12, v3, v5

    invoke-virtual {v13, v3}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 1242
    :goto_4
    invoke-static {v1, v12}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1243
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x50

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1244
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_5

    .line 1247
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1248
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1250
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v12, v5}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 1253
    :cond_e
    :goto_5
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "isActive"    # Z

    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZZ)V

    .line 1154
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZZ)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "isActive"    # Z
    .param p3, "force"    # Z

    .line 1158
    if-eqz p2, :cond_0

    .line 1159
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 1175
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1176
    .local v0, "useActiveColoring":Z
    :goto_0
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccentColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1177
    .local v1, "tint":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveAlpha:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveAlpha:I

    .line 1178
    .local v2, "alpha":I
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-ne v1, v3, :cond_3

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v3, v4, :cond_3

    if-nez p3, :cond_3

    return-void

    .line 1179
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1180
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1181
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorSeekbarBackgroundDrawable:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorIcon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1184
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 1185
    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1186
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mThemeColorMode:I

    invoke-static {p1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1188
    return-void
.end method


# virtual methods
.method composeWindowTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 968
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110689

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->destroy()V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method protected dismissH(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 694
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 700
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 701
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 702
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 703
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 705
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    :goto_0
    div-int/2addr v4, v1

    int-to-float v1, v4

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xfa

    .line 707
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v3}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 708
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$TeBm8mGAiDkt4iXRVJq9pjcoyzA;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$TeBm8mGAiDkt4iXRVJq9pjcoyzA;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 709
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 716
    .local v1, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 718
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v2, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v2, :cond_2

    .line 722
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v3, "SafetyWarning dismissed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V

    .line 725
    :cond_2
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 3
    .param p1, "windowType"    # I
    .param p2, "callback"    # Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 228
    return-void
.end method

.method public initSettingsH()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 544
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 543
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$G6oAxqHiJ7iCW_k2cALq2uiPnig;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$G6oAxqHiJ7iCW_k2cALq2uiPnig;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 928
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 934
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 935
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 937
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 938
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 939
    .local v2, "stream":I
    iget-object v3, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 940
    .local v10, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget-boolean v3, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v3, :cond_1

    .end local v2    # "stream":I
    .end local v10    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    goto :goto_1

    .line 942
    .restart local v2    # "stream":I
    .restart local v10    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    :cond_1
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onStateChangedH stream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 945
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v3

    if-nez v3, :cond_2

    .line 946
    const v5, 0x7f080623

    const v6, 0x7f080624

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    move v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    .line 937
    .end local v2    # "stream":I
    .end local v10    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    .end local v0    # "i":I
    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, v1, :cond_4

    .line 952
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 953
    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 954
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 955
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 956
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 958
    .end local v0    # "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 959
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 960
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    goto :goto_2

    .line 964
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 965
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .line 678
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 679
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 680
    .local v0, "timeout":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 681
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 680
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 682
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 684
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 394
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 395
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 396
    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .line 399
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 400
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 401
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 402
    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .line 389
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 645
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 646
    return-void
.end method

.method protected updateConnectedDeviceH(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConnectedDevice:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 817
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateOutputChooserLayout()V

    .line 818
    return-void
.end method

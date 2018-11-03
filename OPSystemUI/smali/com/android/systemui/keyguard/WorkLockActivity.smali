.class public Lcom/android/systemui/keyguard/WorkLockActivity;
.super Landroid/app/Activity;
.source "WorkLockActivity.java"


# instance fields
.field private mKgm:Landroid/app/KeyguardManager;

.field private final mLockEventReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivity$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/WorkLockActivity;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/WorkLockActivity;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    return-object v0
.end method

.method private getChallengeOptions()Landroid/app/ActivityOptions;
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private showConfirmCredentialActivity()V
    .locals 6

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "credential":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 142
    return-void

    .line 145
    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 146
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 149
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x54000000

    .line 152
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 149
    invoke-static {p0, v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 154
    .local v2, "target":Landroid/app/PendingIntent;
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getChallengeOptions()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 156
    invoke-interface {v3, v0, v4}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v3

    .line 159
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WorkLockActivity"

    const-string v5, "Failed to start confirm credential intent"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 136
    .end local v0    # "credential":Landroid/content/Intent;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    .end local v2    # "target":Landroid/app/PendingIntent;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method final getPrimaryColor()I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    nop

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.systemui.keyguard.extra.TASK_DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    .line 194
    .local v0, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    return v1

    .line 198
    :cond_0
    const-string v1, "device_policy"

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/WorkLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 200
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    return v2
.end method

.method final getTargetUserId()I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/keyguard/WorkLockActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->finish()V

    .line 78
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 86
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "blankView":Landroid/view/View;
    const v1, 0x7f110075

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/WorkLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->setContentView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->showConfirmCredentialActivity()V

    .line 103
    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 120
    return-void
.end method

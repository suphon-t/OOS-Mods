.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 175
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 146
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    .line 145
    return-void
.end method

.method public animateExpandNotificationsPanelWithVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .line 206
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/String;

    .line 148
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    .line 166
    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    .line 168
    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .line 165
    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .line 167
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    .line 162
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 177
    return-void
.end method

.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 144
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    .line 160
    return-void
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    .line 182
    return-void
.end method

.method public handleShowShutdownUi(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isReboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 183
    return-void
.end method

.method public handleSystemKey(I)V
    .locals 0
    .param p1, "arg1"    # I

    .line 179
    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 0

    .line 193
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .line 156
    return-void
.end method

.method public notifyNavBarColorChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 202
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0
    .param p1, "source"    # I

    .line 171
    return-void
.end method

.method public onFingerprintAcquired(II)V
    .locals 0
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 196
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    .line 190
    return-void
.end method

.method public onFingerprintAuthenticatedFail()V
    .locals 0

    .line 198
    return-void
.end method

.method public onFingerprintEnrollResult()V
    .locals 0

    .line 197
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 192
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 191
    return-void
.end method

.method public onGestureMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 214
    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 0
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 187
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .line 159
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 176
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 142
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .line 154
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .line 151
    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 0
    .param p1, "topAppHidesStatusBar"    # Z

    .line 173
    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1, "window"    # I
    .param p2, "state"    # I

    .line 163
    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    .line 169
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 189
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .line 172
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0
    .param p1, "entering"    # Z

    .line 180
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 0

    .line 181
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z

    .line 155
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 164
    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 0
    .param p1, "batteryLevel"    # I

    .line 185
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .line 170
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 161
    return-void
.end method

.method public togglePanel()V
    .locals 0

    .line 147
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .line 157
    return-void
.end method

.method public toggleRecentAppsWithGesture(IIFF)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "alpha"    # F

    .line 211
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    .line 158
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 152
    return-void
.end method

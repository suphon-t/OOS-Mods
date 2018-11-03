.class public interface abstract Lcom/android/keyguard/ViewMediatorCallback;
.super Ljava/lang/Object;
.source "ViewMediatorCallback.java"


# virtual methods
.method public abstract consumeCustomMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getBouncerPromptReason()I
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract keyguardDone(ZI)V
.end method

.method public abstract keyguardDoneDrawing()V
.end method

.method public abstract keyguardDonePending(ZI)V
.end method

.method public abstract keyguardGone()V
.end method

.method public abstract onBouncerVisiblityChanged(Z)V
.end method

.method public abstract onSecondaryDisplayShowingChanged(I)V
.end method

.method public abstract playTrustedSound()V
.end method

.method public abstract readyForKeyguardDone()V
.end method

.method public abstract reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract resetKeyguard()V
.end method

.method public abstract setNeedsInput(Z)V
.end method

.method public abstract startPowerKeyLaunchCamera()V
.end method

.method public abstract tryToStartFaceLockFromBouncer()V
.end method

.method public abstract userActivity()V
.end method

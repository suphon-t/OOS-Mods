.class public interface abstract Lcom/android/keyguard/KeyguardSecurityCallback;
.super Ljava/lang/Object;
.source "KeyguardSecurityCallback.java"


# virtual methods
.method public abstract dismiss(ZI)V
.end method

.method public abstract getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
.end method

.method public abstract hideSecurityIcon()V
.end method

.method public abstract reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportUnlockAttempt(IZI)V
.end method

.method public abstract reset()V
.end method

.method public abstract tryToStartFaceLockFromBouncer()V
.end method

.method public abstract userActivity()V
.end method

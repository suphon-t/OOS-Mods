.class public interface abstract Lcom/android/systemui/doze/DozeHost;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeHost$PulseCallback;,
        Lcom/android/systemui/doze/DozeHost$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
.end method

.method public abstract dozeTimeTick()V
.end method

.method public abstract extendPulse()V
.end method

.method public abstract isBlockingDoze()Z
.end method

.method public abstract isPowerSaveActive()Z
.end method

.method public abstract isProvisioned()Z
.end method

.method public abstract isPulsingBlocked()Z
.end method

.method public abstract onDoubleTap(FF)V
.end method

.method public abstract onIgnoreTouchWhilePulsing(Z)V
.end method

.method public abstract pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
.end method

.method public abstract removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
.end method

.method public abstract setAnimateScreenOff(Z)V
.end method

.method public abstract setAnimateWakeup(Z)V
.end method

.method public setAodDimmingScrim(F)V
    .locals 0
    .param p1, "scrimOpacity"    # F

    .line 45
    return-void
.end method

.method public abstract setDozeScreenBrightness(I)V
.end method

.method public abstract startDozing()V
.end method

.method public abstract stopDozing()V
.end method

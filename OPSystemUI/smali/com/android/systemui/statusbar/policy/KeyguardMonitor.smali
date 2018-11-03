.class public interface abstract Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.super Ljava/lang/Object;
.source "KeyguardMonitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract canSkipBouncer()Z
.end method

.method public abstract getKeyguardFadingAwayDelay()J
.end method

.method public abstract getKeyguardFadingAwayDuration()J
.end method

.method public abstract isKeyguardFadingAway()Z
.end method

.method public abstract isKeyguardGoingAway()Z
.end method

.method public abstract isOccluded()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isShowing()Z
.end method

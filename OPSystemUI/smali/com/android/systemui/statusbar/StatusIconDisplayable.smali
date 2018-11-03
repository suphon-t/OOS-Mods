.class public interface abstract Lcom/android/systemui/statusbar/StatusIconDisplayable;
.super Ljava/lang/Object;
.source "StatusIconDisplayable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# virtual methods
.method public abstract getSlot()Ljava/lang/String;
.end method

.method public isIconBlocked()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isIconVisible()Z
.end method

.method public abstract setDecorColor(I)V
.end method

.method public abstract setStaticDrawableColor(I)V
.end method

.method public abstract setVisibleState(I)V
.end method

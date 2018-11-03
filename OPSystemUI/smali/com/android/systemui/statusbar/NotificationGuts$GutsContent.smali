.class public interface abstract Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
.super Ljava/lang/Object;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationGuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GutsContent"
.end annotation


# virtual methods
.method public abstract getActualHeight()I
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract handleCloseControls(ZZ)Z
.end method

.method public isLeavebehind()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
.end method

.method public abstract shouldBeSaved()Z
.end method

.method public abstract willBeRemoved()Z
.end method

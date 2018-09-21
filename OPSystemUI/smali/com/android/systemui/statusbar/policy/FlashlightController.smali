.class public interface abstract Lcom/android/systemui/statusbar/policy/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract hasFlashlight()Z
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract setFlashlight(Z)V
.end method

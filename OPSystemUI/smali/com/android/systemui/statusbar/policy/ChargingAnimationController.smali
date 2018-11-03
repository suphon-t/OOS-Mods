.class public interface abstract Lcom/android/systemui/statusbar/policy/ChargingAnimationController;
.super Ljava/lang/Object;
.source "ChargingAnimationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract animationEnd(I)V
.end method

.method public abstract animationStart(I)V
.end method

.method public abstract init()V
.end method

.method public abstract isAnimationStarted()Z
.end method

.method public abstract onWallpaperChange(Landroid/graphics/Bitmap;)V
.end method

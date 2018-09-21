.class public interface abstract Lcom/android/systemui/statusbar/policy/OPZenModeController;
.super Ljava/lang/Object;
.source "OPZenModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDndEnable()Z
.end method

.method public abstract getThreeKeySatus()I
.end method

.method public abstract setDndEnable(Z)V
.end method

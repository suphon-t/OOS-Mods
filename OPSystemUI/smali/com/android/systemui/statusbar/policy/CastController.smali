.class public interface abstract Lcom/android/systemui/statusbar/policy/CastController;
.super Ljava/lang/Object;
.source "CastController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/CastController$CastDevice;,
        Lcom/android/systemui/statusbar/policy/CastController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/CastController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCastDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCurrentUserId(I)V
.end method

.method public abstract setDiscovering(Z)V
.end method

.method public abstract startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
.end method

.method public abstract stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
.end method

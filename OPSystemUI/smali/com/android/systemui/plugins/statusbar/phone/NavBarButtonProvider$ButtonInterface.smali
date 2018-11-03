.class public interface abstract Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;
.super Ljava/lang/Object;
.source "NavBarButtonProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ButtonInterface"
.end annotation


# virtual methods
.method public abstract abortCurrentGesture()V
.end method

.method public setCarMode(Z)V
    .locals 0
    .param p1, "carMode"    # Z

    .line 50
    return-void
.end method

.method public abstract setDarkIntensity(F)V
.end method

.method public abstract setDelayTouchFeedback(Z)V
.end method

.method public abstract setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setVertical(Z)V
.end method

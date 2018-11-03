.class public interface abstract Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.super Ljava/lang/Object;
.source "ConfigurationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurationListener"
.end annotation


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 28
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 29
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 0

    .line 31
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 30
    return-void
.end method

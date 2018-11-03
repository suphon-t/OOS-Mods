.class public interface abstract Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.super Ljava/lang/Object;
.source "ZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 47
    return-void
.end method

.method public onEffectsSupressorChanged()V
    .locals 0

    .line 45
    return-void
.end method

.method public onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 46
    return-void
.end method

.method public onNextAlarmChanged()V
    .locals 0

    .line 43
    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .locals 0
    .param p1, "available"    # Z

    .line 44
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0
    .param p1, "zen"    # I

    .line 41
    return-void
.end method

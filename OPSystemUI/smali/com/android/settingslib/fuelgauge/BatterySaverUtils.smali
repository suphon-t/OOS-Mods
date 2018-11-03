.class public Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.super Ljava/lang/Object;
.source "BatterySaverUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;
    }
.end annotation


# direct methods
.method public static ensureAutoBatterySaver(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {p0, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setAutoBatterySaverTriggerLevel(Landroid/content/Context;I)V

    .line 178
    :cond_0
    return-void
.end method

.method private static getSystemUiBroadcast(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    return-object v0
.end method

.method private static maybeShowBatterySaverConfirmation(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    return v2

    .line 132
    :cond_0
    const-string v0, "PNW.startSaverConfirmation"

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getSystemUiBroadcast(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public static setAutoBatterySaverTriggerLevel(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I

    .line 163
    if-lez p1, :cond_0

    .line 164
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->suppressAutoBatterySaver(Landroid/content/Context;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    return-void
.end method

.method private static setBatterySaverConfirmationAcknowledged(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    return-void
.end method

.method public static declared-synchronized setPowerSaveMode(Landroid/content/Context;ZZ)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "needFirstTimeWarning"    # Z

    const-class v0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 98
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->maybeShowBatterySaverConfirmation(Landroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 99
    monitor-exit v0

    return v2

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 102
    :try_start_1
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setBatterySaverConfirmationAcknowledged(Landroid/content/Context;)V

    .line 105
    :cond_1
    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 107
    const-string v4, "low_power_manual_activation_count"

    .line 108
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v3

    .line 109
    .local v4, "count":I
    const-string v5, "low_power_manual_activation_count"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    new-instance v5, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;

    invoke-direct {v5, p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;-><init>(Landroid/content/Context;)V

    .line 113
    .local v5, "parameters":Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;
    iget v6, v5, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    if-lt v4, v6, :cond_2

    iget v6, v5, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    if-gt v4, v6, :cond_2

    const-string v6, "low_power_trigger_level"

    .line 115
    invoke-static {v1, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "suppress_auto_battery_saver_suggestion"

    .line 116
    invoke-static {v1, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 118
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->showAutoBatterySaverSuggestion(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v4    # "count":I
    .end local v5    # "parameters":Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;
    :cond_2
    monitor-exit v0

    return v3

    .line 124
    :cond_3
    monitor-exit v0

    return v2

    .line 95
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "enable":Z
    .end local p2    # "needFirstTimeWarning":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static showAutoBatterySaverSuggestion(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    const-string v0, "PNW.autoSaverSuggestion"

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getSystemUiBroadcast(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public static suppressAutoBatterySaver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "suppress_auto_battery_saver_suggestion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    return-void
.end method

.class final Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AlwaysOnDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 131
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 127
    const-string p1, "always_on_display_constants"

    .line 128
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    .line 132
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$000(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 139
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 144
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 147
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$000(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$000(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_on_display_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v2}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "AlwaysOnDisplayPolicy"

    const-string v4, "Bad AOD constants"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    const-string v4, "prox_screen_off_delay"

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    .line 160
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    const-string v4, "prox_cooldown_trigger"

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownTriggerMs:J

    .line 162
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    const-string v4, "prox_cooldown_period"

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownPeriodMs:J

    .line 164
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_fade_out_duration"

    const-wide/16 v5, 0x190

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    .line 166
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_visibility_timeout"

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    .line 168
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    const-string v4, "screen_brightness_array"

    const v5, 0x7f030026

    .line 169
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 168
    invoke-virtual {v3, v4, v5}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    .line 171
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v3, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v3

    const-string v4, "dimming_scrim_array"

    const v5, 0x7f030027

    .line 172
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 171
    invoke-virtual {v3, v4, v5}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    .line 175
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

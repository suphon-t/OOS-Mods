.class public Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/Events$Callback;
    }
.end annotation


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sCallback:Lcom/android/systemui/volume/Events$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 35
    const-class v0, Lcom/android/systemui/volume/Events;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 60
    const-string v1, "show_dialog"

    const-string v2, "dismiss_dialog"

    const-string v3, "active_stream_changed"

    const-string v4, "expand"

    const-string v5, "key"

    const-string v6, "collection_started"

    const-string v7, "collection_stopped"

    const-string v8, "icon_click"

    const-string v9, "settings_click"

    const-string v10, "touch_level_changed"

    const-string v11, "level_changed"

    const-string v12, "internal_ringer_mode_changed"

    const-string v13, "external_ringer_mode_changed"

    const-string/jumbo v14, "zen_mode_changed"

    const-string v15, "suppressor_changed"

    const-string v16, "mute_changed"

    const-string v17, "touch_level_done"

    const-string/jumbo v18, "zen_mode_config_changed"

    const-string v19, "ringer_toggle"

    const-string v20, "status_bar_icon_changed"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 98
    const-string v1, "unknown"

    const-string v2, "touch_outside"

    const-string/jumbo v3, "volume_controller"

    const-string v4, "timeout"

    const-string v5, "screen_off"

    const-string v6, "settings_clicked"

    const-string v7, "done_clicked"

    const-string v8, "a11y_stream_changed"

    const-string v9, "output_chooser"

    const-string v10, "still_showing_after_dismissed"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 116
    const-string v0, "unknown"

    const-string/jumbo v1, "volume_changed"

    const-string v2, "remote_volume_changed"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iconStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "iconState"    # I

    .line 220
    packed-switch p0, :pswitch_data_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :pswitch_0
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 222
    :pswitch_1
    const-string v0, "mute"

    return-object v0

    .line 221
    :pswitch_2
    const-string v0, "unmute"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ringerMode"    # I

    .line 229
    packed-switch p0, :pswitch_data_0

    .line 233
    const-string v0, "unknown"

    return-object v0

    .line 232
    :pswitch_0
    const-string v0, "normal"

    return-object v0

    .line 231
    :pswitch_1
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 230
    :pswitch_2
    const-string v0, "silent"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # I
    .param p2, "list"    # [Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 131
    .local v0, "logger":Lcom/android/internal/logging/MetricsLogger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 132
    .local v1, "time":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writeEvent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 133
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 134
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/16 v4, 0xcf

    const/16 v5, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    .line 203
    :pswitch_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 199
    :pswitch_1
    aget-object v4, p2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    goto/16 :goto_1

    .line 179
    :pswitch_2
    const/16 v4, 0x569

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 180
    goto/16 :goto_1

    .line 163
    :pswitch_3
    const/16 v4, 0xd1

    aget-object v8, p2, v6

    check-cast v8, Ljava/lang/Integer;

    .line 164
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 163
    invoke-static {p0, v4, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 195
    :pswitch_4
    aget-object v4, p2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, p2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    goto/16 :goto_1

    .line 192
    :pswitch_5
    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/volume/Events;->zenModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    goto/16 :goto_1

    .line 185
    :pswitch_6
    const/16 v4, 0xd5

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    .line 186
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 185
    invoke-static {p0, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 189
    :pswitch_7
    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    goto/16 :goto_1

    .line 169
    :goto_0
    :pswitch_8
    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, p2, v6

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    goto/16 :goto_1

    .line 182
    :pswitch_9
    const/16 v4, 0x56a

    invoke-virtual {v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 183
    goto/16 :goto_1

    .line 157
    :pswitch_a
    const/16 v4, 0xd4

    aget-object v8, p2, v7

    check-cast v8, Ljava/lang/Integer;

    .line 158
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 157
    invoke-static {p0, v4, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 159
    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, p2, v6

    check-cast v4, Ljava/lang/Integer;

    .line 160
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/volume/Events;->iconStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    goto/16 :goto_1

    .line 173
    :pswitch_b
    const/16 v4, 0xd3

    aget-object v8, p2, v7

    check-cast v8, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 173
    invoke-static {p0, v4, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 175
    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, p2, v6

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    goto :goto_1

    .line 143
    :pswitch_c
    const/16 v4, 0xd0

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Boolean;

    .line 144
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 143
    invoke-static {p0, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 145
    aget-object v4, p2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    goto :goto_1

    .line 152
    :pswitch_d
    const/16 v4, 0xd2

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    .line 153
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 152
    invoke-static {p0, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 154
    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    goto :goto_1

    .line 148
    :pswitch_e
    invoke-static {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 149
    sget-object v4, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    goto :goto_1

    .line 137
    :pswitch_f
    invoke-static {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 138
    const-string/jumbo v4, "volume_from_keyguard"

    .line 139
    aget-object v5, p2, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 138
    invoke-static {p0, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 140
    sget-object v4, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " keyguard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    nop

    .line 207
    :cond_0
    :goto_1
    sget-object v4, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v4, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v4, :cond_1

    .line 209
    sget-object v4, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v4, v1, v2, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeEvent(JI[Ljava/lang/Object;)V

    .line 211
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1
    .param p0, "time"    # J
    .param p2, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 214
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 217
    :cond_0
    return-void
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "zenMode"    # I

    .line 238
    packed-switch p0, :pswitch_data_0

    .line 243
    const-string v0, "unknown"

    return-object v0

    .line 241
    :pswitch_0
    const-string v0, "alarms"

    return-object v0

    .line 242
    :pswitch_1
    const-string v0, "no_interruptions"

    return-object v0

    .line 240
    :pswitch_2
    const-string v0, "important_interruptions"

    return-object v0

    .line 239
    :pswitch_3
    const-string v0, "off"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

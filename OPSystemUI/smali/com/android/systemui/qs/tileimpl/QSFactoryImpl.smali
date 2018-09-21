.class public Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "QSFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field private final mHost:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 60
    return-void
.end method

.method private createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .locals 3
    .param p1, "tileSpec"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "powersaving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "saver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "opdnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v0, "work"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "read"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "game"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v0, "vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "otg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_f
    const-string v0, "nfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_10
    const-string v0, "dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_11
    const-string v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_12
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_13
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_14
    const-string v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_15
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_16
    const-string v0, "inversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_17
    const-string v0, "dataswitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 128
    const-string v0, "intent("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/IntentTile;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_0
    new-instance v0, Lcom/android/systemui/qs/tiles/OPDndTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/OPDndTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 119
    :pswitch_1
    new-instance v0, Lcom/android/systemui/qs/tiles/VPNTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/VPNTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 117
    :pswitch_2
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/DataSwitchTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 115
    :pswitch_3
    new-instance v0, Lcom/android/systemui/qs/tiles/ReadModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/ReadModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 113
    :pswitch_4
    new-instance v0, Lcom/android/systemui/qs/tiles/GameModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/GameModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 111
    :pswitch_5
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 109
    :pswitch_6
    new-instance v0, Lcom/android/systemui/qs/tiles/OtgTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/OtgTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 106
    :pswitch_7
    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 104
    :pswitch_8
    new-instance v0, Lcom/android/systemui/qs/tiles/NightDisplayTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/NightDisplayTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 102
    :pswitch_9
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSaverTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/DataSaverTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 100
    :pswitch_a
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 98
    :pswitch_b
    new-instance v0, Lcom/android/systemui/qs/tiles/UserTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/UserTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 96
    :pswitch_c
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 94
    :pswitch_d
    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CastTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 92
    :pswitch_e
    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 90
    :pswitch_f
    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 88
    :pswitch_10
    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 86
    :pswitch_11
    new-instance v0, Lcom/android/systemui/qs/tiles/WorkModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WorkModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 84
    :pswitch_12
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 82
    :pswitch_13
    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 80
    :pswitch_14
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 78
    :pswitch_15
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 76
    :pswitch_16
    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 74
    :pswitch_17
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 129
    :cond_1
    const-string v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    return-object v0

    .line 132
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    .line 133
    const-string v0, "dbg:mem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    return-object v0

    .line 139
    :cond_3
    const-string v0, "QSFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d2140a2 -> :sswitch_17
        -0x783813ed -> :sswitch_16
        -0x468444da -> :sswitch_15
        -0x285a60ae -> :sswitch_14
        -0x13be51f3 -> :sswitch_13
        -0x266f082 -> :sswitch_12
        0xc52 -> :sswitch_11
        0x1851a -> :sswitch_10
        0x1a9ab -> :sswitch_f
        0x1af22 -> :sswitch_e
        0x1c8f4 -> :sswitch_d
        0x2e7b3f -> :sswitch_c
        0x2e8962 -> :sswitch_b
        0x304bf2 -> :sswitch_a
        0x355996 -> :sswitch_9
        0x36ebcb -> :sswitch_8
        0x37af15 -> :sswitch_7
        0x37c711 -> :sswitch_6
        0x63f6418 -> :sswitch_5
        0x6509f99 -> :sswitch_4
        0x6826e95 -> :sswitch_3
        0x418a9ecf -> :sswitch_2
        0x4fde643f -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 1
    .param p1, "tileSpec"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    move-result-object v0

    .line 64
    .local v0, "tile":Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    .line 67
    :cond_0
    return-object v0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "collapsedView"    # Z

    .line 145
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120546

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 146
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v1

    .line 147
    .local v1, "icon":Lcom/android/systemui/plugins/qs/QSIconView;
    if-eqz p2, :cond_0

    .line 148
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    invoke-direct {v2, v0, v1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-object v2

    .line 150
    :cond_0
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileView;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    return-object v2
.end method

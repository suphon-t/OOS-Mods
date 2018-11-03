.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v4

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    :array_0
    .array-data 4
        0x7f080a6b
        0x7f080a6d
        0x7f080a6f
        0x7f080a71
        0x7f080a73
    .end array-data

    :array_1
    .array-data 4
        0x7f080a6c
        0x7f080a6e
        0x7f080a70
        0x7f080a72
        0x7f080a74
    .end array-data

    :array_2
    .array-data 4
        0x7f08059f
        0x7f0805a0
        0x7f0805a1
        0x7f0805a2
        0x7f0805a3
    .end array-data

    :array_3
    .array-data 4
        0x7f0805a7
        0x7f0805a8
        0x7f0805a9
        0x7f0805aa
        0x7f0805ab
    .end array-data
.end method

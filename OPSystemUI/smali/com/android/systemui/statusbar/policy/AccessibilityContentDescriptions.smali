.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH_FIVE_BAR:[I

.field static final PHONE_SIGNAL_STRENGTH_FOUR_BAR:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FOUR_BAR:[I

    .line 26
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FIVE_BAR:[I

    .line 35
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportFiveBar()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FIVE_BAR:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FOUR_BAR:[I

    :goto_0
    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 38
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 46
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x7f110090
        0x7f11009e
        0x7f1100a1
        0x7f1100a0
        0x7f11009f
    .end array-data

    :array_1
    .array-data 4
        0x7f110090
        0x7f11009e
        0x7f1100a1
        0x7f1100a0
        0x7f11009d
        0x7f11009f
    .end array-data

    :array_2
    .array-data 4
        0x7f11008f
        0x7f110063
        0x7f110068
        0x7f110067
        0x7f110066
    .end array-data

    :array_3
    .array-data 4
        0x7f110094
        0x7f110111
        0x7f110116
        0x7f110115
        0x7f110114
    .end array-data

    :array_4
    .array-data 4
        0x7f11007a
        0x7f110079
    .end array-data
.end method

.class final enum Lcom/android/keyguard/CarrierText$StatusMode;
.super Ljava/lang/Enum;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/CarrierText$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum Normal:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 107
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 108
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "NetworkLocked"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 109
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimMissing"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 110
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimMissingLocked"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 111
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimPukLocked"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 112
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimLocked"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 113
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimPermDisabled"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 114
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimNotReady"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 115
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimIoError"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 106
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/keyguard/CarrierText$StatusMode;

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierText$StatusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/CarrierText$StatusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v0
.end method

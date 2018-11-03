.class public final enum Lcom/android/systemui/doze/DozeMachine$State;
.super Ljava/lang/Enum;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/doze/DozeMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum FINISH:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 49
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 51
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 53
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 55
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 57
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_REQUEST_PULSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 59
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_PULSING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 61
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_PULSE_DONE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 63
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "FINISH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 65
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD_PAUSED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 67
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string v1, "DOZE_AOD_PAUSING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0}, [Lcom/android/systemui/doze/DozeMachine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method


# virtual methods
.method canPulse()Z
    .locals 2

    .line 70
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 75
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method screenState(Lcom/android/systemui/statusbar/phone/DozeParameters;)I
    .locals 3
    .param p1, "parameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 92
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 102
    :pswitch_0
    return v2

    .line 96
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 97
    :cond_0
    nop

    .line 96
    :goto_0
    return v1

    .line 105
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 100
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method staysAwake()Z
    .locals 2

    .line 82
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 85
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

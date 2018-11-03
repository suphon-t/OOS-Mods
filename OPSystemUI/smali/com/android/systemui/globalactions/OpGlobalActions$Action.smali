.class public final enum Lcom/android/systemui/globalactions/OpGlobalActions$Action;
.super Ljava/lang/Enum;
.source "OpGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/OpGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/OpGlobalActions$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/OpGlobalActions$Action;

.field public static final enum BOOTLOADER:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

.field public static final enum POWER_OFF:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

.field public static final enum REBOOT:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

.field public static final enum RECOVERY:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

.field public static final enum SLIDABLE:Lcom/android/systemui/globalactions/OpGlobalActions$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 99
    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    const-string v1, "POWER_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->POWER_OFF:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    const-string v1, "REBOOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/globalactions/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->REBOOT:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    const-string v1, "RECOVERY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/globalactions/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->RECOVERY:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    const-string v1, "BOOTLOADER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/globalactions/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    const-string v1, "SLIDABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/globalactions/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->SLIDABLE:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->POWER_OFF:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->REBOOT:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->RECOVERY:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->SLIDABLE:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->$VALUES:[Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/OpGlobalActions$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    const-class v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/globalactions/OpGlobalActions$Action;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->$VALUES:[Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/OpGlobalActions$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    return-object v0
.end method

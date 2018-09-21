.class public final enum Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;
.super Ljava/lang/Enum;
.source "OpGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/OpGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

.field public static final enum ADVANCED_SHOWN:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

.field public static final enum ADVANCE_SELECTED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

.field public static final enum CONFIRMED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

.field public static final enum INIT:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

.field public static final enum SELECTED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

.field public static final enum SHOWING:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

.field public static final enum SHOWN:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 95
    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->INIT:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    const-string v1, "SHOWING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->SHOWING:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    const-string v1, "SHOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->SHOWN:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    const-string v1, "ADVANCED_SHOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    const-string v1, "SELECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->SELECTED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    const-string v1, "ADVANCE_SELECTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    const-string v1, "CONFIRMED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->INIT:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->SHOWING:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->SHOWN:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->SELECTED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->$VALUES:[Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 94
    const-class v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;
    .locals 1

    .line 94
    sget-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->$VALUES:[Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    return-object v0
.end method

.class final enum Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
.super Ljava/lang/Enum;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field public static final enum Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field public static final enum On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field public static final enum TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field public static final enum TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;


# instance fields
.field private final inTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1064
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1065
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    const-string v1, "TurningOn"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1066
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    const-string v1, "TurningOff"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1067
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    const-string v1, "On"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1063
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "intermediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1071
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1072
    iput-boolean p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition:Z

    .line 1073
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1063
    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .locals 1

    .line 1063
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .locals 1

    .line 1076
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->inTransition:Z

    return v0
.end method

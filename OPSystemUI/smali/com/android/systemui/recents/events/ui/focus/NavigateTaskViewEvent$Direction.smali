.class public final enum Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
.super Ljava/lang/Enum;
.source "NavigateTaskViewEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

.field public static final enum DOWN:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

.field public static final enum LEFT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

.field public static final enum RIGHT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

.field public static final enum UNDEFINED:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

.field public static final enum UP:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UNDEFINED:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    new-instance v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    const-string v1, "UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UP:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    new-instance v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    const-string v1, "DOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->DOWN:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    new-instance v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    const-string v1, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->LEFT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    new-instance v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    const-string v1, "RIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->RIGHT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UNDEFINED:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UP:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->DOWN:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->LEFT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->RIGHT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->$VALUES:[Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->$VALUES:[Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v0}, [Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0
.end method

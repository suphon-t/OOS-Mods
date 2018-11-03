.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$fireNextAlarmChanged$0(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

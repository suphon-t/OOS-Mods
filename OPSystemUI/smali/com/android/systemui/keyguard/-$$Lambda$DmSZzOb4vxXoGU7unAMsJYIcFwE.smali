.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$DmSZzOb4vxXoGU7unAMsJYIcFwE;

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

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-interface {p1}, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;->onScreenTurningOff()V

    return-void
.end method

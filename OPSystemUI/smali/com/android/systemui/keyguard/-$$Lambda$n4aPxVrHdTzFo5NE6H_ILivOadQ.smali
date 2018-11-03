.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$n4aPxVrHdTzFo5NE6H_ILivOadQ;

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

    invoke-interface {p1}, Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;->onScreenTurnedOn()V

    return-void
.end method

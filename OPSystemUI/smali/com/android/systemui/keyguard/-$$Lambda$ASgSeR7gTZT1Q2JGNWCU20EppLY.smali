.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$ASgSeR7gTZT1Q2JGNWCU20EppLY;

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

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-interface {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;->onStartedGoingToSleep()V

    return-void
.end method

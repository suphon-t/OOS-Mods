.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$rDXDKqpw1CLC0fwevwYEng68Bps;

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

    check-cast p1, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->lambda$handleMessage$2(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    return-void
.end method

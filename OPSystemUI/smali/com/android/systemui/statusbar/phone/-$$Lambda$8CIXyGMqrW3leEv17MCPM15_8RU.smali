.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/car/CarQSFragment;

    invoke-direct {v0}, Lcom/android/systemui/qs/car/CarQSFragment;-><init>()V

    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    return-object v0
.end method

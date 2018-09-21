.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;

    invoke-direct {v0}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;-><init>()V

    sput-object v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;

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

    check-cast p1, Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-static {p1}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$onDestroy$0(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

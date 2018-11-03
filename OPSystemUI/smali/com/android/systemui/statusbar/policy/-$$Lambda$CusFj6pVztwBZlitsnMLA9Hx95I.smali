.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;

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

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardShowingChanged()V

    return-void
.end method

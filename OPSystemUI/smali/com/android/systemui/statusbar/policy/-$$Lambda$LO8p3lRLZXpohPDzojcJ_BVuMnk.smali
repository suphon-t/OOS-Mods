.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$LO8p3lRLZXpohPDzojcJ_BVuMnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$LO8p3lRLZXpohPDzojcJ_BVuMnk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LO8p3lRLZXpohPDzojcJ_BVuMnk;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LO8p3lRLZXpohPDzojcJ_BVuMnk;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LO8p3lRLZXpohPDzojcJ_BVuMnk;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$LO8p3lRLZXpohPDzojcJ_BVuMnk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;->sortOrder()I

    move-result p1

    return p1
.end method

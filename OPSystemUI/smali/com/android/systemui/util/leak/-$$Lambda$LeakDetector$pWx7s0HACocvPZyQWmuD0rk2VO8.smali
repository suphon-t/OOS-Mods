.class public final synthetic Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;-><init>()V

    sput-object v0, Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;->INSTANCE:Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/android/systemui/util/leak/LeakDetector;->lambda$dump$0(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

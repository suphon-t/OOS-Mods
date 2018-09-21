.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;

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

    invoke-static {p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$63(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

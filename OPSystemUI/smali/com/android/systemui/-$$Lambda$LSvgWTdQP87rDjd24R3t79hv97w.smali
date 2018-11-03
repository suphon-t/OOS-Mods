.class public final synthetic Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;->INSTANCE:Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/UiOffloadThread;

    invoke-direct {v0}, Lcom/android/systemui/UiOffloadThread;-><init>()V

    check-cast v0, Ljava/lang/Object;

    return-object v0
.end method

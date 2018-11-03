.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$1$nEDJFK5X-9H1WAx_9S8qUwV6KLY;

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

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->lambda$handleMessage$3(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    return-void
.end method

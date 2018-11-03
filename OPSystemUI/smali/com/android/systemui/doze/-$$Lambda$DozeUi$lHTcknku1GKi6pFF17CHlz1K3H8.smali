.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;

    invoke-direct {v0}, Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;->INSTANCE:Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/doze/DozeUi;->lambda$onTimeTick$0()V

    return-void
.end method

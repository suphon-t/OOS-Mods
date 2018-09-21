.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->lambda$getAllEntries$0(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object p1

    return-object p1
.end method

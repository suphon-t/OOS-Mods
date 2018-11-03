.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;

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

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getCurrentTopRoundness()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

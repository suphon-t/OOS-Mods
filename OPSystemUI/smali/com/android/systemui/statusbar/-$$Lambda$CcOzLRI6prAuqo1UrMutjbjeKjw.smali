.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;

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

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getCurrentBottomRoundness()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

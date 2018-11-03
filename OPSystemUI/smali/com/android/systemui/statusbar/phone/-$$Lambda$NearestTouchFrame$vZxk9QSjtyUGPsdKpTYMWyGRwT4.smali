.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$vZxk9QSjtyUGPsdKpTYMWyGRwT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$vZxk9QSjtyUGPsdKpTYMWyGRwT4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$vZxk9QSjtyUGPsdKpTYMWyGRwT4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$vZxk9QSjtyUGPsdKpTYMWyGRwT4;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$vZxk9QSjtyUGPsdKpTYMWyGRwT4;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$vZxk9QSjtyUGPsdKpTYMWyGRwT4;

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

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$findNearestChild$0(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

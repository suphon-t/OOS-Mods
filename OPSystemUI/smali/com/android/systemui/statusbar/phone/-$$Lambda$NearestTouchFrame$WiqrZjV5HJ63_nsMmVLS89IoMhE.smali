.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$WiqrZjV5HJ63_nsMmVLS89IoMhE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$WiqrZjV5HJ63_nsMmVLS89IoMhE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$WiqrZjV5HJ63_nsMmVLS89IoMhE;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$WiqrZjV5HJ63_nsMmVLS89IoMhE;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$WiqrZjV5HJ63_nsMmVLS89IoMhE;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$WiqrZjV5HJ63_nsMmVLS89IoMhE;

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

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$findNearestChild$2(Landroid/util/Pair;)I

    move-result p1

    return p1
.end method

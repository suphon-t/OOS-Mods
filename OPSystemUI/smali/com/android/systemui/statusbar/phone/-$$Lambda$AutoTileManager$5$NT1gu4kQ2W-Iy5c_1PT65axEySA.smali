.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$NT1gu4kQ2W-Iy5c_1PT65axEySA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$NT1gu4kQ2W-Iy5c_1PT65axEySA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$NT1gu4kQ2W-Iy5c_1PT65axEySA;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$NT1gu4kQ2W-Iy5c_1PT65axEySA;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$NT1gu4kQ2W-Iy5c_1PT65axEySA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$5$NT1gu4kQ2W-Iy5c_1PT65axEySA;

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

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;->lambda$addNightTile$0()V

    return-void
.end method

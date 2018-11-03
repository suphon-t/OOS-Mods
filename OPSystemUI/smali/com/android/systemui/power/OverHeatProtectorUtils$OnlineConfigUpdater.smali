.class Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "OverHeatProtectorUtils.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/OverHeatProtectorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnlineConfigUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/OverHeatProtectorUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/OverHeatProtectorUtils$1;

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 219
    const-string v0, "OverHeatProtector"

    const-string v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->access$400(Lorg/json/JSONArray;)V

    .line 221
    return-void
.end method

.class Lcom/android/systemui/power/OverHeatProtectorUtils$2;
.super Ljava/lang/Object;
.source "OverHeatProtectorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/OverHeatProtectorUtils;->registerOnlineConfigObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "OverHeatProtector"

    const-string v1, "Take the initiative in retrieving online config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    .line 210
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OverHeatConfig"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->access$400(Lorg/json/JSONArray;)V

    .line 212
    return-void
.end method

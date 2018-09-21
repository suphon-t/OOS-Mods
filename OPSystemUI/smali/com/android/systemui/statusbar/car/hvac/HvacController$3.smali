.class Lcom/android/systemui/statusbar/car/hvac/HvacController$3;
.super Ljava/lang/Object;
.source "HvacController.java"

# interfaces
.implements Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/hvac/HvacController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/hvac/HvacController;

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$3;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 164
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    .line 165
    .local v0, "areaId":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 166
    .local v1, "propertyId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$3;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$700(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 168
    .local v2, "temperatureViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/car/hvac/TemperatureView;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 170
    .local v3, "value":F
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;

    .line 171
    .local v5, "tempView":Lcom/android/systemui/statusbar/car/hvac/TemperatureView;
    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->setTemp(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v5    # "tempView":Lcom/android/systemui/statusbar/car/hvac/TemperatureView;
    goto :goto_0

    .line 178
    .end local v0    # "areaId":I
    .end local v1    # "propertyId":I
    .end local v2    # "temperatureViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/car/hvac/TemperatureView;>;"
    .end local v3    # "value":F
    :cond_0
    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HvacController"

    const-string v2, "Failed handling hvac change event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 183
    const-string v0, "HvacController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HVAC error event, propertyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

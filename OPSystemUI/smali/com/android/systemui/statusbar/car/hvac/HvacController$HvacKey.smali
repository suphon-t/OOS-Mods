.class Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;
.super Ljava/lang/Object;
.source "HvacController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/hvac/HvacController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HvacKey"
.end annotation


# instance fields
.field mAreaId:I

.field mPropertyId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "areaId"    # I

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mPropertyId:I

    .line 206
    iput p2, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mAreaId:I

    .line 207
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 212
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;

    .line 214
    .local v2, "hvacKey":Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;
    iget v3, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mPropertyId:I

    iget v4, v2, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mPropertyId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mAreaId:I

    iget v4, v2, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mAreaId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 212
    .end local v2    # "hvacKey":Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mPropertyId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;->mAreaId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

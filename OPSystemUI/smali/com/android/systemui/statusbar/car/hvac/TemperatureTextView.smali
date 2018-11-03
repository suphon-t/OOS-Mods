.class public Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;
.super Landroid/widget/TextView;
.source "TemperatureTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/car/hvac/TemperatureView;


# instance fields
.field private final mAreaId:I

.field private final mPropertyId:I

.field private final mTempFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcom/android/systemui/R$styleable;->TemperatureView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->mAreaId:I

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->mPropertyId:I

    .line 48
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "format":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v2, "%.1f\u00b0"

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->mTempFormat:Ljava/lang/String;

    .line 52
    const-class v2, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    .line 53
    .local v2, "hvacController":Lcom/android/systemui/statusbar/car/hvac/HvacController;
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->addHvacTextView(Lcom/android/systemui/statusbar/car/hvac/TemperatureView;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getAreaId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->mAreaId:I

    return v0
.end method

.method public getPropertyId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->mPropertyId:I

    return v0
.end method

.method public setTemp(F)V
    .locals 4
    .param p1, "temp"    # F

    .line 62
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "--"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->mTempFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/hvac/TemperatureTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.class public final Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "SystemUIInterpolators.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SystemUIInterpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogAccelerateInterpolator"
.end annotation


# instance fields
.field private final mBase:I

.field private final mDrift:I

.field private final mLogScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>(II)V

    .line 57
    return-void
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "base"    # I
    .param p2, "drift"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mBase:I

    .line 61
    iput p2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mDrift:I

    .line 62
    iget v0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mBase:I

    iget v1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mDrift:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->computeLog(FII)F

    move-result v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    .line 63
    return-void
.end method

.method private static computeLog(FII)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "base"    # I
    .param p2, "drift"    # I

    .line 66
    int-to-double v0, p1

    neg-float v2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    iget v2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mBase:I

    iget v3, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mDrift:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->computeLog(FII)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

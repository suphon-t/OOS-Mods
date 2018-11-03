.class Lcom/android/systemui/screenshot/GlobalScreenshot$6;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 726
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .param p1, "x"    # F

    .line 730
    const v0, 0x3f1aca6b

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 731
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    div-float v0, p1, v0

    float-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 733
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

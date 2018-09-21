.class final Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlingAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VelocityInterpolator"
.end annotation


# instance fields
.field private mDiff:F

.field private mDurationSeconds:F

.field private mVelocity:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0
    .param p1, "durationSeconds"    # F
    .param p2, "velocity"    # F
    .param p3, "diff"    # F

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    .line 337
    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    .line 338
    iput p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    .line 339
    return-void
.end method

.method synthetic constructor <init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$1;)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F
    .param p3, "x2"    # F
    .param p4, "x3"    # Lcom/android/systemui/statusbar/FlingAnimationUtils$1;

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .line 343
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    mul-float/2addr v0, p1

    .line 344
    .local v0, "time":F
    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    div-float/2addr v1, v2

    return v1
.end method

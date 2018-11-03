.class Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;
.super Ljava/lang/Object;
.source "NoisyVelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionEventCopy"
.end annotation


# instance fields
.field t:J

.field x:F

.field y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0
    .param p1, "x2"    # F
    .param p2, "y2"    # F
    .param p3, "eventTime"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->x:F

    .line 44
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->y:F

    .line 45
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    .line 46
    return-void
.end method

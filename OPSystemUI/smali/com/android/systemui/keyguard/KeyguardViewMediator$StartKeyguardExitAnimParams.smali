.class Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartKeyguardExitAnimParams"
.end annotation


# instance fields
.field fadeoutDuration:J

.field startTime:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .line 2564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2565
    iput-wide p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    .line 2566
    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    .line 2567
    return-void
.end method

.method synthetic constructor <init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    .line 2559
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJ)V

    return-void
.end method

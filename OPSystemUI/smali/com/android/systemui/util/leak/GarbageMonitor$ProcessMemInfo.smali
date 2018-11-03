.class public Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;
.super Ljava/lang/Object;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessMemInfo"
.end annotation


# instance fields
.field public currentPss:J

.field public currentUss:J

.field public head:I

.field public max:J

.field public name:Ljava/lang/String;

.field public pid:J

.field public pss:[J

.field public startTime:J

.field public uss:[J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2
    .param p1, "pid"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "start"    # J

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/16 v0, 0x100

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pss:[J

    .line 421
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->uss:[J

    .line 422
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 426
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pid:J

    .line 427
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->name:Ljava/lang/String;

    .line 428
    iput-wide p4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    .line 429
    return-void
.end method


# virtual methods
.method public getUptime()J
    .locals 4

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

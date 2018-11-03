.class public Lcom/android/systemui/util/leak/GarbageMonitor;
.super Ljava/lang/Object;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;,
        Lcom/android/systemui/util/leak/GarbageMonitor$Service;,
        Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;,
        Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;,
        Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;,
        Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;
    }
.end annotation


# static fields
.field private static final HEAP_TRACKING_ENABLED:Z

.field private static final LEAK_REPORTING_ENABLED:Z


# instance fields
.field private final mAm:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mData:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpTruck:Lcom/android/systemui/util/leak/DumpTruck;

.field private final mHandler:Landroid/os/Handler;

.field private mHeapLimit:J

.field private final mLeakReporter:Lcom/android/systemui/util/leak/LeakReporter;

.field private final mPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPidsArray:[I

.field private mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

.field private final mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "debug.enable_leak_reporting"

    .line 57
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    sput-boolean v1, Lcom/android/systemui/util/leak/GarbageMonitor;->LEAK_REPORTING_ENABLED:Z

    .line 60
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->HEAP_TRACKING_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/util/leak/LeakReporter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;
    .param p3, "leakDetector"    # Lcom/android/systemui/util/leak/LeakDetector;
    .param p4, "leakReporter"    # Lcom/android/systemui/util/leak/LeakReporter;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPidsArray:[I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mContext:Landroid/content/Context;

    .line 94
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mAm:Landroid/app/ActivityManager;

    .line 96
    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {p3}, Lcom/android/systemui/util/leak/LeakDetector;->getTrackedGarbage()Lcom/android/systemui/util/leak/TrackedGarbage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    .line 99
    iput-object p4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mLeakReporter:Lcom/android/systemui/util/leak/LeakReporter;

    .line 101
    new-instance v0, Lcom/android/systemui/util/leak/DumpTruck;

    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/leak/DumpTruck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mDumpTruck:Lcom/android/systemui/util/leak/DumpTruck;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHeapLimit:J

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/leak/GarbageMonitor;Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/util/leak/GarbageMonitor;
    .param p1, "x1"    # Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/util/leak/GarbageMonitor;->setTile(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/util/leak/GarbageMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 54
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHeapLimit:J

    return-wide v0
.end method

.method static synthetic access$300(J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # J

    .line 54
    invoke-static {p0, p1}, Lcom/android/systemui/util/leak/GarbageMonitor;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->dumpHprofAndShare()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->LEAK_REPORTING_ENABLED:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->HEAP_TRACKING_ENABLED:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/util/leak/GarbageMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->gcAndCheckGarbage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->update()V

    return-void
.end method

.method private dumpHprofAndShare()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mDumpTruck:Lcom/android/systemui/util/leak/DumpTruck;

    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->getTrackedProcesses()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/leak/DumpTruck;->captureHeaps([I)Lcom/android/systemui/util/leak/DumpTruck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/DumpTruck;->createShareIntent()Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, "share":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private static formatBytes(J)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # J

    .line 207
    const-string v0, "B"

    const-string v1, "K"

    const-string v2, "M"

    const-string v3, "G"

    const-string v4, "T"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "SUFFIXES":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 210
    const-wide/16 v2, 0x400

    cmp-long v4, p0, v2

    if-gez v4, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    div-long/2addr p0, v2

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private gcAndCheckGarbage()Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/TrackedGarbage;->countOldGarbage()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 124
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setTile(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 202
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 203
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->update()V

    .line 204
    :cond_0
    return-void
.end method

.method private update()V
    .locals 11

    .line 170
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mAm:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPidsArray:[I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 172
    .local v1, "dinfos":[Landroid/os/Debug$MemoryInfo;
    const/4 v2, 0x0

    .line 172
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 173
    aget-object v3, v1, v2

    .line 174
    .local v3, "dinfo":Landroid/os/Debug$MemoryInfo;
    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 175
    const-string v4, "GarbageMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update: unknown process info received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    goto/16 :goto_1

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    .line 179
    .local v4, "pid":J
    iget-object v6, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 180
    .local v6, "info":Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;
    iget v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pss:[J

    array-length v8, v8

    rem-int/2addr v7, v8

    iput v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 181
    iget-object v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pss:[J

    iget v8, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    aput-wide v9, v7, v8

    .line 182
    iget-object v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->uss:[J

    iget v8, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentUss:J

    aput-wide v9, v7, v8

    .line 183
    iget-wide v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    iget-wide v9, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    iget-wide v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    iput-wide v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    .line 184
    :cond_1
    iget-wide v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentUss:J

    iget-wide v9, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-wide v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentUss:J

    iput-wide v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    .line 185
    :cond_2
    iget-wide v7, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 186
    const-string v7, "GarbageMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update: pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " has pss=0, it probably died"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v7, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 172
    .end local v3    # "dinfo":Landroid/os/Debug$MemoryInfo;
    .end local v4    # "pid":J
    .end local v6    # "info":Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 190
    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_6

    .line 191
    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 192
    .local v3, "pid":J
    iget-object v5, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 193
    iget-object v5, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->updatePidsArrayL()V

    .line 190
    .end local v3    # "pid":J
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 197
    .end local v1    # "dinfos":[Landroid/os/Debug$MemoryInfo;
    .end local v2    # "i":I
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->update()V

    .line 199
    :cond_7
    return-void

    .line 197
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updatePidsArrayL()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    .local v0, "N":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPidsArray:[I

    .line 159
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Now tracking processes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 162
    .local v3, "p":I
    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPidsArray:[I

    aput v3, v4, v2

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    .end local v3    # "p":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    :cond_0
    const-string v2, "GarbageMonitor"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method


# virtual methods
.method public getMemInfo(I)Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;
    .locals 3
    .param p1, "pid"    # I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    return-object v0
.end method

.method public getTrackedProcesses()[I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPidsArray:[I

    return-object v0
.end method

.method reinspectGarbageAfterGc()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/TrackedGarbage;->countOldGarbage()I

    move-result v0

    .line 132
    .local v0, "count":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mLeakReporter:Lcom/android/systemui/util/leak/LeakReporter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakReporter;->dumpLeak(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public startHeapTracking()V
    .locals 7

    .line 117
    nop

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 117
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/util/leak/GarbageMonitor;->startTrackingProcess(JLjava/lang/String;J)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method public startLeakMonitor()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    return-void
.end method

.method public startTrackingProcess(JLjava/lang/String;J)V
    .locals 9
    .param p1, "pid"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "start"    # J

    .line 146
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->updatePidsArrayL()V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    new-instance v8, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    move-object v2, v8

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;-><init>(JLjava/lang/String;J)V

    invoke-virtual {v1, p1, p2, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

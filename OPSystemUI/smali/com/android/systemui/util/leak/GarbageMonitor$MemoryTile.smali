.class public Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryTile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final gm:Lcom/android/systemui/util/leak/GarbageMonitor;

.field private pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 340
    const-class v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 341
    return-void
.end method

.method static synthetic lambda$handleClick$0(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 356
    invoke-static {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$400(Lcom/android/systemui/util/leak/GarbageMonitor;)V

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->getHost()Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/util/leak/-$$Lambda$GarbageMonitor$MemoryTile$RY8VPTPHkg6QWMQHYqV3eM4EOMY;

    invoke-direct {v2, v1}, Lcom/android/systemui/util/leak/-$$Lambda$GarbageMonitor$MemoryTile$RY8VPTPHkg6QWMQHYqV3eM4EOMY;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .line 366
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$000(Lcom/android/systemui/util/leak/GarbageMonitor;Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 369
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v1}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$100(Lcom/android/systemui/util/leak/GarbageMonitor;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 370
    const-wide/16 v1, 0x400

    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v3}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$100(Lcom/android/systemui/util/leak/GarbageMonitor;)J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setWatchHeapLimit(J)V

    goto :goto_1

    .line 372
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearWatchHeapLimit()V

    .line 374
    :goto_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor;->getMemInfo(I)Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 384
    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor$1;)V

    .line 385
    .local v0, "icon":Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;
    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v2}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$100(Lcom/android/systemui/util/leak/GarbageMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->setHeapLimit(J)V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    if-eqz v2, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    iget-wide v1, v1, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->setPss(J)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1102a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 389
    const-string v1, "pss: %s / %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    iget-wide v4, v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    .line 392
    invoke-static {v4, v5}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$300(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 393
    invoke-static {v4}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$100(Lcom/android/systemui/util/leak/GarbageMonitor;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$300(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 390
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 395
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->setPss(J)V

    .line 396
    const-string v2, "Dump SysUI"

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 397
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 399
    :goto_0
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 400
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 345
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public update()V
    .locals 0

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->refreshState()V

    .line 404
    return-void
.end method

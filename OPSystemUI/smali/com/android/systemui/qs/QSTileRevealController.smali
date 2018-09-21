.class public Lcom/android/systemui/qs/QSTileRevealController;
.super Ljava/lang/Object;
.source "QSTileRevealController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mRevealQsTiles:Ljava/lang/Runnable;

.field private final mTilesToReveal:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p3, "pagedTileLayout"    # Lcom/android/systemui/qs/PagedTileLayout;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/android/systemui/qs/QSTileRevealController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTileRevealController$1;-><init>(Lcom/android/systemui/qs/QSTileRevealController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mRevealQsTiles:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileRevealController;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileRevealController;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileRevealController;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSTileRevealController;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileRevealController;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSTileRevealController;)Lcom/android/systemui/qs/PagedTileLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileRevealController;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSTileRevealController;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileRevealController;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSTileRevealController;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSTileRevealController;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->addTileSpecsToRevealed(Landroid/util/ArraySet;)V

    return-void
.end method

.method private addTileSpecsToRevealed(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "specs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController;->mContext:Landroid/content/Context;

    const-string v2, "QsTileSpecsRevealed"

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 72
    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 73
    .local v0, "revealedTiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController;->mContext:Landroid/content/Context;

    const-string v2, "QsTileSpecsRevealed"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/Prefs;->putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 75
    return-void
.end method


# virtual methods
.method public setExpansion(F)V
    .locals 4
    .param p1, "expansion"    # F

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController;->mRevealQsTiles:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController;->mRevealQsTiles:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    :goto_0
    return-void
.end method

.method public updateRevealedTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 53
    .local v0, "tileSpecs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 54
    .local v2, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v2    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController;->mContext:Landroid/content/Context;

    const-string v2, "QsTileSpecsRevealed"

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 59
    .local v1, "revealedTiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileRevealController;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 66
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileRevealController;->addTileSpecsToRevealed(Landroid/util/ArraySet;)V

    .line 68
    :goto_2
    return-void
.end method

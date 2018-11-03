.class public final synthetic Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$pVNHAsbxeJK0zo0OnLB_L5xKe_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$pVNHAsbxeJK0zo0OnLB_L5xKe_E;->f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$pVNHAsbxeJK0zo0OnLB_L5xKe_E;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$pVNHAsbxeJK0zo0OnLB_L5xKe_E;->f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$pVNHAsbxeJK0zo0OnLB_L5xKe_E;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$addStockTiles$0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V

    return-void
.end method

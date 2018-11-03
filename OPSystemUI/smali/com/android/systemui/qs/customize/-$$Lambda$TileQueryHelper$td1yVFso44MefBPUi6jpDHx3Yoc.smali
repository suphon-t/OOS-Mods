.class public final synthetic Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;->f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;->f$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;->f$1:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/-$$Lambda$TileQueryHelper$td1yVFso44MefBPUi6jpDHx3Yoc;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->lambda$notifyTilesChanged$2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V

    return-void
.end method

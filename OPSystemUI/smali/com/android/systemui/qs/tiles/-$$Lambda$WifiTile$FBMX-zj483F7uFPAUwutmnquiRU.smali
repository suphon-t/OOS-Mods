.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$WifiTile$FBMX-zj483F7uFPAUwutmnquiRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$WifiTile$FBMX-zj483F7uFPAUwutmnquiRU;->f$0:Lcom/android/systemui/qs/tiles/WifiTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$WifiTile$FBMX-zj483F7uFPAUwutmnquiRU;->f$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->lambda$handleClick$0(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-void
.end method

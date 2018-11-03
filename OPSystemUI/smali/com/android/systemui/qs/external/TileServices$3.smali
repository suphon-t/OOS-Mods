.class Lcom/android/systemui/qs/external/TileServices$3;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/qs/external/TileServiceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/qs/external/TileServiceManager;Lcom/android/systemui/qs/external/TileServiceManager;)I
    .locals 2
    .param p1, "left"    # Lcom/android/systemui/qs/external/TileServiceManager;
    .param p2, "right"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .line 327
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServiceManager;->getBindPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->getBindPriority()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 324
    check-cast p1, Lcom/android/systemui/qs/external/TileServiceManager;

    check-cast p2, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/external/TileServices$3;->compare(Lcom/android/systemui/qs/external/TileServiceManager;Lcom/android/systemui/qs/external/TileServiceManager;)I

    move-result p1

    return p1
.end method

.class final Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotspotAndDataSaverCallbacks"
.end annotation


# instance fields
.field mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/HotspotTile$1;

    .line 264
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method


# virtual methods
.method public onDataSaverChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$100(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public onHotspotChanged(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "numDevices"    # I

    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iput p2, v0, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

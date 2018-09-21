.class Lcom/android/systemui/qs/tiles/DndTile$3;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 328
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$600(Lcom/android/systemui/qs/tiles/DndTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->access$500(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onZenChanged(I)V
    .locals 2
    .param p1, "zen"    # I

    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$200(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$300(Lcom/android/systemui/qs/tiles/DndTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->access$500(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    .line 334
    :cond_0
    return-void
.end method

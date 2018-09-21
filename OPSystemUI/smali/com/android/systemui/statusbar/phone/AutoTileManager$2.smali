.class Lcom/android/systemui/statusbar/phone/AutoTileManager$2;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onManagedProfileChanged$0(Lcom/android/systemui/statusbar/phone/AutoTileManager$2;)V
    .locals 2

    .line 107
    const-class v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 108
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$400(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->removeCallback(Ljava/lang/Object;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onManagedProfileChanged()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$000(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object v0

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$000(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object v0

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$200(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$2$syftIWA2wqUlSOuDU-f8zUuwVzc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$2$syftIWA2wqUlSOuDU-f8zUuwVzc;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_1
    return-void
.end method

.method public onManagedProfileRemoved()V
    .locals 0

    .line 114
    return-void
.end method

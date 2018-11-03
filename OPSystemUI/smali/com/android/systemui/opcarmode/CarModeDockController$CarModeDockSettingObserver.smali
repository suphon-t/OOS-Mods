.class Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;
.super Landroid/database/ContentObserver;
.source "CarModeDockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/opcarmode/CarModeDockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarModeDockSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/opcarmode/CarModeDockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/opcarmode/CarModeDockController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 73
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$000(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$100(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/MetaDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadAll()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string v0, "CarModeDockController"

    const-string v1, "onChange: meta not loaded. skip."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$000(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_carmode_dock_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 87
    .local v0, "showDock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$200(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v3

    if-eq v3, v0, :cond_3

    .line 88
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3, v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$202(Lcom/android/systemui/opcarmode/CarModeDockController;Z)Z

    .line 89
    const-string v3, "CarModeDockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange: show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v5}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$200(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$300(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v4}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$200(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;->showCarModeDock(Z)V

    .line 93
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$400(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->getZenModeByType(I)I

    move-result v3

    if-lez v3, :cond_4

    move v2, v1

    nop

    .line 94
    .local v2, "dndEnabled":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$000(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oneplus_carmode_dock_mask_entry"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, "maskEntry":I
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$500(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v3

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$600(Lcom/android/systemui/opcarmode/CarModeDockController;)I

    move-result v3

    if-eq v3, v1, :cond_6

    .line 98
    :cond_5
    const-string v3, "CarModeDockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange: dndEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v5}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$500(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", maskEntry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 99
    invoke-static {v5}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$600(Lcom/android/systemui/opcarmode/CarModeDockController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3, v2}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$502(Lcom/android/systemui/opcarmode/CarModeDockController;Z)Z

    .line 101
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3, v1}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$602(Lcom/android/systemui/opcarmode/CarModeDockController;I)I

    .line 102
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$300(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;->refreshUI()V

    .line 104
    :cond_6
    return-void
.end method

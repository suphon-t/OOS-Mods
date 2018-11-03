.class final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DndDetailAdapter"
.end annotation


# instance fields
.field private mAuto:Z

.field private mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/DndTile$1;

    .line 394
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updatePanel()V

    return-void
.end method

.method private getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "owner"    # Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$2000(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 479
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 480
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 482
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 483
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DndTile;->access$2100(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1104c0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 489
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DndTile;->access$2200(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error loading owner caption"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method private updatePanel()V
    .locals 9

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mAuto:Z

    .line 448
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    if-nez v1, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setState(I)V

    goto/16 :goto_2

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 452
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    const-string v2, ""

    .line 453
    .local v2, "summary":Ljava/lang/String;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 454
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    :cond_2
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 457
    .local v4, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 458
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 459
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DndTile;->access$1800(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1104c1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v8, v5, v0

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 462
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DndTile;->access$1900(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1104c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    .end local v4    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_4
    :goto_1
    goto :goto_0

    .line 466
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 467
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v3, v0}, Lcom/android/systemui/volume/ZenModePanel;->setState(I)V

    goto :goto_2

    .line 469
    :cond_6
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mAuto:Z

    .line 470
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/ZenModePanel;->setState(I)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/ZenModePanel;->setAutoText(Ljava/lang/CharSequence;)V

    .line 474
    .end local v1    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "summary":Ljava/lang/String;
    :goto_2
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 432
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 435
    if-nez p2, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/ZenModePanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$1700(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/volume/ZenModePanel$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const v1, 0x7f080580

    const v2, 0x7f110249

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->setEmptyState(II)V

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updatePanel()V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 427
    const/16 v0, 0x95

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 411
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->access$1300()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$1100(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1104ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$1200(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$2302(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 496
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$2302(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 502
    return-void
.end method

.method public setToggleState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$1400(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 417
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DndTile;->access$1500(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 419
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mAuto:Z

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DndTile;->access$1600(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void
.end method

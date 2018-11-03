.class final Lcom/oneplus/notification/OPNotificationController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OPNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final CAR_MODE_STATUS_URI:Landroid/net/Uri;

.field private final ESPORT_MODE_ENABLED:Landroid/net/Uri;

.field private final ESPORT_MODE_KEY:Ljava/lang/String;

.field private final GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

.field private final GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

.field private final ONEPLUS_CARMODE_INSIDE_URI:Landroid/net/Uri;

.field private final OP_QUICKREPLY_IM_LIST_KEY:Ljava/lang/String;

.field private final OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/notification/OPNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 390
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 391
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 369
    const-string p1, "op_quickreply_im_list"

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->OP_QUICKREPLY_IM_LIST_KEY:Ljava/lang/String;

    .line 370
    const-string p1, "game_mode_block_notification"

    .line 371
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

    .line 372
    const-string p1, "game_mode_notifications_3rd_calls_uid"

    .line 373
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

    .line 374
    const-string p1, "op_quickreply_im_list"

    .line 375
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

    .line 378
    const-string p1, "oneplus_carmode_switch"

    .line 379
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->CAR_MODE_STATUS_URI:Landroid/net/Uri;

    .line 380
    const-string p1, "oneplus_carmode_inside"

    .line 381
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->ONEPLUS_CARMODE_INSIDE_URI:Landroid/net/Uri;

    .line 385
    const-string p1, "esport_mode_enabled"

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->ESPORT_MODE_KEY:Ljava/lang/String;

    .line 386
    const-string p1, "esport_mode_enabled"

    .line 387
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    .line 392
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$300(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 397
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 399
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 401
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 404
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->CAR_MODE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 406
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->ONEPLUS_CARMODE_INSIDE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 411
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 414
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 415
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 419
    invoke-virtual {p0, p2}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 420
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 423
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$300(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_BLOCK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v4, "game_mode_block_notification"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/oneplus/notification/OPNotificationController;->access$402(Lcom/oneplus/notification/OPNotificationController;I)I

    .line 427
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$400(Lcom/oneplus/notification/OPNotificationController;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    sget-object v3, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    goto :goto_0

    .line 430
    :cond_1
    sget-object v3, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 433
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->GAME_MODE_NOTIFICATIONS_3RD_CALLS_UID_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v4, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/notification/OPNotificationController;->access$502(Lcom/oneplus/notification/OPNotificationController;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$500(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "-1"

    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v4}, Lcom/oneplus/notification/OPNotificationController;->access$500(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 437
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$600(Lcom/oneplus/notification/OPNotificationController;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$600(Lcom/oneplus/notification/OPNotificationController;)Lcom/android/systemui/statusbar/NotificationEntryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeHeadsUps()V

    .line 438
    :cond_4
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$700(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 439
    const-string v3, "OPNotificationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeHeadsUps for calling uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v5}, Lcom/oneplus/notification/OPNotificationController;->access$500(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_5
    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 444
    :cond_6
    const-string v3, "op_quickreply_im_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "list":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 446
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/notification/OPNotificationController;->access$802(Lcom/oneplus/notification/OPNotificationController;Ljava/util/List;)Ljava/util/List;

    .line 448
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v4}, Lcom/oneplus/notification/OPNotificationController;->access$900(Lcom/oneplus/notification/OPNotificationController;)V

    .line 451
    :cond_7
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v4}, Lcom/oneplus/notification/OPNotificationController;->access$700(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 452
    const-string v4, "OPNotificationController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "list= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v3    # "list":Ljava/lang/String;
    :cond_8
    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->CAR_MODE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 458
    :cond_9
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v4, "oneplus_carmode_switch"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/notification/OPNotificationController;->access$1002(Lcom/oneplus/notification/OPNotificationController;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$1000(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v3, "1"

    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v4}, Lcom/oneplus/notification/OPNotificationController;->access$1000(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 461
    sget-object v3, Lcom/oneplus/oimc/OIMCRule;->Rule_CarMode_Disable_HeadsUp:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    goto :goto_1

    .line 463
    :cond_a
    sget-object v3, Lcom/oneplus/oimc/OIMCRule;->Rule_CarMode_Disable_HeadsUp:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 466
    :cond_b
    :goto_1
    if-eqz p1, :cond_c

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->ONEPLUS_CARMODE_INSIDE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 467
    :cond_c
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v4, "oneplus_carmode_inside"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/notification/OPNotificationController;->access$1102(Lcom/oneplus/notification/OPNotificationController;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    :cond_d
    if-eqz p1, :cond_e

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->ESPORT_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 473
    :cond_e
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    const-string v4, "esport_mode_enabled"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    move v2, v4

    nop

    :cond_f
    invoke-static {v3, v2}, Lcom/oneplus/notification/OPNotificationController;->access$1202(Lcom/oneplus/notification/OPNotificationController;Z)Z

    .line 478
    :cond_10
    if-nez p1, :cond_11

    .line 479
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification_Breath:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 482
    :cond_11
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$700(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 483
    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mESportModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 484
    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$1200(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mGameModeNotifType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 485
    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$400(Lcom/oneplus/notification/OPNotificationController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mGameMode3rdCallUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 486
    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$500(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCarModeStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 487
    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$1000(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCarModeInside: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 488
    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$1100(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_12
    return-void
.end method

.class final Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final BATTERY_BAR_STYLE:I

.field private final BATTERY_PERCENT_STYLE:I

.field private final SHOW_BATTERY_PERCENT:Landroid/net/Uri;

.field private final STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 330
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 321
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->BATTERY_BAR_STYLE:I

    .line 322
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->BATTERY_PERCENT_STYLE:I

    .line 324
    const-string p1, "status_bar_show_battery_percent"

    .line 325
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    .line 326
    const-string p1, "status_bar_battery_style"

    .line 327
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    .line 331
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    .line 341
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 345
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    .line 346
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->SHOW_BATTERY_PERCENT:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    const-string v4, "status_bar_show_battery_percent"

    .line 352
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 351
    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z

    .line 354
    :cond_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->STATUS_BAR_BATTERY_STYLE:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 355
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    const-string v4, "status_bar_battery_style"

    .line 356
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 355
    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)I

    .line 358
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 359
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)I

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z

    .line 361
    const-string v2, "BatteryController"

    const-string v3, "Migrate battery style from percent to bar and show percentage."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v2, "status_bar_battery_style"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 363
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I

    move-result v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 362
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 364
    const-string v2, "status_bar_show_battery_percent"

    .line 365
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 364
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 369
    :cond_4
    const-string v1, "BatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mShowPercent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 370
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    .line 372
    return-void
.end method

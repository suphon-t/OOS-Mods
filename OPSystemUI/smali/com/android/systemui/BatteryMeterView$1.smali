.class Lcom/android/systemui/BatteryMeterView$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterView;
    .param p2, "context"    # Landroid/content/Context;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0, p1}, Lcom/android/systemui/BatteryMeterView;->access$002(Lcom/android/systemui/BatteryMeterView;I)I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 169
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v2}, Lcom/android/systemui/BatteryMeterView;->access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;

    move-result-object v2

    .line 168
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 171
    return-void
.end method

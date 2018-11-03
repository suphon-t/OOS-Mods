.class Lcom/android/systemui/power/OverHeatProtector$1;
.super Landroid/database/ContentObserver;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/OverHeatProtector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iput-object p3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 148
    const-string v0, "op_temperature_orange"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "op_temperature_orange"

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    .line 151
    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v4

    .line 150
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$102(Lcom/android/systemui/power/OverHeatProtector;I)I

    .line 152
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "overheat_protector_orange"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v3}, Lcom/android/systemui/power/OverHeatProtector;->access$100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 153
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 154
    :cond_0
    const-string v0, "op_temperature_red"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "op_temperature_red"

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    .line 157
    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$300(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v4

    .line 156
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$302(Lcom/android/systemui/power/OverHeatProtector;I)I

    .line 158
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "overheat_protector_red"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v3}, Lcom/android/systemui/power/OverHeatProtector;->access$300(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 159
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 160
    :cond_1
    const-string v0, "op_temperature_purple"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "op_temperature_purple"

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    .line 163
    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$400(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v4

    .line 162
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$402(Lcom/android/systemui/power/OverHeatProtector;I)I

    .line 164
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "overheat_protector_purple"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v3}, Lcom/android/systemui/power/OverHeatProtector;->access$400(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 165
    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 167
    :cond_2
    :goto_0
    return-void
.end method

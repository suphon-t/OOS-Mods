.class Lcom/android/systemui/power/OverHeatProtector$2;
.super Landroid/content/BroadcastReceiver;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/OverHeatProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 258
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$2;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .line 261
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/systemui/power/OverHeatProtector;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    const-string/jumbo v0, "temperature"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "temperature":I
    sget-boolean v1, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "temp":Ljava/lang/String;
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery\'s temperature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "temp":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$2;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1, v0}, Lcom/android/systemui/power/OverHeatProtector;->access$600(Lcom/android/systemui/power/OverHeatProtector;I)V

    .line 268
    return-void

    .line 261
    .end local v0    # "temperature":I
    :cond_2
    :goto_0
    return-void
.end method

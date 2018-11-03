.class Lcom/android/systemui/doze/DozeSensors$1;
.super Landroid/database/ContentObserver;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeSensors;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 183
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 186
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$000(Lcom/android/systemui/doze/DozeSensors;)[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 190
    .local v3, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 189
    .end local v3    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

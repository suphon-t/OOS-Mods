.class Lcom/android/systemui/plugin/LSState$MyUIHandler;
.super Landroid/os/Handler;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/LSState;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugin/LSState;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState$MyUIHandler;->this$0:Lcom/android/systemui/plugin/LSState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugin/LSState;Lcom/android/systemui/plugin/LSState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/plugin/LSState;
    .param p2, "x1"    # Lcom/android/systemui/plugin/LSState$1;

    .line 288
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/LSState$MyUIHandler;-><init>(Lcom/android/systemui/plugin/LSState;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    .line 291
    .local v0, "what":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState$MyUIHandler;->this$0:Lcom/android/systemui/plugin/LSState;

    monitor-enter v1

    .line 294
    :try_start_0
    monitor-exit v1

    .line 297
    :goto_0
    return-void

    .line 294
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.class Lcom/android/systemui/analytics/DataCollector$2;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/analytics/DataCollector;

.field final synthetic val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;


# direct methods
.method constructor <init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/analytics/DataCollector;

    .line 180
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    iput-object p2, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 184
    .local v0, "b":[B
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v1}, Lcom/android/systemui/analytics/DataCollector;->access$100(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "dir":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->getResult()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v2}, Lcom/android/systemui/analytics/DataCollector;->access$200(Lcom/android/systemui/analytics/DataCollector;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bad_touches"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/good_touches"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 196
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trace_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v3, "touch":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    nop

    .line 203
    return-void

    .line 200
    :catch_0
    move-exception v4

    .line 201
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

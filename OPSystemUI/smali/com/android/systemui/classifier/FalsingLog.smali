.class public Lcom/android/systemui/classifier/FalsingLog;
.super Ljava/lang/Object;
.source "FalsingLog.java"


# static fields
.field public static final ENABLED:Z

.field private static final LOGCAT:Z

.field private static final MAX_SIZE:I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingLog;


# instance fields
.field private final mFormat:Ljava/text/SimpleDateFormat;

.field private final mLog:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "debug.falsing_log"

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    .line 53
    const-string v0, "debug.falsing_logcat"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    .line 58
    const-string v0, "debug.falsing_log_size"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    sget v1, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    .line 68
    return-void
.end method

.method public static declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    const-class v0, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v0

    .line 124
    :try_start_0
    const-string v1, "FALSING LOG:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-nez v1, :cond_0

    .line 126
    const-string v1, "Disabled, to enable: setprop debug.falsing_log 1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit v0

    return-void

    .line 131
    :cond_3
    :goto_1
    :try_start_2
    const-string v1, "<empty>"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    monitor-exit v0

    return-void

    .line 123
    .end local p0    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 100
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const-string v0, "E"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 81
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const-string v0, "I"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "level"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    const-class v0, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 108
    monitor-exit v0

    return-void

    .line 110
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-nez v1, :cond_1

    .line 111
    new-instance v1, Lcom/android/systemui/classifier/FalsingLog;

    invoke-direct {v1}, Lcom/android/systemui/classifier/FalsingLog;-><init>()V

    sput-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    .line 114
    :cond_1
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    sget v2, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    if-lt v1, v2, :cond_2

    .line 115
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 117
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "entry":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    monitor-exit v0

    return-void

    .line 106
    .end local v1    # "entry":Ljava/lang/String;
    .end local p0    # "level":Ljava/lang/String;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "s":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static wLogcat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 88
    const-string v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "W"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static declared-synchronized wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "here"    # Ljava/lang/Throwable;

    const-class v0, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 143
    monitor-exit v0

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 148
    .local v1, "application":Landroid/app/Application;
    const-string v2, ""

    .line 149
    .local v2, "fileMessage":Ljava/lang/String;
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 150
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "falsing-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 151
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    .local v3, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 154
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 155
    invoke-static {v4}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 156
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log written to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v5

    .line 161
    nop

    .line 162
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 158
    :catch_0
    move-exception v5

    .line 159
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "FalsingLog"

    const-string v7, "Unable to write falsing log"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_1

    goto :goto_0

    .line 165
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    goto :goto_3

    .line 161
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v4, :cond_2

    .line 162
    :try_start_5
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v5

    .line 166
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_3
    const-string v3, "FalsingLog"

    const-string v4, "Unable to write log, build must be debuggable."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_3
    const-string v3, "FalsingLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    monitor-exit v0

    return-void

    .line 141
    .end local v1    # "application":Landroid/app/Application;
    .end local v2    # "fileMessage":Ljava/lang/String;
    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "s":Ljava/lang/String;
    .end local p2    # "here":Ljava/lang/Throwable;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.class public Lcom/android/systemui/util/leak/LeakReporter;
.super Ljava/lang/Object;
.source "LeakReporter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mLeakReportEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "leakDetector"    # Lcom/android/systemui/util/leak/LeakDetector;
    .param p3, "leakReportEmail"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;
    .locals 12
    .param p1, "hprofFile"    # Ljava/io/File;
    .param p2, "dumpFile"    # Ljava/io/File;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-string v1, "com.android.systemui.fileprovider"

    invoke-static {v0, v1, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "dumpUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.fileprovider"

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, "hprofUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "application/vnd.android.leakreport"

    .line 112
    .local v3, "mimeType":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v5, "SystemUI leak report"

    .line 117
    .local v5, "subject":Ljava/lang/String;
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "SystemUI leak report"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Build info: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "ro.build.description"

    .line 123
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 124
    .local v6, "messageBody":Ljava/lang/StringBuilder;
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    new-instance v7, Landroid/content/ClipData;

    new-array v8, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    new-instance v10, Landroid/content/ClipData$Item;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v11, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v7, v11, v8, v10}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 127
    .local v7, "clipData":Landroid/content/ClipData;
    new-array v8, v4, [Landroid/net/Uri;

    aput-object v0, v8, v9

    invoke-static {v8}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    .line 129
    .local v8, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v10, Landroid/content/ClipData$Item;

    invoke-direct {v10, v11, v11, v11, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v7, v10}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 130
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 133
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 135
    iget-object v10, p0, Lcom/android/systemui/util/leak/LeakReporter;->mLeakReportEmail:Ljava/lang/String;

    .line 136
    .local v10, "leakReportEmail":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 137
    const-string v11, "android.intent.extra.EMAIL"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v9

    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :cond_0
    return-object v2
.end method


# virtual methods
.method public dumpLeak(I)V
    .locals 16
    .param p1, "garbageCount"    # I

    move-object/from16 v1, p0

    .line 66
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "leak"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 67
    .local v2, "leakDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v3, "leak.hprof"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 70
    .local v3, "hprofFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v4, "leak.dump"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 73
    .local v4, "dumpFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 74
    :try_start_1
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .local v0, "w":Ljava/io/PrintWriter;
    const-string v7, "Build: "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "ro.build.description"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 77
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 78
    iget-object v7, v1, Lcom/android/systemui/util/leak/LeakReporter;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v10}, Lcom/android/systemui/util/leak/LeakDetector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v0    # "w":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 82
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    iget-object v0, v1, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 84
    .local v0, "notiMan":Landroid/app/NotificationManager;
    new-instance v5, Landroid/app/NotificationChannel;

    const-string v6, "leak"

    const-string v7, "Leak Alerts"

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 86
    .local v5, "channel":Landroid/app/NotificationChannel;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 89
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v1, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 91
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "Memory Leak Detected"

    .line 92
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "SystemUI has detected %d leaked objects. Tap to send"

    new-array v6, v6, [Ljava/lang/Object;

    .line 94
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    .line 93
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x108079b

    .line 95
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v10, v1, Lcom/android/systemui/util/leak/LeakReporter;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    .line 97
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/util/leak/LeakReporter;->getIntent(Ljava/io/File;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v12

    const/high16 v13, 0x8000000

    const/4 v14, 0x0

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 96
    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 99
    .local v6, "builder":Landroid/app/Notification$Builder;
    const-string v7, "LeakReporter"

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v0, v7, v9, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .end local v0    # "notiMan":Landroid/app/NotificationManager;
    .end local v2    # "leakDir":Ljava/io/File;
    .end local v3    # "hprofFile":Ljava/io/File;
    .end local v4    # "dumpFile":Ljava/io/File;
    .end local v5    # "channel":Landroid/app/NotificationChannel;
    .end local v6    # "builder":Landroid/app/Notification$Builder;
    goto :goto_2

    .line 80
    .restart local v2    # "leakDir":Ljava/io/File;
    .restart local v3    # "hprofFile":Ljava/io/File;
    .restart local v4    # "dumpFile":Ljava/io/File;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object v7, v6

    move-object v6, v0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :goto_0
    if-eqz v7, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 100
    .end local v2    # "leakDir":Ljava/io/File;
    .end local v3    # "hprofFile":Ljava/io/File;
    .end local v4    # "dumpFile":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "LeakReporter"

    const-string v3, "Couldn\'t dump heap for leak"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

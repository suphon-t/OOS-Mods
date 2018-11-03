.class public Lcom/android/systemui/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"


# instance fields
.field private mStatusBar:Lcom/android/systemui/SystemUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 76
    const-string v0, "SystemBars"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createStatusBarFromConfig()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    const v1, 0x7f1101ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    nop

    .line 60
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 63
    nop

    .line 65
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/SystemUI;

    iput-object v2, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    nop

    .line 69
    iget-object v2, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    iput-object v3, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 70
    iget-object v2, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v3, v2, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 71
    iget-object v2, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {v2}, Lcom/android/systemui/SystemUI;->start()V

    .line 73
    return-void

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 61
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 62
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 56
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    const-string v2, "No status bar component configured"

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/SystemBars;->createStatusBarFromConfig()V

    .line 43
    return-void
.end method

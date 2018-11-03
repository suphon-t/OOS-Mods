.class Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginExceptionHandler"
.end annotation


# instance fields
.field private final mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/android/systemui/plugins/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 348
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/plugins/PluginManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/plugins/PluginManagerImpl;
    .param p2, "x1"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p3, "x2"    # Lcom/android/systemui/plugins/PluginManagerImpl$1;

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private checkStack(Ljava/lang/Throwable;)Z
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 377
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 378
    :cond_0
    const/4 v1, 0x0

    .line 379
    .local v1, "disabledAny":Z
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 380
    .local v4, "element":Ljava/lang/StackTraceElement;
    iget-object v5, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-static {v5}, Lcom/android/systemui/plugins/PluginManagerImpl;->access$100(Lcom/android/systemui/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 381
    .local v6, "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/plugins/PluginInstanceManager;->checkAndDisable(Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 382
    .end local v6    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    goto :goto_1

    .line 379
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;)Z

    move-result v0

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 354
    const-string v0, "plugin.debugging"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 356
    return-void

    .line 359
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;)Z

    move-result v0

    .line 360
    .local v0, "disabledAny":Z
    if-nez v0, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginManagerImpl;->access$100(Lcom/android/systemui/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 365
    .local v2, "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v2}, Lcom/android/systemui/plugins/PluginInstanceManager;->disableAll()Z

    move-result v3

    or-int/2addr v0, v3

    .line 366
    .end local v2    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    goto :goto_0

    .line 368
    :cond_1
    if-eqz v0, :cond_2

    .line 369
    new-instance v1, Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;-><init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Throwable;)V

    move-object p2, v1

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 374
    return-void
.end method

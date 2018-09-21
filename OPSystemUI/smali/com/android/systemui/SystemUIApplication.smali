.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SystemUIApplication;

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SystemUIApplication;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SystemUIApplication;

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SystemUIApplication;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method private startServicesIfNeeded([Ljava/lang/String;)V
    .locals 11
    .param p1, "services"    # [Ljava/lang/String;

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 159
    const-string v0, "1"

    const-string v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    .line 161
    sget-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SystemUIService"

    const-string v2, "BOOT_COMPLETED was already sent"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    const-string v0, "SystemUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting SystemUI services for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v2, "SystemUIBootTiming"

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 169
    .local v0, "log":Landroid/util/TimingsTraceLog;
    const-string v2, "StartServices"

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Lcom/android/systemui/util/MdmLogger;->init(Landroid/content/Context;)V

    .line 175
    array-length v2, p1

    .line 176
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 177
    aget-object v4, p1, v3

    .line 178
    .local v4, "clsName":Ljava/lang/String;
    sget-boolean v5, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "SystemUIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartServices"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 183
    .local v5, "ti":J
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 184
    .local v7, "cls":Ljava/lang/Class;
    iget-object v8, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/SystemUI;

    aput-object v9, v8, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    nop

    .line 190
    nop

    .line 193
    iget-object v8, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v3

    iput-object p0, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 194
    iget-object v8, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v9, v8, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 195
    sget-boolean v8, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "SystemUIService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "running: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/android/systemui/SystemUI;->start()V

    .line 197
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    .line 201
    .end local v5    # "ti":J
    .local v8, "ti":J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v8, v5

    if-lez v5, :cond_4

    .line 202
    const-string v5, "SystemUIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initialization of "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " took "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v5, :cond_5

    .line 205
    iget-object v5, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 176
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v7    # "cls":Ljava/lang/Class;
    .end local v8    # "ti":J
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 189
    .restart local v4    # "clsName":Ljava/lang/String;
    .restart local v5    # "ti":J
    :catch_0
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 187
    .end local v1    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 185
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 186
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 208
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v3    # "i":I
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v5    # "ti":J
    :cond_6
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 209
    const-class v3, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/PluginManager;

    new-instance v4, Lcom/android/systemui/SystemUIApplication$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/SystemUIApplication$3;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    const-class v5, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 240
    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    .line 241
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 257
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v0, v0

    .line 247
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 69
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    const v0, 0x7f120424

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    .line 75
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "bootCompletedFilter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 80
    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "localeChangedFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .end local v0    # "bootCompletedFilter":Landroid/content/IntentFilter;
    .end local v1    # "localeChangedFilter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 115
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    .line 124
    .end local v0    # "processName":Ljava/lang/String;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void
.end method

.method startSecondaryUserServicesIfNeeded()V
    .locals 2

    .line 145
    nop

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "names":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "names":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    .line 136
    return-void
.end method

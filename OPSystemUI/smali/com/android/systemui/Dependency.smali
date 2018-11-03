.class public Lcom/android/systemui/Dependency;
.super Lcom/android/systemui/SystemUI;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Dependency$DependencyKey;,
        Lcom/android/systemui/Dependency$DependencyProvider;
    }
.end annotation


# static fields
.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 142
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 146
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 151
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 156
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "leak_report_email"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static clearDependencies()V
    .locals 1

    .line 445
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 446
    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 454
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "destroy":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/Dependency;->destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 456
    :cond_0
    return-void
.end method

.method private destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 421
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "destroy":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "dep":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 423
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 425
    :cond_0
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 467
    .local p0, "cls":Lcom/android/systemui/Dependency$DependencyKey;, "Lcom/android/systemui/Dependency$DependencyKey<TT;>;"
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 469
    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 460
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 396
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    monitor-exit p0

    return-object v0

    .line 392
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/Dependency;
    throw p1
.end method

.method public static initDependencies(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 431
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    new-instance v0, Lcom/android/systemui/Dependency;

    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    .line 433
    .local v0, "d":Lcom/android/systemui/Dependency;
    iput-object p0, v0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    .line 434
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/Dependency;->mComponents:Ljava/util/Map;

    .line 435
    invoke-virtual {v0}, Lcom/android/systemui/Dependency;->start()V

    .line 436
    return-void
.end method

.method static synthetic lambda$dump$61(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 372
    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    return v0
.end method

.method static synthetic lambda$dump$62(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "o"    # Ljava/lang/Object;

    .line 373
    move-object v0, p3

    check-cast v0, Lcom/android/systemui/Dumpable;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$63(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 379
    instance-of v0, p0, Lcom/android/systemui/ConfigurationChangedReceiver;

    return v0
.end method

.method static synthetic lambda$onConfigurationChanged$64(Landroid/content/res/Configuration;Ljava/lang/Object;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "o"    # Ljava/lang/Object;

    .line 380
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/ConfigurationChangedReceiver;

    invoke-interface {v0, p0}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic lambda$start$0()Ljava/lang/Object;
    .locals 3

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TimeTick"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method static synthetic lambda$start$1()Ljava/lang/Object;
    .locals 3

    .line 172
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiBg"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 174
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 175
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$start$10(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static synthetic lambda$start$11(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 202
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$12(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 205
    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$13(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$14(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 211
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$15(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 5

    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    sget-object v3, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 215
    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v4}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 214
    return-object v0
.end method

.method public static synthetic lambda$start$16(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$17(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 221
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$18(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 224
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$19(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 227
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$2()Ljava/lang/Object;
    .locals 2

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$start$20(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$21()Ljava/lang/Object;
    .locals 1

    .line 233
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$start$22(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$23(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$24(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 242
    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$25(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    .line 245
    new-instance v0, Lcom/android/systemui/assist/AssistManager;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$26(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$27()Ljava/lang/Object;
    .locals 1

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$start$28(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 4

    .line 254
    new-instance v0, Lcom/android/systemui/util/leak/LeakReporter;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/util/leak/LeakDetector;

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/leak/LeakDetector;

    sget-object v3, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    .line 257
    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/util/leak/LeakReporter;-><init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V

    .line 254
    return-object v0
.end method

.method public static synthetic lambda$start$29(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 5

    .line 262
    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 264
    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    const-class v3, Lcom/android/systemui/util/leak/LeakDetector;

    .line 265
    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/leak/LeakDetector;

    const-class v4, Lcom/android/systemui/util/leak/LeakReporter;

    .line 266
    invoke-virtual {p0, v4}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/leak/LeakReporter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/util/leak/GarbageMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/util/leak/LeakReporter;)V

    .line 262
    return-object v0
.end method

.method static synthetic lambda$start$3()Ljava/lang/Object;
    .locals 1

    .line 178
    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-direct {v0}, Lcom/android/systemui/ActivityStarterDelegate;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$30(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 269
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$31(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 272
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$32(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 275
    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$33(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 278
    new-instance v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$34(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 281
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$35()Ljava/lang/Object;
    .locals 1

    .line 284
    new-instance v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$start$36()Ljava/lang/Object;
    .locals 1

    .line 287
    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$37(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 290
    new-instance v0, Lcom/android/systemui/fragments/FragmentService;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fragments/FragmentService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$38(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 293
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$39()Ljava/lang/Object;
    .locals 2

    .line 296
    new-instance v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Lcom/android/systemui/plugins/PluginManager;)V

    return-object v0
.end method

.method public static synthetic lambda$start$4(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 1

    .line 180
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method public static synthetic lambda$start$40(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$start$41(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 302
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$42()Ljava/lang/Object;
    .locals 1

    .line 304
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$43(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 307
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$44(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 312
    new-instance v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$45()Ljava/lang/Object;
    .locals 1

    .line 314
    new-instance v0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-direct {v0}, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$46(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 317
    new-instance v0, Lcom/android/systemui/ForegroundServiceControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/ForegroundServiceControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$47(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 323
    new-instance v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$48(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 325
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$49(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 4

    .line 327
    new-instance v0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    const-class v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/logging/MetricsLogger;)V

    .line 327
    return-object v0
.end method

.method public static synthetic lambda$start$5(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    .line 183
    new-instance v0, Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;)V

    return-object v0
.end method

.method public static synthetic lambda$start$50(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 330
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$51()Ljava/lang/Object;
    .locals 1

    .line 332
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$start$52(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 334
    new-instance v0, Lcom/android/systemui/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/OverviewProxyService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$53()Ljava/lang/Object;
    .locals 1

    .line 336
    new-instance v0, Lcom/android/systemui/power/EnhancedEstimatesImpl;

    invoke-direct {v0}, Lcom/android/systemui/power/EnhancedEstimatesImpl;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$54(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 338
    new-instance v0, Lcom/android/systemui/statusbar/AppOpsListener;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/AppOpsListener;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$55(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/VibratorHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$start$56()Ljava/lang/Object;
    .locals 1

    .line 343
    new-instance v0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$start$57(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 349
    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$58(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 352
    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$59(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 356
    new-instance v0, Lcom/oneplus/notification/OPNotificationController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/notification/OPNotificationController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$6(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    .line 186
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v0
.end method

.method static synthetic lambda$start$60()Ljava/lang/Object;
    .locals 1

    .line 359
    const-string v0, "statusbar"

    .line 360
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$start$7(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 3

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$start$8(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 2

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$start$9(Lcom/android/systemui/Dependency;)Ljava/lang/Object;
    .locals 4

    .line 195
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    const-class v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 195
    return-object v0
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 403
    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$DependencyProvider;

    .line 407
    .local v0, "provider":Lcom/android/systemui/Dependency$DependencyProvider;, "Lcom/android/systemui/Dependency$DependencyProvider<TT;>;"
    if-eqz v0, :cond_2

    .line 411
    invoke-interface {v0}, Lcom/android/systemui/Dependency$DependencyProvider;->createDependency()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 408
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported dependency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 409
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " providers known."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 370
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 371
    const-string v0, "Dumping existing controllers:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/-$$Lambda$Dependency$wZtAwAINt8qJUysmzwIAdTRUK_8;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$wZtAwAINt8qJUysmzwIAdTRUK_8;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 373
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 369
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/Dependency;
    throw p1
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 388
    .local p1, "key":Lcom/android/systemui/Dependency$DependencyKey;, "Lcom/android/systemui/Dependency$DependencyKey<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 384
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$2urYPUjZQ-R5R46028v0w2yHw-M;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$Dependency$-tOLuG4qBloTUaaQz-aVKUNAo6o;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$$Lambda$Dependency$-tOLuG4qBloTUaaQz-aVKUNAo6o;-><init>(Landroid/content/res/Configuration;)V

    .line 380
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 377
    .end local p1    # "newConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/Dependency;
    throw p1
.end method

.method public start()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$kBVF3uQcq1aY_iBb0icDCYhmBoA;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$kBVF3uQcq1aY_iBb0icDCYhmBoA;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$OPMs5tFKc41dcTd5aBaiMx5V8Jk;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$OPMs5tFKc41dcTd5aBaiMx5V8Jk;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$qMSnn_DLwc6UCaHtdUEsjaI9uJg;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$qMSnn_DLwc6UCaHtdUEsjaI9uJg;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$qEfhMIObaWUB4JUpS1kyRh1wvtk;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$qEfhMIObaWUB4JUpS1kyRh1wvtk;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$YD3dFPIT9OLLCV0VFjYTtnEZZWg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$YD3dFPIT9OLLCV0VFjYTtnEZZWg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/AsyncSensorManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$0H2oe1HD8YElVF7xZWH_GrR9Fus;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$0H2oe1HD8YElVF7xZWH_GrR9Fus;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Gy4QudNezotljEgQKa6AZ5wLN8g;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Gy4QudNezotljEgQKa6AZ5wLN8g;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$vhpQrWxDbweIViML-8LCC1Ml6HA;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$vhpQrWxDbweIViML-8LCC1Ml6HA;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Cqshp7K51OogqPsBzd-8WkWLscw;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Cqshp7K51OogqPsBzd-8WkWLscw;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$sXmtIDKunu8wBZvqigyneB02fuU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$sXmtIDKunu8wBZvqigyneB02fuU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$MqeklNs0Y4sjPiwGncegTIKljdU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$MqeklNs0Y4sjPiwGncegTIKljdU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$bE-oHFBo0SQuS0prD0vCrQd97eU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$bE-oHFBo0SQuS0prD0vCrQd97eU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$JOKZfAg6ZDkkuCsSsy35IBCARTA;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$JOKZfAg6ZDkkuCsSsy35IBCARTA;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$oOQ0donQppauaJPERDAkKBaeXo8;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$oOQ0donQppauaJPERDAkKBaeXo8;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$3n6-QJ1ZEPH6TMbkEd7wabHPggc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$3n6-QJ1ZEPH6TMbkEd7wabHPggc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$3ZrNl_prM_QqXnWtMCTUroZBqig;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$3ZrNl_prM_QqXnWtMCTUroZBqig;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$R9x9Mcq_hw4LFHdUOV1HoHSjDFY;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$R9x9Mcq_hw4LFHdUOV1HoHSjDFY;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$eVB3qUthhFg102GpQdjdNlDgpHI;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$eVB3qUthhFg102GpQdjdNlDgpHI;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/app/ColorDisplayController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$sN7_PX5fS0mTAWfUtAOWiOYYsEw;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$sN7_PX5fS0mTAWfUtAOWiOYYsEw;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Mc2Shc0BcQYa_D2DsNwT5hqVOkg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Mc2Shc0BcQYa_D2DsNwT5hqVOkg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$8AJ7IdA5m7Auk6hpJZHZYOfed1g;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$8AJ7IdA5m7Auk6hpJZHZYOfed1g;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$LnsjDzhCyDXdveXQDCR8F1i775w;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$LnsjDzhCyDXdveXQDCR8F1i775w;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$ZJP4QYkVPngEF6sUOIH8Lf0Fxw8;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$ZJP4QYkVPngEF6sUOIH8Lf0Fxw8;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$F2PwPFK8ZYOsuPFjafNl1Rs3pss;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$F2PwPFK8ZYOsuPFjafNl1Rs3pss;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Rf9lPinWct-b4zmu1RmuBA1cyzQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Rf9lPinWct-b4zmu1RmuBA1cyzQ;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$bjwY1_gMs7pb_0dTeSR6EhvnTDY;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$bjwY1_gMs7pb_0dTeSR6EhvnTDY;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$FS-BHneeFfLq-XLo_OH5s3NDjq4;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$FS-BHneeFfLq-XLo_OH5s3NDjq4;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    sget-object v2, Lcom/android/systemui/-$$Lambda$u_O28tKtf6m63SoPms2fLLKgf0U;->INSTANCE:Lcom/android/systemui/-$$Lambda$u_O28tKtf6m63SoPms2fLLKgf0U;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$OuWnlhRSFZb_UXefM7psZTirfzM;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$OuWnlhRSFZb_UXefM7psZTirfzM;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$TzkdpsFpcokB9wOdq8_AL394wXI;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$TzkdpsFpcokB9wOdq8_AL394wXI;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$ObCj7gbBEIdh7uotev0wUsDF-gs;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$ObCj7gbBEIdh7uotev0wUsDF-gs;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$QeSLOyPvKnxd4T4ZD6vNH_c8Vsk;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$QeSLOyPvKnxd4T4ZD6vNH_c8Vsk;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$SfpVegTBkHb9tOvXbeeDUXrzjtM;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$SfpVegTBkHb9tOvXbeeDUXrzjtM;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$fk0IwG2aHV8HxJ2AG1DMnwxab4Y;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$fk0IwG2aHV8HxJ2AG1DMnwxab4Y;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$QZywXZS1w5xNhq0ThGkucw65zmw;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$QZywXZS1w5xNhq0ThGkucw65zmw;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$u55GtmTwAT7rU__EQu5suMFE5Gk;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$u55GtmTwAT7rU__EQu5suMFE5Gk;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$QunsbUyDkSTDqQ3J4kJXl60dFCs;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$QunsbUyDkSTDqQ3J4kJXl60dFCs;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$WPtwQQqVU6m1ifaO5rX2-zG3-Ok;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$WPtwQQqVU6m1ifaO5rX2-zG3-Ok;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$uCOraqIWfgaprFSzzqWhj1-gO30;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$uCOraqIWfgaprFSzzqWhj1-gO30;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$OdqeWGmU3r9_3T8q2CUebkYRzKg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$OdqeWGmU3r9_3T8q2CUebkYRzKg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$mPl0hCzOT52s_1iFpnvMri2oLWc;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$mPl0hCzOT52s_1iFpnvMri2oLWc;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$RVNdlgnkHnvqc-7IeeJkxsAw71Y;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$RVNdlgnkHnvqc-7IeeJkxsAw71Y;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$ls_TAyxiP1x3eCUsnULK7QhAD1A;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$ls_TAyxiP1x3eCUsnULK7QhAD1A;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$3dskHwqhnk7rl6uWrynTBOpqoso;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$3dskHwqhnk7rl6uWrynTBOpqoso;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$2EP6AlwVDwhJzblZCh1s1Kry3Yc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$2EP6AlwVDwhJzblZCh1s1Kry3Yc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$SmuD-tT2siPWGoltmIITupDKFcI;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$SmuD-tT2siPWGoltmIITupDKFcI;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$2AIelcCUvrZwK3gYlXHEDjszYXo;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$2AIelcCUvrZwK3gYlXHEDjszYXo;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    sget-object v2, Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;->INSTANCE:Lcom/android/systemui/-$$Lambda$LSvgWTdQP87rDjd24R3t79hv97w;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$e-mzOcMSKyC2QbVIh_F62iw7WG8;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$e-mzOcMSKyC2QbVIh_F62iw7WG8;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/PowerUI$WarningsUI;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$8d8ig7vA4dwKAi4m3UtJ-Z6-PlY;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$8d8ig7vA4dwKAi4m3UtJ-Z6-PlY;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/IconLogger;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$tkMMgMiU67KrMuzMbk7S3dN7VvI;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$tkMMgMiU67KrMuzMbk7S3dN7VvI;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$KfI_kZ9bJpgsqW_BbIuCU08Ga50;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$KfI_kZ9bJpgsqW_BbIuCU08Ga50;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Landroid/view/IWindowManager;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$ma9m6NSa83Kw7e661HXRXoPn1ww;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$ma9m6NSa83Kw7e661HXRXoPn1ww;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/OverviewProxyService;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$dWwjsgQPtD9WRt38s5u0-qcQwdU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$dWwjsgQPtD9WRt38s5u0-qcQwdU;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/power/EnhancedEstimates;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$c-_AYP3Yoe-d_-swOc-_J6_GZFM;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$c-_AYP3Yoe-d_-swOc-_J6_GZFM;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/AppOpsListener;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$LfG73zT4wzmAr13SlabcbmGRhQg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$LfG73zT4wzmAr13SlabcbmGRhQg;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/VibratorHelper;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$dqQubzYZFTUrkMI1hNZ7vgMg-UI;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$dqQubzYZFTUrkMI1hNZ7vgMg-UI;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$XzFL4QYwc146QtX2LspAolVXtd4;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$XzFL4QYwc146QtX2LspAolVXtd4;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportSOCThreekey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$uiqsbEjYY1EaLKk0-ysx5DZs9Vc;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$uiqsbEjYY1EaLKk0-ysx5DZs9Vc;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$Ez5_LOhs5C689SzP0iDSsk9ZB2g;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$Ez5_LOhs5C689SzP0iDSsk9ZB2g;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/oneplus/notification/OPNotificationController;

    new-instance v2, Lcom/android/systemui/-$$Lambda$Dependency$fbyOzO2dIVPmFjUpYXDHwga3KFE;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$Dependency$fbyOzO2dIVPmFjUpYXDHwga3KFE;-><init>(Lcom/android/systemui/Dependency;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/statusbar/IStatusBarService;

    sget-object v2, Lcom/android/systemui/-$$Lambda$Dependency$oIkfyGksOHRHF9i4_9KrCvAJBJk;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$oIkfyGksOHRHF9i4_9KrCvAJBJk;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    .line 365
    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 366
    return-void
.end method

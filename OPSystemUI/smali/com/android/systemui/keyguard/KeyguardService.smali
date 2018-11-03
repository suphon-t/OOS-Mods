.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "KeyguardService.java"


# instance fields
.field private final mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

.field private mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardService;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardService;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    return-object v0
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 49
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 52
    nop

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 54
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 55
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    const-class v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 56
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 58
    return-void
.end method

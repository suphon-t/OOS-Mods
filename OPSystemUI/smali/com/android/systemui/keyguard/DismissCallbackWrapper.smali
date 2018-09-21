.class public Lcom/android/systemui/keyguard/DismissCallbackWrapper;
.super Ljava/lang/Object;
.source "DismissCallbackWrapper.java"


# instance fields
.field private mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 35
    return-void
.end method


# virtual methods
.method public notifyDismissCancelled()V
    .locals 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DismissCallbackWrapper"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyDismissError()V
    .locals 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DismissCallbackWrapper"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyDismissSucceeded()V
    .locals 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissSucceeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DismissCallbackWrapper"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

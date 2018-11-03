.class public Lcom/android/settingslib/suggestions/SuggestionController;
.super Ljava/lang/Object;
.source "SuggestionController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method private isReady()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getSuggestions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return-object v1

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {v0}, Landroid/service/settings/suggestions/ISuggestionService;->getSuggestions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SuggestionController"

    const-string v3, "Error when calling getSuggestion()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return-object v1

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SuggestionController"

    const-string v3, "mRemote service detached before able to query"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-object v1
.end method

.method public start()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 83
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 84
    return-void
.end method

.method public stop()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    :cond_0
    return-void
.end method

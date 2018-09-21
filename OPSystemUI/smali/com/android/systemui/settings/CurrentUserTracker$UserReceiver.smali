.class Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/CurrentUserTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserReceiver"
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mReceiverRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    .param p1, "x1"    # Ljava/util/function/Consumer;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->addTracker(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    .param p1, "x1"    # Ljava/util/function/Consumer;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->removeTracker(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private addTracker(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    .line 102
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    return-object v0
.end method

.method private notifyUserSwitched(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .line 115
    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    if-eq v0, p1, :cond_1

    .line 116
    iput p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/Consumer<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    .line 120
    .local v2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    .end local v2    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 125
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/Consumer<Ljava/lang/Integer;>;>;"
    :cond_1
    return-void
.end method

.method private removeTracker(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->notifyUserSwitched(I)V

    .line 86
    :cond_0
    return-void
.end method

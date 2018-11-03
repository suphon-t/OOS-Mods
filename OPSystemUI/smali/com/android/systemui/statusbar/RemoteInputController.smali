.class public Lcom/android/systemui/statusbar/RemoteInputController;
.super Ljava/lang/Object;
.source "RemoteInputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/RemoteInputController$Delegate;,
        Lcom/android/systemui/statusbar/RemoteInputController$Callback;
    }
.end annotation


# static fields
.field private static final ENABLE_REMOTE_INPUT:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/RemoteInputController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

.field private final mOpen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSpinning:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "debug.enable_remote_input"

    .line 41
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/RemoteInputController;->ENABLE_REMOTE_INPUT:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    .line 51
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/RemoteInputController$Delegate;->setRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    .line 181
    .local v0, "remoteInputActive":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 182
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputActive(Z)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static processForRemoteInput(Landroid/app/Notification;Landroid/content/Context;)V
    .locals 12
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    sget-boolean v0, Lcom/android/systemui/statusbar/RemoteInputController;->ENABLE_REMOTE_INPUT:Z

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-nez v0, :cond_8

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    .local v0, "viableAction":Landroid/app/Notification$Action;
    new-instance v1, Landroid/app/Notification$WearableExtender;

    invoke-direct {v1, p0}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 69
    .local v1, "we":Landroid/app/Notification$WearableExtender;
    invoke-virtual {v1}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 72
    .local v3, "numActions":I
    const/4 v4, 0x0

    move-object v5, v0

    move v0, v4

    .local v0, "i":I
    .local v5, "viableAction":Landroid/app/Notification$Action;
    :goto_0
    if-ge v0, v3, :cond_7

    .line 73
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$Action;

    .line 74
    .local v6, "action":Landroid/app/Notification$Action;
    if-nez v6, :cond_2

    .line 75
    goto :goto_3

    .line 77
    :cond_2
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    .line 78
    .local v7, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v7, :cond_3

    .line 79
    goto :goto_3

    .line 81
    :cond_3
    array-length v8, v7

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 82
    .local v10, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 83
    move-object v5, v6

    .line 84
    goto :goto_2

    .line 81
    .end local v10    # "ri":Landroid/app/RemoteInput;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 87
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 88
    goto :goto_4

    .line 72
    .end local v6    # "action":Landroid/app/Notification$Action;
    .end local v7    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    .line 93
    invoke-static {p1, p0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 94
    .local v0, "rebuilder":Landroid/app/Notification$Builder;
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/app/Notification$Action;

    aput-object v5, v6, v4

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 98
    .end local v0    # "rebuilder":Landroid/app/Notification$Builder;
    .end local v1    # "we":Landroid/app/Notification$WearableExtender;
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v3    # "numActions":I
    .end local v5    # "viableAction":Landroid/app/Notification$Action;
    :cond_8
    return-void
.end method

.method private pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "contains"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remove"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "removeToken"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "found":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 216
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 217
    .local v3, "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 218
    .local v4, "itemToken":Ljava/lang/Object;
    if-eqz p3, :cond_1

    if-ne v4, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v2

    .line 220
    .local v5, "removeTokenMatches":Z
    :goto_2
    if-eqz v3, :cond_4

    if-ne v3, p2, :cond_2

    if-eqz v5, :cond_2

    goto :goto_3

    .line 222
    :cond_2
    if-ne v3, p1, :cond_5

    .line 223
    if-eqz p3, :cond_3

    if-eq p3, v4, :cond_3

    .line 225
    iget-object v6, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 227
    :cond_3
    const/4 v0, 0x1

    .end local v3    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "itemToken":Ljava/lang/Object;
    .end local v5    # "removeTokenMatches":Z
    goto :goto_4

    .line 221
    .restart local v3    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v4    # "itemToken":Ljava/lang/Object;
    .restart local v5    # "removeTokenMatches":Z
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 215
    .end local v3    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "itemToken":Ljava/lang/Object;
    .end local v5    # "removeTokenMatches":Z
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 231
    .end local v1    # "i":I
    :cond_6
    return v0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    .line 236
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public addRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "token"    # Ljava/lang/Object;

    .line 107
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    move-result v0

    .line 112
    .local v0, "found":Z
    if-nez v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 117
    return-void
.end method

.method public addSpinning(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/Object;

    .line 142
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public closeRemoteInputs()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 256
    .local v2, "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v2    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 263
    .restart local v2    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_3

    .line 264
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->closeRemoteInput()V

    .line 261
    .end local v2    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 267
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public isRemoteInputActive()Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpinning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpinning(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockScrollTo(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/RemoteInputController$Delegate;->lockScrollTo(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 275
    return-void
.end method

.method public remoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "token"    # Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 133
    return-void
.end method

.method public removeSpinning(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    return-void
.end method

.method public requestDisallowLongPressAndDismiss()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mDelegate:Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/RemoteInputController$Delegate;->requestDisallowLongPressAndDismiss()V

    .line 271
    return-void
.end method

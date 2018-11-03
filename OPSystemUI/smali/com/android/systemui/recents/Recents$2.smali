.class Lcom/android/systemui/recents/Recents$2;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .line 151
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 154
    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {p2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/Recents;->access$002(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    .line 157
    const v0, 0x8cdc

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 159
    invoke-static {}, Lcom/android/systemui/recents/Recents;->access$100()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 157
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$400(Lcom/android/systemui/recents/Recents;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents"

    const-string v2, "Lost connection to (System) SystemUI"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$500(Lcom/android/systemui/recents/Recents;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$2;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 175
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 180
    return-void
.end method

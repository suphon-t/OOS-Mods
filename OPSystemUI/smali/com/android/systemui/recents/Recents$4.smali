.class Lcom/android/systemui/recents/Recents$4;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$event:Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .line 741
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$4;->this$0:Lcom/android/systemui/recents/Recents;

    iput-object p2, p0, Lcom/android/systemui/recents/Recents$4;->val$event:Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$4;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$000(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents$4;->val$event:Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-boolean v1, v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->updateRecentsVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents"

    const-string v2, "Callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

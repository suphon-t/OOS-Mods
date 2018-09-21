.class Lcom/android/systemui/recents/Recents$8;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .line 819
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$8;->this$0:Lcom/android/systemui/recents/Recents;

    iput-object p2, p0, Lcom/android/systemui/recents/Recents$8;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$8;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$000(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents$8;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    iget v1, v1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    iget-object v2, p0, Lcom/android/systemui/recents/Recents$8;->val$event:Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    iget-object v2, v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->sendDockingTopTaskEvent(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents"

    const-string v2, "Callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

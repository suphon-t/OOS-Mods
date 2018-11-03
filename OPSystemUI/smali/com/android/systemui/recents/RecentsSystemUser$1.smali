.class Lcom/android/systemui/recents/RecentsSystemUser$1;
.super Ljava/lang/Object;
.source "RecentsSystemUser.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsSystemUser;->registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsSystemUser;

.field final synthetic val$callback:Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsSystemUser;Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsSystemUser;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser$1;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsSystemUser$1;->val$callback:Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    iput p3, p0, Lcom/android/systemui/recents/RecentsSystemUser$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser$1;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsSystemUser;->access$000(Lcom/android/systemui/recents/RecentsSystemUser;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser$1;->this$0:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsSystemUser;->access$000(Lcom/android/systemui/recents/RecentsSystemUser;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsSystemUser$1;->val$callback:Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/recents/RecentsSystemUser$1;->val$userId:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    const v1, 0x8cdc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 68
    return-void
.end method

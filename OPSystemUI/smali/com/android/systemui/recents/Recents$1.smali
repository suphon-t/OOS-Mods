.class Lcom/android/systemui/recents/Recents$1;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 132
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$1;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$1;->this$0:Lcom/android/systemui/recents/Recents;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/Recents;->access$002(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 138
    invoke-static {}, Lcom/android/systemui/recents/Recents;->access$100()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 136
    const v1, 0x8cdc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 141
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$1;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$300(Lcom/android/systemui/recents/Recents;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/Recents$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$1$1;-><init>(Lcom/android/systemui/recents/Recents$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    return-void
.end method

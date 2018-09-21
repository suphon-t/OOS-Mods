.class Lcom/android/systemui/pip/tv/PipManager$1;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$1;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$1;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$1;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$100(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 143
    return-void
.end method

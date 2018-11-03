.class Lcom/android/systemui/recents/misc/DozeTrigger$1;
.super Ljava/lang/Object;
.source "DozeTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/DozeTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/DozeTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/DozeTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    .line 44
    iget-object v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    iget-object v0, v0, Lcom/android/systemui/recents/misc/DozeTrigger;->mOnSleepRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 45
    return-void
.end method

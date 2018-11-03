.class Lcom/android/systemui/recents/RecentsImpl$1;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImpl;

    .line 236
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$1;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$1;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    .line 240
    return-void
.end method

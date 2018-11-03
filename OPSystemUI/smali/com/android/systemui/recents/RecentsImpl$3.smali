.class Lcom/android/systemui/recents/RecentsImpl$3;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;


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

    .line 275
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$3;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 278
    if-nez p1, :cond_0

    .line 280
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 282
    :cond_0
    return-void
.end method

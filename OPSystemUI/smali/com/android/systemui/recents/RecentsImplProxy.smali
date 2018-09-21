.class public Lcom/android/systemui/recents/RecentsImplProxy;
.super Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;
.source "RecentsImplProxy.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1
    .param p1, "recentsImpl"    # Lcom/android/systemui/recents/RecentsImpl;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;-><init>()V

    .line 115
    new-instance v0, Lcom/android/systemui/recents/RecentsImplProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImplProxy$1;-><init>(Lcom/android/systemui/recents/RecentsImplProxy;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsImplProxy;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-object v0
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    .line 74
    nop

    .line 73
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 4
    .param p1, "distanceFromTop"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 4
    .param p1, "velocity"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method

.method public preloadRecents()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    return-void
.end method

.method public showCurrentUserToast(II)V
    .locals 3
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method

.method public showRecents(ZZZI)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 63
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 64
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 65
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 66
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 67
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void
.end method

.method public splitPrimaryTask(IIILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 93
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 94
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 95
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 96
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public toggleRecents(I)V
    .locals 4
    .param p1, "growTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 80
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 81
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    return-void
.end method

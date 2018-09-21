.class Lcom/android/systemui/stackdivider/WindowManagerProxy$4;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 108
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 112
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$1000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 113
    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$1100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$1200(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F

    move-result v3

    .line 112
    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->setResizeDimLayer(ZIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resize stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

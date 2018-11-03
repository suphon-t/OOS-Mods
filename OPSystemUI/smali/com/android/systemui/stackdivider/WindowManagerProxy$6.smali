.class Lcom/android/systemui/stackdivider/WindowManagerProxy$6;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field final synthetic val$resizing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 179
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->val$resizing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 183
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->val$resizing:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setSplitScreenResizing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling setDockedStackResizing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

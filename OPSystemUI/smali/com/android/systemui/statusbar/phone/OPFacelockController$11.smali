.class Lcom/android/systemui/statusbar/phone/OPFacelockController$11;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1112
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "iservice"    # Landroid/os/IBinder;

    .line 1115
    const-string v0, "OPFacelockController"

    const-string v1, "Connected to Facelock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2802(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2902(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$202(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    .line 1121
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 1125
    const-string v0, "OPFacelockController"

    const-string v1, "disconnect from Facelock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2802(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2902(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$202(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1129
    return-void
.end method

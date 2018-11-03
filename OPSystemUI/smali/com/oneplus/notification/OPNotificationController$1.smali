.class Lcom/oneplus/notification/OPNotificationController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OPNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OPNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OPNotificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 152
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .param p1, "phoneState"    # I

    .line 165
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0, p1}, Lcom/oneplus/notification/OPNotificationController;->access$202(Lcom/oneplus/notification/OPNotificationController;I)I

    .line 166
    return-void
.end method

.method public onSystemReady()V
    .locals 4

    .line 154
    const-string v0, "OPNotificationController"

    const-string v1, "onSystemReady to register OIMC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    new-instance v1, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/oneplus/notification/OPNotificationController;->access$002(Lcom/oneplus/notification/OPNotificationController;Lcom/oneplus/notification/OPNotificationController$SettingsObserver;)Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    .line 156
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$000(Lcom/oneplus/notification/OPNotificationController;)Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->observe()V

    .line 158
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    new-instance v1, Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/oneplus/notification/OPNotificationController$OimcObserver;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/oneplus/notification/OPNotificationController;->access$102(Lcom/oneplus/notification/OPNotificationController;Lcom/oneplus/notification/OPNotificationController$OimcObserver;)Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    .line 159
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$1;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$100(Lcom/oneplus/notification/OPNotificationController;)Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->observe()V

    .line 160
    return-void
.end method

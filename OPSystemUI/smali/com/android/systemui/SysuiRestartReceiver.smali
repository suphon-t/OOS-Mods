.class public Lcom/android/systemui/SysuiRestartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SysuiRestartReceiver.java"


# static fields
.field public static ACTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "com.android.systemui.action.RESTART"

    sput-object v0, Lcom/android/systemui/SysuiRestartReceiver;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 31
    sget-object v0, Lcom/android/systemui/SysuiRestartReceiver;->ACTION:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 34
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 36
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

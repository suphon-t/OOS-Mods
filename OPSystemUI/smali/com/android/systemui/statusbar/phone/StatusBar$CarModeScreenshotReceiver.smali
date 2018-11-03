.class public Lcom/android/systemui/statusbar/phone/StatusBar$CarModeScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarModeScreenshotReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4447
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeScreenshotReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4450
    const-string v0, "StatusBar"

    const-string v1, " cancel carMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeScreenshotReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;ZZ)V

    .line 4452
    return-void
.end method

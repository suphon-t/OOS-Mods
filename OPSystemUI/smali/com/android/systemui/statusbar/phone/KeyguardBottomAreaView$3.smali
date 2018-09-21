.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 567
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 570
    const-string v0, "StatusBar/KeyguardBottomAreaView"

    const-string v1, "handle launchCamera secure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v0, -0x60

    .line 581
    .local v0, "result":I
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 582
    .local v1, "o":Landroid/app/ActivityOptions;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 583
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 586
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 587
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->val$intent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 589
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    .line 590
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 591
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 586
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 594
    goto :goto_0

    .line 592
    :catch_0
    move-exception v2

    .line 593
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "StatusBar/KeyguardBottomAreaView"

    const-string v4, "Unable to start camera activity"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$800(I)Z

    move-result v2

    .line 596
    .local v2, "launched":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;Z)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    .line 602
    return-void
.end method

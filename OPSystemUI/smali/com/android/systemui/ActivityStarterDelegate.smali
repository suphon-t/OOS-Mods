.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field private mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 64
    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .line 56
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 58
    return-void
.end method

.method public setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0
    .param p1, "starter"    # Lcom/android/systemui/plugins/ActivityStarter;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 74
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .line 38
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 40
    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z
    .param p3, "callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 52
    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .line 44
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    .line 46
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 34
    return-void
.end method

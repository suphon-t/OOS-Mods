.class public Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;
.super Ljava/lang/Object;
.source "KeyguardDismissUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;


# instance fields
.field private volatile mDismissHandler:Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeWhenUnlocked(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 3
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->mDismissHandler:Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;

    .line 45
    .local v0, "dismissHandler":Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;
    if-nez v0, :cond_0

    .line 46
    const-string v1, "KeyguardDismissUtil"

    const-string v2, "KeyguardDismissHandler not set."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;->executeWhenUnlocked(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 51
    return-void
.end method

.method public setDismissHandler(Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;)V
    .locals 0
    .param p1, "dismissHandler"    # Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->mDismissHandler:Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;

    .line 35
    return-void
.end method

.class Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissReceiver"
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mDialog:Landroid/app/Dialog;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 117
    sget-object v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 124
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    .line 126
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    .line 145
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    return-void
.end method

.method register()V
    .locals 7

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 130
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    .line 132
    return-void
.end method

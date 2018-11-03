.class Lcom/android/systemui/keyguard/WorkLockActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WorkLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/WorkLockActivity;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v0

    .line 126
    .local v0, "targetUserId":I
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "userId":I
    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-static {v2}, Lcom/android/systemui/keyguard/WorkLockActivity;->access$000(Lcom/android/systemui/keyguard/WorkLockActivity;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivity$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/WorkLockActivity;->finish()V

    .line 130
    :cond_0
    return-void
.end method

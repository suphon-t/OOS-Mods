.class Lcom/android/keyguard/KeyguardAbsKeyInputView$2;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 205
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public onChecked(ZI)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .line 223
    const-string v0, "KeyguardAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChecked, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-string v1, "lock_unlock_success"

    const-string v2, "pass"

    const-string v3, "1"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-string v1, "lock_unlock_failed"

    const-string v2, "pass"

    const-string v3, "1"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 238
    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 241
    if-nez p1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->val$userId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p2, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 245
    :cond_3
    return-void
.end method

.method public onEarlyMatched()V
    .locals 4

    .line 210
    const-string v0, "KeyguardAbsKeyInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEarlyMatched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->val$userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;->val$userId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 218
    return-void
.end method

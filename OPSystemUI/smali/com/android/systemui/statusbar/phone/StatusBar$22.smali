.class Lcom/android/systemui/statusbar/phone/StatusBar$22;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 6558
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 6561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_lock_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->FOOT:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    .line 6562
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 6563
    .local v0, "keylock":Z
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keylock ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6564
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 6565
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 6566
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6567
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 6570
    :cond_1
    return-void
.end method

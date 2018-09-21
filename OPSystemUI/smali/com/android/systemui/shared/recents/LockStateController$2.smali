.class Lcom/android/systemui/shared/recents/LockStateController$2;
.super Ljava/lang/Object;
.source "LockStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/LockStateController;->writeLockedListToProvider(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/LockStateController;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/LockStateController;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/recents/LockStateController;

    .line 224
    iput-object p1, p0, Lcom/android/systemui/shared/recents/LockStateController$2;->this$0:Lcom/android/systemui/shared/recents/LockStateController;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/LockStateController$2;->val$result:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/shared/recents/LockStateController$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/android/systemui/shared/recents/LockStateController$2;->this$0:Lcom/android/systemui/shared/recents/LockStateController;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/LockStateController;->access$200(Lcom/android/systemui/shared/recents/LockStateController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    iget-object v2, p0, Lcom/android/systemui/shared/recents/LockStateController$2;->val$result:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/shared/recents/LockStateController$2;->val$userId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 228
    return-void
.end method

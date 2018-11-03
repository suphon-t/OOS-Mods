.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field final synthetic val$finalOptions:Landroid/app/ActivityOptions;

.field final synthetic val$resultCallback:Ljava/util/function/Consumer;

.field final synthetic val$resultCallbackHandler:Landroid/os/Handler;

.field final synthetic val$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 331
    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object p3, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$finalOptions:Landroid/app/ActivityOptions;

    iput-object p4, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$resultCallback:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$resultCallbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->this$0:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$finalOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 340
    :goto_0
    move v1, v0

    .line 341
    .local v1, "finalResult":Z
    iget-object v2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$resultCallback:Ljava/util/function/Consumer;

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;->val$resultCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5$1;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_0
    return-void
.end method

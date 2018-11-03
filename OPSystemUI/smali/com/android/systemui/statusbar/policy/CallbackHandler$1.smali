.class Lcom/android/systemui/statusbar/policy/CallbackHandler$1;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIn:Z

.field final synthetic val$activityOut:Z

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$enabled:Z

.field final synthetic val$isTransient:Z

.field final synthetic val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$secondaryLabel:Ljava/lang/String;

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$enabled:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityIn:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityOut:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$description:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$isTransient:Z

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$secondaryLabel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->access$000(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 149
    .local v1, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$enabled:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityIn:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityOut:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$description:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$isTransient:Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$secondaryLabel:Ljava/lang/String;

    move-object v2, v1

    invoke-interface/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 151
    .end local v1    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

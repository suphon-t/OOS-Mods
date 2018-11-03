.class Lcom/airbnb/lottie/LottieTask$2;
.super Ljava/lang/Thread;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieTask;->startTaskObserverIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private taskComplete:Z

.field final synthetic this$0:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieTask;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieTask;
    .param p2, "x0"    # Ljava/lang/String;

    .line 179
    .local p0, "this":Lcom/airbnb/lottie/LottieTask$2;, "Lcom/airbnb/lottie/LottieTask$2;"
    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask$2;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieTask$2;->taskComplete:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    .local p0, "this":Lcom/airbnb/lottie/LottieTask$2;, "Lcom/airbnb/lottie/LottieTask$2;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieTask$2;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieTask$2;->taskComplete:Z

    if-eqz v0, :cond_1

    goto :goto_2

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask$2;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieTask;->access$100(Lcom/airbnb/lottie/LottieTask;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask$2;->this$0:Lcom/airbnb/lottie/LottieTask;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask$2;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-static {v1}, Lcom/airbnb/lottie/LottieTask;->access$100(Lcom/airbnb/lottie/LottieTask;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieResult;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieTask;->access$400(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/airbnb/lottie/LottieTask$2;->this$0:Lcom/airbnb/lottie/LottieTask;

    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieTask;->access$400(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieTask$2;->taskComplete:Z

    .line 194
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask$2;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieTask;->access$500(Lcom/airbnb/lottie/LottieTask;)V

    goto :goto_0

    .line 185
    :cond_2
    :goto_2
    return-void
.end method

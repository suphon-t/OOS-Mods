.class Lcom/android/systemui/qs/QSDetail$3;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetail$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;

    .line 350
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 381
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$3$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$3$3;-><init>(Lcom/android/systemui/qs/QSDetail$3;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 3
    .param p1, "detail"    # Lcom/android/systemui/plugins/qs/DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 364
    const-string v0, "QSDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowingDetail: animatingOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->access$400(Lcom/android/systemui/qs/QSDetail;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", closingDetail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->access$500(Lcom/android/systemui/qs/QSDetail;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$400(Lcom/android/systemui/qs/QSDetail;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$500(Lcom/android/systemui/qs/QSDetail;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$3$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$3$2;-><init>(Lcom/android/systemui/qs/QSDetail$3;Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 374
    :cond_0
    const-string v0, "QSDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still animating detail, skip this operation:mAnimatingOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->access$400(Lcom/android/systemui/qs/QSDetail;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mClosingDetail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v2}, Lcom/android/systemui/qs/QSDetail;->access$500(Lcom/android/systemui/qs/QSDetail;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$3$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$3$1;-><init>(Lcom/android/systemui/qs/QSDetail$3;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

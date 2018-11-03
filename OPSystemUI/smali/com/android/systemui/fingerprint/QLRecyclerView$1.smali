.class Lcom/android/systemui/fingerprint/QLRecyclerView$1;
.super Landroid/database/ContentObserver;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 117
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$100(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ql_vib_time"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$002(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$002(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$002(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I

    .line 121
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string v0, "QuickLaunch.QLRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ql_vib_time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$1;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    return-void
.end method

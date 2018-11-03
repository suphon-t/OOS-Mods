.class Lcom/android/systemui/fingerprint/QLRecyclerView$2;
.super Ljava/lang/Object;
.source "QLRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 176
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$200(Lcom/android/systemui/fingerprint/QLRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v0

    .line 181
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$400(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    if-lez v0, :cond_1

    .line 182
    add-int/lit8 v0, v0, -0x1

    .line 183
    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$400(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 188
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$302(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I

    .line 190
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$500(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$2;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$600(Lcom/android/systemui/fingerprint/QLRecyclerView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_3
    return-void
.end method

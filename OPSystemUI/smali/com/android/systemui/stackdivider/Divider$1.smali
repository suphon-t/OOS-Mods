.class Lcom/android/systemui/stackdivider/Divider$1;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$000(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-eq v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->access$002(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->access$200(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/Divider;->access$300(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 123
    :cond_1
    return-void
.end method

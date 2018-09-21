.class Lcom/android/systemui/stackdivider/Divider$2;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$animDuration:J

.field final synthetic val$isHomeStackResizable:Z

.field final synthetic val$minimized:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;ZZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 129
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$isHomeStackResizable:Z

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    iput-wide p4, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$animDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$isHomeStackResizable:Z

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->access$302(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$200(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    if-eq v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->access$202(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 135
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$400(Lcom/android/systemui/stackdivider/Divider;)V

    .line 136
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$animDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$animDuration:J

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$isHomeStackResizable:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZJZ)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$isHomeStackResizable:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 142
    :cond_1
    :goto_0
    return-void
.end method

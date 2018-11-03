.class Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p2, "x1"    # Lcom/android/systemui/pip/tv/PipManager$1;

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    return-void
.end method

.method public static synthetic lambda$onActionsChanged$1(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$900(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 221
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onMovementBoundsChanged$0(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "normalBounds"    # Landroid/graphics/Rect;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipManager;->access$902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$KRSqnvGtvsFkEwCqcSExZLuYv1k;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$KRSqnvGtvsFkEwCqcSExZLuYv1k;-><init>(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 4
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 186
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$400(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$500(Lcom/android/systemui/pip/tv/PipManager;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 188
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v2

    neg-int v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p2}, Lcom/android/systemui/pip/tv/PipManager;->access$702(Lcom/android/systemui/pip/tv/PipManager;I)I

    goto :goto_0

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipManager;->access$700(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipManager;->access$502(Lcom/android/systemui/pip/tv/PipManager;Z)Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 200
    :cond_1
    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 0
    .param p1, "controller"    # Landroid/view/IPinnedStackController;

    .line 182
    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .locals 0
    .param p1, "isMinimized"    # Z

    .line 206
    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 2
    .param p1, "insetBounds"    # Landroid/graphics/Rect;
    .param p2, "normalBounds"    # Landroid/graphics/Rect;
    .param p3, "animatingBounds"    # Landroid/graphics/Rect;
    .param p4, "fromImeAdjustment"    # Z
    .param p5, "fromShelfAdjustment"    # Z
    .param p6, "displayRotation"    # I

    .line 212
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$_5-G38rv0jyzaZL9eAwuaWlTGU4;-><init>(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .locals 0
    .param p1, "shelfVisible"    # Z
    .param p2, "shelfHeight"    # I

    .line 203
    return-void
.end method

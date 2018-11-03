.class Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/pip/phone/PipManager;
    .param p2, "x1"    # Lcom/android/systemui/pip/phone/PipManager$1;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    return-void
.end method

.method public static synthetic lambda$onActionsChanged$5(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/content/pm/ParceledListSlice;)V
    .locals 1
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setAppActions(Landroid/content/pm/ParceledListSlice;)V

    .line 163
    return-void
.end method

.method public static synthetic lambda$onImeVisibilityChanged$1(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V
    .locals 1
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    .line 132
    return-void
.end method

.method public static synthetic lambda$onListenerRegistered$0(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/view/IPinnedStackController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/IPinnedStackController;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setPinnedStackController(Landroid/view/IPinnedStackController;)V

    .line 125
    return-void
.end method

.method public static synthetic lambda$onMinimizedStateChanged$3(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Z)V
    .locals 2
    .param p1, "isMinimized"    # Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedState(ZZ)V

    .line 146
    return-void
.end method

.method public static synthetic lambda$onMovementBoundsChanged$4(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 8
    .param p1, "insetBounds"    # Landroid/graphics/Rect;
    .param p2, "normalBounds"    # Landroid/graphics/Rect;
    .param p3, "animatingBounds"    # Landroid/graphics/Rect;
    .param p4, "fromImeAdjustment"    # Z
    .param p5, "fromShelfAdjustment"    # Z
    .param p6, "displayRotation"    # I

    .line 154
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    .line 156
    return-void
.end method

.method public static synthetic lambda$onShelfVisibilityChanged$2(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V
    .locals 1
    .param p1, "shelfVisible"    # Z
    .param p2, "shelfHeight"    # I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onShelfVisibilityChanged(ZI)V

    .line 139
    return-void
.end method


# virtual methods
.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$VBLjn70VeOT58ISp8JJdGGwiLRI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$VBLjn70VeOT58ISp8JJdGGwiLRI;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 2
    .param p1, "controller"    # Landroid/view/IPinnedStackController;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$fsM0yPTeQnwLCmc8K2TS4ZFeBWc;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/view/IPinnedStackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .locals 2
    .param p1, "isMinimized"    # Z

    .line 144
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 11
    .param p1, "insetBounds"    # Landroid/graphics/Rect;
    .param p2, "normalBounds"    # Landroid/graphics/Rect;
    .param p3, "animatingBounds"    # Landroid/graphics/Rect;
    .param p4, "fromImeAdjustment"    # Z
    .param p5, "fromShelfAdjustment"    # Z
    .param p6, "displayRotation"    # I

    .line 153
    move-object v8, p0

    iget-object v0, v8, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .locals 2
    .param p1, "shelfVisible"    # Z
    .param p2, "shelfHeight"    # I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$bf4e5rlYRO_U_i4UtAT1QucT53g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$bf4e5rlYRO_U_i4UtAT1QucT53g;-><init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

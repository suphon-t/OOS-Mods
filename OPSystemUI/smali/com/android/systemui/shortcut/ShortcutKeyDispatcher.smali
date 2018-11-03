.class public Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
.super Lcom/android/systemui/SystemUI;
.source "ShortcutKeyDispatcher.java"

# interfaces
.implements Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;


# instance fields
.field protected final ALT_MASK:J

.field protected final CTRL_MASK:J

.field protected final META_MASK:J

.field protected final SC_DOCK_LEFT:J

.field protected final SC_DOCK_RIGHT:J

.field protected final SHIFT_MASK:J

.field private mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 53
    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    .line 54
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 56
    const-wide/high16 v0, 0x1000000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->META_MASK:J

    .line 57
    const-wide v0, 0x200000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->ALT_MASK:J

    .line 58
    const-wide v0, 0x100000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->CTRL_MASK:J

    .line 59
    const-wide v0, 0x100000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SHIFT_MASK:J

    .line 61
    const-wide v0, 0x1000000000047L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_LEFT:J

    .line 62
    const-wide v0, 0x1000000000048L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_RIGHT:J

    return-void
.end method

.method private handleDockKey(J)V
    .locals 10
    .param p1, "shortcutCode"    # J

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0

    .line 94
    .local v0, "dockSide":I
    const-wide v1, 0x1000000000047L

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 96
    const-class v6, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v6}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/Recents;

    .line 97
    .local v6, "recents":Lcom/android/systemui/recents/Recents;
    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 98
    nop

    .line 99
    move v3, v4

    nop

    :cond_0
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v6, v5, v3, v1, v5}, Lcom/android/systemui/recents/Recents;->splitPrimaryTask(IILandroid/graphics/Rect;I)Z

    .line 100
    .end local v6    # "recents":Lcom/android/systemui/recents/Recents;
    goto :goto_1

    .line 102
    :cond_1
    const-class v5, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v5}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v5

    .line 103
    .local v5, "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v6

    .line 104
    .local v6, "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v7

    .line 105
    .local v7, "dividerPosition":I
    nop

    .line 106
    invoke-virtual {v6, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    .line 107
    .local v8, "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 108
    invoke-virtual {v6, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v6, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 110
    .local v1, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_0
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 111
    iget v2, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9, v4, v3}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "dockSide":I
    .end local v1    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v5    # "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    .end local v6    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v7    # "dividerPosition":I
    .end local v8    # "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_1
    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ShortcutKeyDispatcher"

    const-string v2, "handleDockKey() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method


# virtual methods
.method public onShortcutKeyPressed(J)V
    .locals 3
    .param p1, "shortcutCode"    # J

    .line 78
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 79
    .local v0, "orientation":I
    const-wide v1, 0x1000000000047L

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const-wide v1, 0x1000000000048L

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->handleDockKey(J)V

    .line 83
    :cond_1
    return-void
.end method

.method public registerShortcutKey(J)V
    .locals 2
    .param p1, "shortcutCode"    # J

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-interface {v0, p1, p2, v1}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 74
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 87
    const-wide v0, 0x1000000000047L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 88
    const-wide v0, 0x1000000000048L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 89
    return-void
.end method

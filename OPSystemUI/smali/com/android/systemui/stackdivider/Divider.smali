.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;
    }
.end annotation


# instance fields
.field private mAdjustedForIme:Z

.field private final mDividerState:Lcom/android/systemui/stackdivider/DividerState;

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mHomeStackResizable:Z

.field private mMinimized:Z

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 44
    new-instance v0, Lcom/android/systemui/stackdivider/DividerState;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p1, "x1"    # Z

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p1, "x1"    # Z

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/Divider;ZJZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 90
    .local v0, "size":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    move v1, v2

    .line 91
    .local v1, "landscape":Z
    const/4 v2, -0x1

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    .line 92
    .local v3, "width":I
    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    .line 93
    .local v2, "height":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Landroid/view/View;II)V

    .line 94
    return-void
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2
    .param p1, "exists"    # Z

    .line 147
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method private removeDivider()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->onDividerRemoved()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    .line 101
    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZZ)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    .line 110
    :cond_0
    return-void
.end method

.method private updateMinimizedDockedStack(ZJZ)V
    .locals 8
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .param p4, "isHomeStackResizable"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v7, Lcom/android/systemui/stackdivider/Divider$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZZJ)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method private updateTouchable()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    .line 157
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 113
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 173
    const-string v0, "  mVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 174
    const-string v0, "  mMinimized="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 175
    const-string v0, "  mAdjustedForIme="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 176
    return-void
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method public isHomeStackResizable()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mHomeStackResizable:Z

    return v0
.end method

.method public isMinimized()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 1
    .param p1, "drawnEvent"    # Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->onRecentsDrawn()V

    .line 169
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 66
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 68
    return-void
.end method

.method public start()V
    .locals 3

    .line 54
    new-instance v0, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 56
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/stackdivider/Divider;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    .line 58
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 59
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 60
    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 61
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

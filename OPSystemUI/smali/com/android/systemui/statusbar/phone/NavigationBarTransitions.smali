.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# instance fields
.field private final mAllowAutoDimWallpaperNotVisible:Z

.field private mAutoDim:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mNavButtons:Landroid/view/View;

.field private mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

.field private mWallpaperVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 53
    const v0, 0x7f0806ad

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 55
    const-string/jumbo v0, "statusbar"

    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$wMNbjUhGbyej8_fCHrQk9JvpMpc;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$wMNbjUhGbyej8_fCHrQk9JvpMpc;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    .line 62
    const-class v0, Landroid/view/IWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    .line 63
    .local v0, "windowManagerService":Landroid/view/IWindowManager;
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    .line 65
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$XJcD0ZRW4UO2juvu7uZcSTj_ILk;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$XJcD0ZRW4UO2juvu7uZcSTj_ILk;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "currentView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 102
    const v3, 0x7f0a0287

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private applyLightsOut(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    .line 145
    return-void
.end method

.method private applyLightsOut(ZZZ)V
    .locals 6
    .param p1, "lightsOut"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .line 148
    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 150
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 158
    .local v0, "darkBump":F
    if-eqz p1, :cond_2

    const v1, 0x3f19999a    # 0.6f

    add-float/2addr v1, v0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 160
    .local v1, "navButtonsAlpha":F
    :goto_0
    if-nez p2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 163
    :cond_3
    if-eqz p1, :cond_4

    const/16 v2, 0x1f4

    goto :goto_1

    :cond_4
    const/16 v2, 0xfa

    .line 164
    .local v2, "duration":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 165
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v2

    .line 166
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 169
    .end local v2    # "duration":I
    :goto_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "currentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 96
    const v1, 0x7f0a0287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public applyDarkIntensity(F)V
    .locals 5
    .param p1, "darkIntensity"    # F

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLightBar(Z)V

    .line 182
    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    .line 187
    .local v0, "buttonDispatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/phone/ButtonDispatcher;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 188
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDarkIntensity(F)V

    .line 187
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 190
    .end local v3    # "i":I
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eqz v3, :cond_4

    .line 191
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDarkIntensityChange(F)V

    .line 194
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 217
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->destroy()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 219
    const-class v0, Landroid/view/IWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    .line 221
    .local v0, "windowManagerService":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 225
    :goto_0
    return-void
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 109
    return-void
.end method

.method protected isLightsOut(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 128
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 140
    return-void
.end method

.method public reapplyDarkIntensity()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyDarkIntensity(F)V

    .line 173
    return-void
.end method

.method public setAutoDim(Z)V
    .locals 2
    .param p1, "autoDim"    # Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 122
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 124
    return-void
.end method

.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mDarkModeColor:Landroid/graphics/Color;

.field private mDockedLight:Z

.field private mDockedStackVisibility:I

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mForceDarkForScrim:Z

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private mHasLightNavigationBar:Z

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mLastNavigationBarMode:I

.field private mLastStatusBarMode:I

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationLight:Z

.field private mQsCustomizing:Z

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mSystemUiVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 82
    const v0, 0x7f060152

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkModeColor:Landroid/graphics/Color;

    .line 83
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 84
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method private animateChange()Z
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    return v1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    .line 196
    .local v0, "unlockMode":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method private isLight(III)Z
    .locals 4
    .param p1, "vis"    # I
    .param p2, "barMode"    # I
    .param p3, "flag"    # I

    .line 178
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 182
    .local v2, "isTransparentBar":Z
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    if-eq p3, v3, :cond_2

    .line 184
    const/4 v2, 0x1

    .line 187
    :cond_2
    and-int v3, p1, p3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    .line 188
    .local v3, "light":Z
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0
.end method

.method private reevaluate()V
    .locals 8

    .line 149
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    .line 152
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    .line 154
    return-void
.end method

.method private updateNavigation()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 235
    :cond_0
    return-void
.end method

.method private updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p2, "dockedStackBounds"    # Landroid/graphics/Rect;

    .line 201
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 205
    .local v0, "hasDockedStack":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_2

    .line 213
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    .line 214
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_2

    .line 220
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_6

    move-object v2, p1

    goto :goto_0

    :cond_6
    move-object v2, p2

    .line 221
    .local v2, "bounds":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 224
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 226
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 228
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 249
    const-string v0, "LightBarController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const-string v0, " mSystemUiVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    const-string v0, " mFullscreenStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    const-string v0, " mDockedStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    const-string v0, " mFullscreenLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 258
    const-string v0, " mDockedLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 260
    const-string v0, " mLastFullscreenBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 261
    const-string v0, " mLastDockedBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 263
    const-string v0, " mNavigationLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 264
    const-string v0, " mHasLightNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    const-string v0, " mLastStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 267
    const-string v0, " mLastNavigationBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 269
    const-string v0, " mForceDarkForScrim="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 270
    const-string v0, " mQsCustomizing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 272
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 275
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    .line 276
    .local v0, "transitionsController":Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    if-eqz v0, :cond_0

    .line 277
    const-string v1, " StatusBarTransitionsController:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v1, :cond_1

    .line 283
    const-string v1, " NavigationBarTransitionsController:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 287
    :cond_1
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 240
    return-void
.end method

.method public onCameraNotchIgnoreChanged(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->applyIconTint()V

    .line 292
    return-void
.end method

.method public onNavigationVisibilityChanged(IIZI)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "nbModeChanged"    # Z
    .param p4, "navigationBarMode"    # I

    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 129
    .local v0, "oldVis":I
    not-int v1, p2

    and-int/2addr v1, v0

    and-int v2, p1, p2

    or-int/2addr v1, v2

    .line 130
    .local v1, "newVis":I
    xor-int v2, v1, v0

    .line 131
    .local v2, "diffVis":I
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_0

    if-eqz p3, :cond_2

    .line 133
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 134
    .local v3, "last":Z
    const/16 v4, 0x10

    invoke-direct {p0, p1, p4, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 136
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 138
    const-string v4, "LightBarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNavigationVisibilityChanged mNavigationLight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq v4, v3, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 144
    .end local v3    # "last":Z
    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 145
    iput p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    .line 146
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 245
    return-void
.end method

.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 8
    .param p1, "fullscreenStackVis"    # I
    .param p2, "dockedStackVis"    # I
    .param p3, "mask"    # I
    .param p4, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p5, "dockedStackBounds"    # Landroid/graphics/Rect;
    .param p6, "sbModeChanged"    # Z
    .param p7, "statusBarMode"    # I

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 102
    .local v0, "oldFullscreen":I
    not-int v1, p3

    and-int/2addr v1, v0

    and-int v2, p1, p3

    or-int/2addr v1, v2

    .line 103
    .local v1, "newFullscreen":I
    xor-int v2, v1, v0

    .line 104
    .local v2, "diffFullscreen":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 105
    .local v3, "oldDocked":I
    not-int v4, p3

    and-int/2addr v4, v3

    and-int v5, p2, p3

    or-int/2addr v4, v5

    .line 106
    .local v4, "newDocked":I
    xor-int v5, v4, v3

    .line 107
    .local v5, "diffDocked":I
    and-int/lit16 v6, v2, 0x2000

    if-nez v6, :cond_0

    and-int/lit16 v6, v5, 0x2000

    if-nez v6, :cond_0

    if-nez p6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    :cond_0
    const/16 v6, 0x2000

    invoke-direct {p0, v1, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    .line 115
    invoke-direct {p0, v4, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    .line 116
    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 119
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 120
    iput v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 121
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    .line 122
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    return-void
.end method

.method public setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p1, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 96
    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 0
    .param p1, "navigationBar"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 91
    return-void
.end method

.method public setQsCustomizing(Z)V
    .locals 1
    .param p1, "customizing"    # Z

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 158
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 160
    return-void
.end method

.method public setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 2
    .param p1, "scrimState"    # Lcom/android/systemui/statusbar/phone/ScrimState;
    .param p2, "scrimBehindAlpha"    # F
    .param p3, "scrimInFrontColor"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 168
    .local v0, "forceDarkForScrimLast":Z
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 171
    invoke-virtual {p3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 172
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-eq v1, v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 175
    :cond_1
    return-void
.end method

.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;,
        Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
    }
.end annotation


# static fields
.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z


# instance fields
.field private mBottomOverlay:Landroid/view/View;

.field mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHasRoundedCorner:Z

.field private mOverlay:Landroid/view/View;

.field private mRotation:I

.field private mRoundedDefault:I

.field private mRoundedDefaultBottom:I

.field private mRoundedDefaultTop:I

.field private mShouldDrawaCutout:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-string v0, "debug.screenshot_rounded_corners"

    .line 86
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ScreenDecorations;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    return-void
.end method

.method private getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 434
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "ScreenDecorOverlayBottom"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 435
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 437
    :cond_1
    :goto_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 441
    :goto_1
    return-object v0
.end method

.method private hasRoundedCorners()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    return v0
.end method

.method private initRoundCornerView()V
    .locals 5

    .line 817
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    .line 820
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 821
    .local v0, "topLeft":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v3, 0x7f0a0343

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 822
    .local v2, "topRight":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 823
    .local v1, "bottomLeft":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 825
    .local v3, "bottomRight":Landroid/widget/ImageView;
    const v4, 0x5060037

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 827
    const v4, 0x5060036

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 828
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 834
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 835
    return-void
.end method

.method private isLandscape(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .line 810
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$aq1MVJyy_LkZ11q5t5cPVZOqbG0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method private setupDecorations()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    const v2, 0x7f0d01ab

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    .line 166
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v4, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v4}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    .line 172
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;)V

    .line 174
    .local v0, "cutoutBottom":Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->initRoundCornerView()V

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 193
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    .line 196
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string v3, "sysui_rounded_size"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/ScreenDecorations$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 238
    return-void
.end method

.method private setupPadding(I)V
    .locals 6
    .param p1, "padding"    # I

    .line 384
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 385
    .local v0, "sb":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 386
    .local v1, "statusBar":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 387
    const v2, 0x7f0a01cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "sysui_rounded_content_padding"

    const/4 v4, 0x2

    invoke-static {v2, v3, p1, v4}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    .line 390
    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    .line 391
    .local v2, "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    const-string v3, "CollapsedStatusBarFragment"

    new-instance v4, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    const v5, 0x7f0a03c7

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 393
    const-string v3, "QS"

    new-instance v4, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    const v5, 0x7f0a017f

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 396
    .end local v2    # "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    :cond_1
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mShouldDrawaCutout:Z

    return v0
.end method

.method private updateLayoutParams()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    return-void
.end method

.method private updateView(Landroid/view/View;II)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "rotation"    # I

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 341
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 342
    return-void
.end method

.method private updateViews()V
    .locals 12

    .line 280
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, "topLeft":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v3, 0x7f0a0343

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, "topRight":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, "bottomLeft":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 313
    .local v3, "bottomRight":Landroid/view/View;
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v5, 0x55

    const/16 v6, 0x53

    const/16 v7, 0x35

    const/16 v8, 0x33

    if-nez v4, :cond_0

    .line 314
    const/4 v4, 0x0

    invoke-direct {p0, v0, v8, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 315
    invoke-direct {p0, v2, v7, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 316
    invoke-direct {p0, v1, v6, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 317
    invoke-direct {p0, v3, v5, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    .line 318
    :cond_0
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v9, 0x1

    const/16 v10, 0x5a

    const/16 v11, 0x10e

    if-ne v4, v9, :cond_1

    .line 319
    invoke-direct {p0, v0, v6, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 320
    invoke-direct {p0, v2, v8, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 321
    invoke-direct {p0, v1, v5, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 322
    invoke-direct {p0, v3, v7, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    .line 323
    :cond_1
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_2

    .line 324
    const/16 v4, 0xb4

    invoke-direct {p0, v0, v5, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 325
    invoke-direct {p0, v2, v6, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 326
    invoke-direct {p0, v1, v7, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 327
    invoke-direct {p0, v3, v8, v4}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    goto :goto_0

    .line 328
    :cond_2
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    .line 329
    invoke-direct {p0, v0, v7, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 330
    invoke-direct {p0, v2, v5, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 331
    invoke-direct {p0, v1, v8, v10}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 332
    invoke-direct {p0, v3, v6, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    .line 336
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    .line 337
    return-void
.end method

.method private updateWindowVisibilities()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method private updateWindowVisibility(Landroid/view/View;)V
    .locals 3
    .param p1, "overlay"    # Landroid/view/View;

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0111

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 352
    .local v0, "visibleForCutout":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v2

    .line 353
    .local v2, "visibleForRoundedCorners":Z
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 354
    :cond_1
    const/16 v1, 0x8

    nop

    .line 353
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 242
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/ScreenDecorations;
    throw p1
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 400
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 410
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 413
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    .line 414
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 417
    :cond_0
    const-string v1, "ScreenDecorOverlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    .line 420
    :cond_2
    :goto_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 424
    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 425
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/ScreenDecorations;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 427
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 429
    :cond_3
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 255
    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 125
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mShouldDrawaCutout:Z

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 135
    .local v0, "padding":I
    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->setupPadding(I)V

    .line 139
    :cond_2
    new-instance v1, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 156
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 157
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 159
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 160
    return-void
.end method

.method protected updateOrientation()V
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    .line 259
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 260
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 261
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;


# static fields
.field public static MODE_COMPAT:I

.field public static MODE_FULL:I

.field public static MODE_NONFULL:I

.field private static mIsFullScreenMode:Z


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

.field private mContentPaddintTop:I

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field private mHighlightHintView:Landroid/view/View;

.field mIsFullyOpenedPanel:Z

.field private mLastOrientation:I

.field private mMinFraction:F

.field private mNotifications:Landroid/view/View;

.field private mPanelFraction:F

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBarContentLeft:Landroid/view/View;

.field private mStatusbarContent:Landroid/view/ViewGroup;

.field private mSystemIcons:Landroid/view/View;

.field private mTopActivityPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->MODE_COMPAT:I

    .line 111
    const/16 v0, 0x65

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->MODE_NONFULL:I

    .line 112
    const/16 v0, 0x66

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->MODE_FULL:I

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullScreenMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 78
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 95
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTopActivityPackage:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    return v0
.end method

.method private checkFullScreenMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "isChange":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isFullAndNotchEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 259
    .local v1, "isFullAndNotchEnabled":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullScreenMode:Z

    if-eq v1, v2, :cond_0

    .line 260
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullScreenMode:Z

    .line 261
    const/4 v0, 0x1

    .line 263
    :cond_0
    return v0
.end method

.method public static cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;
    .locals 6
    .param p0, "cutout"    # Landroid/view/DisplayCutout;
    .param p1, "display"    # Landroid/view/Display;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 546
    return-object v0

    .line 548
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 549
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 551
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 552
    .local v2, "bounds":Landroid/graphics/Rect;
    const/16 v3, 0x30

    invoke-static {p0, v3, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 554
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    if-gtz v3, :cond_1

    .line 555
    new-instance v0, Landroid/util/Pair;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 557
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    if-lt v3, v5, :cond_2

    .line 558
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 560
    :cond_2
    return-object v0
.end method

.method private getCompatMode(Landroid/app/AppOpsManager;Ljava/lang/String;I)I
    .locals 6
    .param p1, "appops"    # Landroid/app/AppOpsManager;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoreSetting()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 291
    .local v1, "isCameraNotchIgnoreSetting":Z
    :goto_0
    const/16 v3, 0x46

    :try_start_0
    invoke-virtual {p1, v3, p3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 293
    .local v3, "ops":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    sget v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->MODE_FULL:I

    if-ne v3, v5, :cond_1

    goto :goto_2

    .line 296
    :cond_1
    if-eqz v3, :cond_3

    sget v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->MODE_COMPAT:I

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 298
    :cond_2
    goto :goto_3

    .line 297
    :cond_3
    :goto_1
    nop

    .line 298
    move v2, v4

    goto :goto_3

    .line 294
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    .line 295
    :cond_5
    const/4 v2, 0x1

    .line 298
    :goto_3
    move v0, v2

    .line 299
    const-string v2, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCompatMode: mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ops:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v3    # "ops":I
    goto :goto_4

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    return v0
.end method

.method private isFullAndNotchEnabled(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x3b

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoreSetting()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 271
    .local v1, "isCameraNotchIgnoreSetting":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 272
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_2

    .line 273
    return v2

    .line 275
    :cond_2
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 276
    .local v4, "uid":I
    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mAppOps:Landroid/app/AppOpsManager;

    invoke-direct {p0, v5, p1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCompatMode(Landroid/app/AppOpsManager;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 278
    .local v0, "isFullMode":Z
    :goto_1
    const-string v5, "PhoneStatusBarView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFullAndNotchEnabled() isFullMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isCameraNotchIgnoreSetting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return v0

    .line 281
    .end local v0    # "isFullMode":Z
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 284
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2

    .line 267
    .end local v1    # "isCameraNotchIgnoreSetting":Z
    :cond_4
    :goto_2
    return v2
.end method

.method private updateCutoutLocation(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 481
    .local p1, "cornerCutoutMargins":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-nez v0, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 494
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 495
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v3, 0x30

    invoke-static {v2, v3, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 497
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 498
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 499
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 500
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 501
    return-void

    .line 487
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    return-void
.end method

.method private updateLayoutForCutout()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 473
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v0

    .line 475
    .local v0, "cornerCutoutMargins":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateCutoutLocation(Landroid/util/Pair;)V

    .line 476
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateSafeInsets(Landroid/util/Pair;)V

    .line 477
    return-void
.end method

.method private updateOrientationAndCutout(I)Z
    .locals 6
    .param p1, "newOrientation"    # I

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "changed":Z
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    .line 236
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    if-eq v1, p1, :cond_1

    .line 237
    const/4 v0, 0x1

    .line 238
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    .line 240
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContentPaddintTop:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "top":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    .line 242
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    .line 241
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 247
    .end local v1    # "top":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 252
    :cond_2
    return v0
.end method

.method private updateSafeInsets(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 507
    .local p1, "cornerCutoutMargins":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 508
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 509
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 510
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 511
    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 519
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullScreenMode:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 520
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 521
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 525
    :cond_1
    if-eqz p1, :cond_3

    .line 526
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 527
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 531
    .local v1, "insets":Landroid/view/WindowInsets;
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    .line 532
    .local v3, "leftInset":I
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    .line 533
    .local v4, "rightInset":I
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gt v5, v3, :cond_2

    .line 534
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 536
    :cond_2
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-gt v5, v4, :cond_3

    .line 537
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 541
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v3    # "leftInset":I
    .end local v4    # "rightInset":I
    :cond_3
    return-void
.end method

.method private updateScrimFraction()V
    .locals 4

    .line 454
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    .line 455
    .local v0, "scrimFraction":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 456
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    .line 460
    return-void
.end method


# virtual methods
.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 221
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestLayout()V

    .line 225
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAttachedToWindow()V

    .line 189
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 194
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public onClosingFinished()V
    .locals 1

    .line 398
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    .line 400
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 210
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateOrientationAndCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestLayout()V

    .line 217
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onDetachedFromWindow()V

    .line 201
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 204
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->removeCallback(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .line 410
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    .line 412
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 139
    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .line 140
    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 144
    const v0, 0x7f0a03e8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    .line 145
    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotifications:Landroid/view/View;

    .line 146
    const v0, 0x7f0a03ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    .line 148
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomStatusBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    .line 150
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 149
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 153
    :cond_0
    const v0, 0x7f0a03eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    .line 154
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v0

    const v2, 0x7f0a019b

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 157
    .local v0, "count":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 159
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 160
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusbarContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 157
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "highlighthint":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    .end local v0    # "highlighthint":Landroid/view/View;
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHighlightHintView:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHighlightHintView:Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContentPaddintTop:I

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mAppOps:Landroid/app/AppOpsManager;

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 183
    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 5

    .line 566
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 567
    .local v0, "controller":Lcom/android/systemui/statusbar/phone/HighlightHintController;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v1

    .line 568
    .local v1, "show":Z
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 569
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotifications:Landroid/view/View;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 571
    :cond_1
    if-eqz v1, :cond_2

    .line 572
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 575
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContentLeft:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 579
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public onPanelCollapsed()V
    .locals 2

    .line 350
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->post(Ljava/lang/Runnable;)Z

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideDismissAnimate(Z)V

    .line 358
    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 2

    .line 366
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 370
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 371
    return-void
.end method

.method public onPanelPeeked()V
    .locals 2

    .line 344
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 346
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 329
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 334
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 336
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 337
    const/4 v1, 0x1

    return v1

    .line 339
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 385
    .local v0, "barConsumedEvent":Z
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onTrackingStarted()V
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 394
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .line 404
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    .line 406
    return-void
.end method

.method public panelEnabled()Z
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 3
    .param p1, "frac"    # F
    .param p2, "expanded"    # Z

    .line 429
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 431
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showDismissAnimate(Z)V

    goto :goto_0

    .line 435
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideDismissAnimate(Z)V

    .line 440
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelFraction:F

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    .line 442
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    cmpl-float v1, p1, v2

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPanelExpandedChange(Z)V

    .line 447
    :cond_3
    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v2

    if-nez v0, :cond_5

    .line 448
    :cond_4
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/plugin/PreventModeCtrl;->onPanelExpandedChange(Z)V

    .line 451
    :cond_5
    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 1
    .param p1, "minFraction"    # F

    .line 421
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 422
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    .line 423
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    .line 425
    :cond_0
    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 130
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 134
    return-void
.end method

.method public updateResources()V
    .locals 3

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 467
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070649

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    return-void
.end method

.method public updateTopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTopActivityPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTopActivityPackage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 309
    .local v0, "isTopActivityChange":Z
    :goto_1
    if-nez v0, :cond_2

    .line 310
    return-void

    .line 312
    :cond_2
    sget-boolean v1, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneStatusBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTopPackage pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTopActivityPackage:Ljava/lang/String;

    .line 314
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->checkFullScreenMode(Ljava/lang/String;)Z

    move-result v1

    .line 315
    .local v1, "isFullScreenModeChanged":Z
    if-eqz v1, :cond_4

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateLayoutForCutout()V

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->requestLayout()V

    .line 319
    :cond_4
    return-void
.end method

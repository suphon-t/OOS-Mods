.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# instance fields
.field public dragToSplitEnabled:Z

.field public fakeShadows:Z

.field public isGridEnabled:Z

.field public final isLargeScreen:Z

.field public isLowRamDevice:Z

.field public final isXLargeScreen:Z

.field private final mAppContext:Landroid/content/Context;

.field public mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

.field public final smallestWidth:I

.field public svelteLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 89
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 90
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f05002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 93
    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 94
    const-string v2, "ro.recents.grid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    .line 95
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    .line 96
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->dragToSplitEnabled:Z

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 99
    .local v2, "screenDensity":F
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDeviceSmallestWidth()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    .line 100
    iget v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v6, 0x44160000    # 600.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    if-lt v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    .line 101
    iget v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->smallestWidth:I

    const/high16 v6, 0x44340000    # 720.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    if-lt v5, v6, :cond_1

    move v3, v4

    nop

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    .line 102
    return-void
.end method


# virtual methods
.method public getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/views/DockState;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v0, "isLandscape":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 120
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v2, :cond_2

    .line 121
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/systemui/recents/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/views/DockState;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/systemui/recents/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/views/DockState;

    :goto_1
    return-object v2

    .line 123
    :cond_2
    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/systemui/recents/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/views/DockState;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/android/systemui/recents/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/views/DockState;

    :goto_2
    return-object v2
.end method

.method public getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    return-object v0
.end method

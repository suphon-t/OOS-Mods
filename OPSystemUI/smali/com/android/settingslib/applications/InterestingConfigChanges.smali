.class public Lcom/android/settingslib/applications/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# instance fields
.field private final mFlags:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const v0, -0x7ffffcfc

    invoke-direct {p0, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 35
    iput p1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    .line 36
    return-void
.end method


# virtual methods
.method public applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 39
    iget-object v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 40
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 41
    .local v0, "configChanges":I
    iget v1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 42
    .local v1, "densityChanged":Z
    :goto_0
    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    return v3

    .line 43
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    .line 44
    return v4
.end method

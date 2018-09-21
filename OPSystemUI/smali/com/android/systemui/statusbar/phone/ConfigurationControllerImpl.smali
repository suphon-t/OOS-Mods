.class public Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;


# instance fields
.field private mDensity:I

.field private mFontScale:F

.field private mInCarMode:Z

.field private final mLastConfig:Landroid/content/res/Configuration;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field private mUiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLastConfig:Landroid/content/res/Configuration;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 46
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    .line 47
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    .line 48
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mInCarMode:Z

    .line 50
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mUiMode:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 52
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$0(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$1(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    .line 73
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$2(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onLocaleListChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$3(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onOverlayChanged()V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    .line 102
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;>;"
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 65
    .local v1, "fontScale":F
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 66
    .local v2, "density":I
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 67
    .local v3, "uiMode":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mInCarMode:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mUiMode:I

    if-eq v3, v4, :cond_1

    .line 69
    :cond_0
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$vqa1un3Hr9_5bDPhhhNK1qKD-2o;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$vqa1un3Hr9_5bDPhhhNK1qKD-2o;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    .line 75
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    .line 76
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mUiMode:I

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 80
    .local v4, "localeList":Landroid/os/LocaleList;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 82
    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$MFXzl9-SIDbbTeRwTeJK0oQCn9Q;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$MFXzl9-SIDbbTeRwTeJK0oQCn9Q;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 89
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v5

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 90
    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$SclF_d3UDXYaKsa0uhbxuxURXSI;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$SclF_d3UDXYaKsa0uhbxuxURXSI;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    :cond_3
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

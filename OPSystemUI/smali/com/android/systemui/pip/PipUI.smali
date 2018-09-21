.class public Lcom/android/systemui/pip/PipUI;
.super Lcom/android/systemui/SystemUI;
.source "PipUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private mPipManager:Lcom/android/systemui/pip/BasePipManager;

.field private mSupportsPip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    invoke-interface {v0, p2}, Lcom/android/systemui/pip/BasePipManager;->dump(Ljava/io/PrintWriter;)V

    .line 85
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 70
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/pip/BasePipManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    invoke-interface {v0}, Lcom/android/systemui/pip/BasePipManager;->showPictureInPictureMenu()V

    .line 66
    return-void
.end method

.method public start()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/pip/PipUI;->mSupportsPip:Z

    .line 45
    iget-boolean v1, p0, Lcom/android/systemui/pip/PipUI;->mSupportsPip:Z

    if-nez v1, :cond_0

    .line 46
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    .line 51
    .local v1, "processUser":I
    iget-object v2, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v2, "android.software.leanback_only"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v2

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lcom/android/systemui/pip/phone/PipManager;->getInstance()Lcom/android/systemui/pip/phone/PipManager;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    .line 58
    iget-object v2, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    iget-object v3, p0, Lcom/android/systemui/pip/PipUI;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/systemui/pip/BasePipManager;->initialize(Landroid/content/Context;)V

    .line 60
    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v2}, Lcom/android/systemui/pip/PipUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 61
    return-void

    .line 52
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Non-primary Pip component not currently supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

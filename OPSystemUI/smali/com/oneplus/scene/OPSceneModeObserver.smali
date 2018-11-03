.class public Lcom/oneplus/scene/OPSceneModeObserver;
.super Ljava/lang/Object;
.source "OPSceneModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInBrickMode:Z

.field private mSettingsObserver:Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mIsInBrickMode:Z

    .line 23
    iput-object p1, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;-><init>(Lcom/oneplus/scene/OPSceneModeObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mSettingsObserver:Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;

    .line 25
    iget-object v0, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mSettingsObserver:Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->observe()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/scene/OPSceneModeObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/scene/OPSceneModeObserver;

    .line 14
    iget-object v0, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/scene/OPSceneModeObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/scene/OPSceneModeObserver;

    .line 14
    iget-boolean v0, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mIsInBrickMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/scene/OPSceneModeObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/scene/OPSceneModeObserver;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mIsInBrickMode:Z

    return p1
.end method


# virtual methods
.method public isInBrickMode()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/oneplus/scene/OPSceneModeObserver;->mIsInBrickMode:Z

    return v0
.end method

.class public abstract Lcom/android/systemui/plugin/BaseCtrl;
.super Ljava/lang/Object;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;

.field protected mContext:Landroid/content/Context;

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/BaseCtrl;->mStarted:Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/plugin/BaseCtrl;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/plugin/BaseCtrl;->mStarted:Z

    return v0
.end method

.method public onDreamingStarted()V
    .locals 0

    .line 112
    return-void
.end method

.method public onDreamingStopped()V
    .locals 0

    .line 115
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .line 89
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .line 141
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 144
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 92
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .line 150
    return-void
.end method

.method public abstract onStartCtrl()V
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .line 86
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 83
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 126
    return-void
.end method

.method public setCallback(Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/plugin/BaseCtrl;->mCallback:Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;

    .line 45
    return-void
.end method

.method public startCtrl()V
    .locals 1

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/BaseCtrl;->mStarted:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/plugin/BaseCtrl;->onStartCtrl()V

    .line 31
    return-void
.end method

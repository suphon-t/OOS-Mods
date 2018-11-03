.class public Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
.super Ljava/lang/Object;
.source "FingerprintAnimationCtrl.java"


# static fields
.field public static TYPE_ANIMATION_TOUCH_DOWN:I

.field public static TYPE_ANIMATION_TOUCH_UP:I

.field public static TYPE_NONE:I


# instance fields
.field private final KEY_ANIMATION_RES:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAnimationState:I

.field private mContext:Landroid/content/Context;

.field private mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field private mHandler:Landroid/os/Handler;

.field private mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field mSettingsObserver:Landroid/database/ContentObserver;

.field private mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 5
    .param p1, "main"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "FingerprintAnimationCtrl"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "op_custom_unlock_animation_style"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->KEY_ANIMATION_RES:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    .line 57
    const v0, 0x7f0a02c7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 58
    const v0, 0x7f0a02c9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    .line 62
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 61
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public playAnimation(I)V
    .locals 3
    .param p1, "type"    # I

    .line 91
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAnimation: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    if-ne p1, v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-eq p1, v0, :cond_1

    .line 98
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation(I)V

    .line 103
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-ne p1, v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->playAnimation()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    goto :goto_0

    .line 106
    :cond_2
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    if-ne p1, v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->playAnimation()V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->stopDelayed()V

    .line 111
    :cond_3
    :goto_0
    return-void
.end method

.method public stopAnimation(I)V
    .locals 3
    .param p1, "nextType"    # I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnimation: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOnGoingAnimationView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->stopAnimation()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 120
    :cond_0
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 121
    return-void
.end method

.method public updateAnimationRes()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 72
    .local v0, "animValue":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateanimationRes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    const v2, 0x7f0801fc

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setAnimationRes(I)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    const v2, 0x7f0801fd

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setAnimationRes(I)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    const v2, 0x7f0801f8

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setAnimationRes(I)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    const v2, 0x7f0801f9

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setAnimationRes(I)V

    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    const v2, 0x7f0801fa

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setAnimationRes(I)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    const v2, 0x7f0801fb

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setAnimationRes(I)V

    .line 85
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateanimationRes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getAnimationDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

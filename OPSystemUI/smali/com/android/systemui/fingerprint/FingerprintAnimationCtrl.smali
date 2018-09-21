.class public Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
.super Ljava/lang/Object;
.source "FingerprintAnimationCtrl.java"


# static fields
.field public static TYPE_ANIMATION_SUCCESS:I

.field public static TYPE_ANIMATION_TOUCH_DOWN:I

.field public static TYPE_ANIMATION_TOUCH_UP:I

.field public static TYPE_NONE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAnimationState:I

.field private mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field private mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field private mSuccessAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field private mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_SUCCESS:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "main"    # Landroid/view/ViewGroup;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "FingerprintAnimationCtrl"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 27
    const v0, 0x7f0a02c3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 28
    const v0, 0x7f0a02c4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSuccessAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 29
    const v0, 0x7f0a02c5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 30
    return-void
.end method


# virtual methods
.method public getAnimationDuration(I)I
    .locals 1
    .param p1, "type"    # I

    .line 78
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getAnimationDuration()I

    move-result v0

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public playAnimation(I)V
    .locals 3
    .param p1, "type"    # I

    .line 34
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

    .line 36
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    if-ne p1, v0, :cond_0

    .line 37
    return-void

    .line 38
    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_SUCCESS:I

    if-ne v0, v1, :cond_1

    .line 39
    return-void

    .line 42
    :cond_1
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-eq p1, v0, :cond_2

    .line 43
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation()V

    .line 48
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 50
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-ne p1, v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->playAnimation()V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    goto :goto_0

    .line 53
    :cond_3
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_SUCCESS:I

    if-ne p1, v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSuccessAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->playAnimation()V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSuccessAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    goto :goto_0

    .line 56
    :cond_4
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    if-ne p1, v0, :cond_5

    .line 57
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->playAnimation()V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->stopDelayed()V

    .line 60
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 62
    :cond_5
    :goto_0
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .line 65
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnimation: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->stopAnimation()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 69
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    .line 71
    :cond_0
    return-void
.end method

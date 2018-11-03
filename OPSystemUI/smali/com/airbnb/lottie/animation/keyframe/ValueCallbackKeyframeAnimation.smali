.class public Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "ValueCallbackKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TA;>;)V"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    .local p1, "valueCallback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TA;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 14
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 15
    return-void
.end method


# virtual methods
.method getEndProgress()F
    .locals 1

    .line 22
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v5

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v6

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getProgress()F

    move-result v7

    .line 33
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    .local p1, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TK;>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyListeners()V
    .locals 1

    .line 26
    .local p0, "this":Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    if-eqz v0, :cond_0

    .line 27
    invoke-super {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 29
    :cond_0
    return-void
.end method

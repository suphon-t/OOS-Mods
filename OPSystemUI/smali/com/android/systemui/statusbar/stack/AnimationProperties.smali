.class public Lcom/android/systemui/statusbar/stack/AnimationProperties;
.super Ljava/lang/Object;
.source "AnimationProperties.java"


# instance fields
.field public delay:J

.field public duration:J

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mInterpolatorMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Property;",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 2
    .param p1, "iconAnimationProperties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 73
    iget-object v0, p1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 74
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Property;Landroid/view/animation/Interpolator;>;"
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 80
    :cond_1
    return-void
.end method

.method public getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationProperties$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/AnimationProperties$1;-><init>(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-object v0
.end method

.method public getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method public getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "property"    # Landroid/util/Property;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 105
    return-object p0
.end method

.method public setAnimationFinishListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 0
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 57
    return-object p0
.end method

.method public setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0
.end method

.method public setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 0
    .param p1, "delay"    # J

    .line 99
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .line 100
    return-object p0
.end method

.method public setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 0
    .param p1, "duration"    # J

    .line 94
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 95
    return-object p0
.end method

.method public wasAdded(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 61
    const/4 v0, 0x0

    return v0
.end method

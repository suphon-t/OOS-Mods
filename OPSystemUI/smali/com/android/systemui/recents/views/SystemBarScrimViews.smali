.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasDockedTasks:Z

.field private mHasNavBarScrim:Z

.field private mHasTransposedNavBar:Z

.field private mNavBarScrimEnterDuration:I

.field private mNavBarScrimView:Landroid/view/View;

.field private mShouldAnimateNavBarScrim:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/systemui/recents/RecentsActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f0a0276

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    .line 56
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 57
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    .line 58
    return-void
.end method

.method private animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "toY":I
    if-eqz p1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 94
    :goto_0
    sget-object v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eq p2, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 97
    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getDuration(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 98
    invoke-virtual {p2, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    :goto_1
    return-void
.end method

.method private animateScrimToCurrentNavBarState(Z)V
    .locals 2
    .param p1, "hasStackTasks"    # Z

    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v0

    .line 177
    .local v0, "hasNavBarScrim":Z
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eq v1, v0, :cond_1

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const/16 v1, 0x96

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v1

    goto :goto_0

    .line 180
    :cond_0
    sget-object v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 181
    .local v1, "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 183
    .end local v1    # "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 184
    return-void
.end method

.method private createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .locals 3
    .param p1, "duration"    # I

    .line 190
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    .line 191
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    .line 190
    return-object v0
.end method

.method private isNavBarScrimRequired(Z)Z
    .locals 1
    .param p1, "hasStackTasks"    # Z

    .line 109
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasTransposedNavBar:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareEnterRecentsAnimation(ZZ)V
    .locals 2
    .param p1, "hasNavBarScrim"    # Z
    .param p2, "animateNavBarScrim"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 77
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 79
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 149
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 152
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 153
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_0

    .line 134
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    .line 136
    .local v0, "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 138
    .end local v0    # "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .line 118
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_1

    .line 119
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    iget v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    .line 121
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 124
    .local v0, "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 126
    .end local v0    # "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .line 156
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    .line 157
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 158
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_0

    .line 142
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    .line 144
    .local v0, "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 146
    .end local v0    # "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .line 169
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 170
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .line 162
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/views/DockState;

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public updateNavBarScrim(ZZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 1
    .param p1, "animateNavBarScrim"    # Z
    .param p2, "hasStackTasks"    # Z
    .param p3, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 65
    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation(ZZ)V

    .line 66
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 69
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;
.super Ljava/lang/Object;
.source "NotificationRoundnessManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field private mAnimatedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAppearFraction:F

.field private mExpanded:Z

.field private mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mRoundingChangedCallback:Ljava/lang/Runnable;

.field private mTrackedHeadsUp:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRoundness(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)F
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "top"    # Z

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isPinned()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mExpanded:Z

    if-nez v0, :cond_1

    .line 67
    return v1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 70
    return v1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    .line 73
    return v1

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mAppearFraction:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 78
    return v1

    .line 80
    :cond_4
    return v2
.end method

.method private updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "animate"    # Z

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)F

    move-result v0

    .line 57
    .local v0, "topRoundness":F
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)F

    move-result v1

    .line 58
    .local v1, "bottomRoundness":F
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTopRoundness(FZ)Z

    move-result v2

    .line 59
    .local v2, "firstChanged":Z
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBottomRoundness(FZ)Z

    move-result v3

    .line 60
    .local v3, "secondChanged":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-ne p1, v4, :cond_2

    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 63
    :cond_2
    return-void
.end method


# virtual methods
.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 43
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 48
    return-void
.end method

.method public onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "isAnimatingAway"    # Z

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 53
    return-void
.end method

.method public setAnimatedChildren(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "animatedChildren":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    .line 119
    return-void
.end method

.method public setExpanded(FF)V
    .locals 2
    .param p1, "expandedHeight"    # F
    .param p2, "appearFraction"    # F

    .line 84
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mExpanded:Z

    .line 85
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mAppearFraction:F

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 89
    :cond_1
    return-void
.end method

.method public setFirstAndLastBackgroundChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 9
    .param p1, "first"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "last"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 94
    .local v0, "firstChanged":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eq v3, p2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 95
    .local v3, "lastChanged":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 96
    return-void

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 99
    .local v4, "oldFirst":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 100
    .local v5, "oldLast":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 101
    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 102
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_3

    .line 103
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShown()Z

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 105
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_4

    .line 106
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShown()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 108
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v6, :cond_6

    .line 109
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mFirst:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v2

    goto :goto_2

    :cond_5
    move v7, v1

    :goto_2
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 111
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v6, :cond_8

    .line 112
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mLast:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move v1, v2

    nop

    :cond_7
    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->updateRounding(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 114
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 115
    return-void
.end method

.method public setOnRoundingChangedCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "roundingChangedCallback"    # Ljava/lang/Runnable;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    .line 123
    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 127
    return-void
.end method

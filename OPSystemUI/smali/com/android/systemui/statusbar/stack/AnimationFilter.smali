.class public Lcom/android/systemui/statusbar/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "AnimationFilter.java"


# instance fields
.field animateAlpha:Z

.field animateDark:Z

.field animateDimmed:Z

.field animateHeight:Z

.field animateHideSensitive:Z

.field public animateShadowAlpha:Z

.field animateTopInset:Z

.field animateX:Z

.field animateY:Z

.field animateYViews:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field animateZ:Z

.field customDelay:J

.field hasDelays:Z

.field hasGoToFullShadeEvent:Z

.field private mAnimatedProperties:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    .line 44
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    return-void
.end method


# virtual methods
.method public animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 180
    return-object p0
.end method

.method public animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 48
    return-object p0
.end method

.method public animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 94
    return-object p0
.end method

.method public animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 89
    return-object p0
.end method

.method public animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 79
    return-object p0
.end method

.method public animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 99
    return-object p0
.end method

.method public animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 52
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 53
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 54
    return-object p0
.end method

.method public animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    .line 104
    return-object p0
.end method

.method public animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 84
    return-object p0
.end method

.method public animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    .line 59
    return-object p0
.end method

.method public animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 64
    return-object p0
.end method

.method public animateY(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 109
    return-object p0
.end method

.method public animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 74
    return-object p0
.end method

.method public applyCombination(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 124
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 125
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 126
    .local v2, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 127
    iget v3, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 129
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 131
    :cond_0
    iget v3, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 133
    const-wide/16 v3, 0x78

    iput-wide v3, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->customDelay:J

    goto :goto_1

    .line 134
    :cond_1
    iget v3, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 138
    const-wide/16 v3, 0xf0

    iput-wide v3, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->customDelay:J

    .line 124
    .end local v2    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    .line 158
    return-void
.end method

.method public hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 69
    return-object p0
.end method

.method public reset()V
    .locals 2

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v1}, Landroid/support/v4/util/ArraySet;->clear()V

    .line 165
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->customDelay:J

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    .line 176
    return-void
.end method

.method public shouldAnimateProperty(Landroid/util/Property;)Z
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldAnimateY(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

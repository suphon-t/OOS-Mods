.class public Landroid/support/design/animation/MotionSpec;
.super Ljava/lang/Object;
.source "MotionSpec.java"


# instance fields
.field private final timings:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/design/animation/MotionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method private static addTimingFromAnimator(Landroid/support/design/animation/MotionSpec;Landroid/animation/Animator;)V
    .locals 3
    .param p0, "spec"    # Landroid/support/design/animation/MotionSpec;
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 149
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 150
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 151
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/support/design/animation/MotionTiming;->createFromAnimator(Landroid/animation/ValueAnimator;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/design/animation/MotionSpec;->setTiming(Ljava/lang/String;Landroid/support/design/animation/MotionTiming;)V

    .line 152
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    nop

    .line 155
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animator must be an ObjectAnimator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 112
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, v0}, Landroid/support/design/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v1

    return-object v1

    .line 116
    .end local v0    # "resourceId":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Landroid/support/design/animation/MotionSpec;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 123
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 124
    .local v1, "animator":Landroid/animation/Animator;
    instance-of v2, v1, Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v1

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 126
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Landroid/support/design/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Landroid/support/design/animation/MotionSpec;

    move-result-object v3

    return-object v3

    .line 127
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    if-eqz v1, :cond_1

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v2}, Landroid/support/design/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Landroid/support/design/animation/MotionSpec;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 132
    .end local v2    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_1
    return-object v0

    .line 134
    .end local v1    # "animator":Landroid/animation/Animator;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MotionSpec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return-object v0
.end method

.method private static createSpecFromAnimators(Ljava/util/List;)Landroid/support/design/animation/MotionSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/support/design/animation/MotionSpec;"
        }
    .end annotation

    .line 141
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v0, Landroid/support/design/animation/MotionSpec;

    invoke-direct {v0}, Landroid/support/design/animation/MotionSpec;-><init>()V

    .line 142
    .local v0, "spec":Landroid/support/design/animation/MotionSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 143
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v0, v3}, Landroid/support/design/animation/MotionSpec;->addTimingFromAnimator(Landroid/support/design/animation/MotionSpec;Landroid/animation/Animator;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 159
    if-ne p0, p1, :cond_0

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/support/design/animation/MotionSpec;

    .line 168
    .local v0, "that":Landroid/support/design/animation/MotionSpec;
    iget-object v1, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v2, v0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 163
    .end local v0    # "that":Landroid/support/design/animation/MotionSpec;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p1}, Landroid/support/design/animation/MotionSpec;->hasTiming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/animation/MotionTiming;

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getTotalDuration()J
    .locals 9

    .line 95
    const-wide/16 v0, 0x0

    .line 96
    .local v0, "duration":J
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 97
    iget-object v4, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/animation/MotionTiming;

    .line 98
    .local v4, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 96
    .end local v4    # "timing":Landroid/support/design/animation/MotionTiming;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_0
    return-wide v0
.end method

.method public hasTiming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public setTiming(Ljava/lang/String;Landroid/support/design/animation/MotionTiming;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timing"    # Landroid/support/design/animation/MotionTiming;

    .line 87
    iget-object v0, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "out":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, " timings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Landroid/support/design/animation/MotionSpec;->timings:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

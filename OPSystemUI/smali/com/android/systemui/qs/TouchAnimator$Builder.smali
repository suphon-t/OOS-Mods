.class public Lcom/android/systemui/qs/TouchAnimator$Builder;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEndDelay:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mStartDelay:F

.field private mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    return-void
.end method

.method private add(Ljava/lang/Object;Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "keyframeSet"    # Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method private static getProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Landroid/util/Property;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/util/Property;"
        }
    .end annotation

    .line 147
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "scaleY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const-string v1, "scaleX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "translationZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "translationY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "translationX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 166
    :pswitch_0
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-object v0

    .line 164
    :pswitch_1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    return-object v0

    .line 162
    :pswitch_2
    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    return-object v0

    .line 160
    :pswitch_3
    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    return-object v0

    .line 158
    :pswitch_4
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    return-object v0

    .line 156
    :pswitch_5
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    return-object v0

    .line 154
    :pswitch_6
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    return-object v0

    .line 152
    :pswitch_7
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    return-object v0

    .line 150
    :pswitch_8
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    return-object v0

    .line 169
    :cond_1
    :goto_1
    instance-of v0, p0, Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    const-string v0, "position"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lcom/android/systemui/qs/TouchAnimator;->access$100()Landroid/util/FloatProperty;

    move-result-object v0

    return-object v0

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x490b9c39 -> :sswitch_8
        -0x490b9c38 -> :sswitch_7
        -0x490b9c37 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        0x78 -> :sswitch_2
        0x79 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "values"    # [F

    .line 132
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->getProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Landroid/util/Property;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->ofFloat(Landroid/util/Property;[F)Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->add(Ljava/lang/Object;Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;)V

    .line 133
    return-object p0
.end method

.method public build()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9

    .line 196
    new-instance v8, Lcom/android/systemui/qs/TouchAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    .line 197
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    iget v3, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    iget v4, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v5, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v6, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/TouchAnimator;-><init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;Lcom/android/systemui/qs/TouchAnimator$1;)V

    .line 196
    return-object v8
.end method

.method public setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;
    .locals 0
    .param p1, "endDelay"    # F

    .line 181
    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 182
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;
    .locals 0
    .param p1, "intepolator"    # Landroid/view/animation/Interpolator;

    .line 186
    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    return-object p0
.end method

.method public setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 191
    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 192
    return-object p0
.end method

.method public setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;
    .locals 0
    .param p1, "startDelay"    # F

    .line 176
    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 177
    return-object p0
.end method

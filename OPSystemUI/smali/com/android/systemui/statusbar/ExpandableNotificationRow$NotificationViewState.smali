.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationViewState"
.end annotation


# instance fields
.field private final mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 2918
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    .line 2919
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 2920
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    .line 2913
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    return-void
.end method

.method private handleFixedTranslationZ(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2936
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->zTranslation:F

    .line 2938
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->clipTopAmount:I

    .line 2940
    :cond_0
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 2955
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 2956
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2957
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2958
    return-void

    .line 2960
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2961
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 2962
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 2964
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2924
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 2925
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2926
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2927
    return-void

    .line 2929
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2930
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 2931
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 2933
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2944
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    .line 2945
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 2946
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2947
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2948
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 2951
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

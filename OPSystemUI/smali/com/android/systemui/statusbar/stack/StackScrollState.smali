.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# instance fields
.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/ExpandableViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    .line 44
    return-void
.end method

.method private resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 72
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableView;->createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->gone:Z

    .line 79
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 80
    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 81
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 82
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->xTranslation:F

    .line 83
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleX:F

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleY()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleY:F

    .line 86
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 87
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 88
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 104
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 106
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 107
    .local v3, "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v3, :cond_0

    .line 108
    const-string v4, "StackScrollStateNoSuchChild"

    const-string v5, "No child state was found when applying this state to the hostView"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    goto :goto_1

    .line 112
    :cond_0
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->gone:Z

    if-eqz v4, :cond_1

    .line 113
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 104
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "requestedView"    # Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    return-object v0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public resetViewStates()V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 52
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 54
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 57
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 58
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 59
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    nop

    .line 60
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 61
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 63
    .local v6, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 64
    .end local v6    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_1

    .line 52
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

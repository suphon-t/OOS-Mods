.class final Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransitionHelper"
.end annotation


# instance fields
.field private mPendingUpdateWidgets:Z

.field private mTransitioning:Z

.field private final mTransitioningViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p2, "x1"    # Lcom/android/systemui/volume/ZenModePanel$1;

    .line 1013
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method private updateTransitioning()V
    .locals 4

    .line 1064
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v0

    .line 1065
    .local v0, "transitioning":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 1066
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    .line 1067
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransitionHelper mTransitioning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioning:Z

    if-nez v1, :cond_3

    .line 1069
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    if-eqz v1, :cond_2

    .line 1070
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1072
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    .line 1075
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    .line 1022
    return-void
.end method

.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1050
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->updateTransitioning()V

    .line 1051
    return-void
.end method

.method public isTransitioning()Z
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public pendingUpdateWidgets()V
    .locals 1

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    .line 1033
    return-void
.end method

.method public run()V
    .locals 3

    .line 1055
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionHelper run mPendingUpdateWidgets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$1600(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 1060
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mPendingUpdateWidgets:Z

    .line 1061
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->mTransitioningViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1043
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->updateTransitioning()V

    .line 1044
    return-void
.end method

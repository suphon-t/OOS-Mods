.class public Lcom/android/systemui/util/OPUtils$DisableStateTracker;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/OPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableStateTracker"
.end annotation


# instance fields
.field private mDisabled:Z

.field private final mMask1:I

.field private final mMask2:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "disableMask"    # I
    .param p2, "disable2Mask"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mMask1:I

    .line 102
    iput p2, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mMask2:I

    .line 103
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 3
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 125
    iget v0, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mMask1:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mMask2:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 126
    .local v0, "disabled":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mDisabled:Z

    if-ne v0, v2, :cond_2

    return-void

    .line 127
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mDisabled:Z

    .line 128
    iget-object v2, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    nop

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mView:Landroid/view/View;

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 109
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 110
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 115
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->mView:Landroid/view/View;

    .line 117
    return-void
.end method

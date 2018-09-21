.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusIconState"
.end annotation


# instance fields
.field public justAdded:Z

.field public visibleState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 349
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v0, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 353
    .local v0, "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    const/4 v1, 0x0

    .line 354
    .local v1, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v2, 0x0

    .line 356
    .local v2, "animate":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    if-eqz v3, :cond_1

    .line 357
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 358
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$000()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    .line 359
    const/4 v2, 0x1

    goto :goto_0

    .line 360
    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-eq v3, v4, :cond_2

    .line 361
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$100()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    .line 362
    const/4 v2, 0x1

    .line 365
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 366
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 367
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    goto :goto_1

    .line 369
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    .line 370
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 373
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 374
    return-void
.end method

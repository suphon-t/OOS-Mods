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

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 350
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 354
    .local v0, "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    const/4 v1, 0x0

    .line 355
    .local v1, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v2, 0x0

    .line 357
    .local v2, "animate":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    if-eqz v3, :cond_1

    .line 358
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 359
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$000()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    .line 360
    const/4 v2, 0x1

    .line 370
    :cond_1
    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 372
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    goto :goto_0

    .line 374
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    .line 375
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 378
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 379
    return-void
.end method

.class public abstract Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# instance fields
.field private mBackgroundColor:I

.field protected final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    .line 60
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    .line 63
    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020426

    if-ne v0, v1, :cond_5

    .line 42
    const-string v0, "bigPicture"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 44
    :cond_0
    const-string v0, "bigText"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 46
    :cond_1
    const-string v0, "media"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "bigMediaNarrow"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "messaging"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 51
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 47
    :cond_4
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 52
    :cond_5
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_6

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 55
    :cond_6
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0
.end method


# virtual methods
.method public disallowSingleClick(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1
    .param p1, "fadingView"    # I

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    :goto_0
    return v0
.end method

.method public getExtraMeasureHeight()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderTranslation()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getMinLayoutHeight()I
    .locals 1

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDimmable()Z
    .locals 1

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 70
    return-void
.end method

.method public onReinflated()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->shouldClearBackgroundOnReapply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_1
    return-void
.end method

.method protected resolveBackgroundColor()I
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    .line 146
    .local v0, "customBackgroundColor":I
    if-eqz v0, :cond_0

    .line 147
    return v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10600f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public setContentHeight(II)V
    .locals 0
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .line 157
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 0
    .param p1, "headerVisibleAmount"    # F

    .line 182
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 0
    .param p1, "isChildInGroup"    # Z

    .line 163
    return-void
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .line 154
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 160
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 1

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 1
    .param p1, "topRounded"    # Z
    .param p2, "bottomRounded"    # Z

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    .line 126
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 131
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 120
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 93
    return-void
.end method

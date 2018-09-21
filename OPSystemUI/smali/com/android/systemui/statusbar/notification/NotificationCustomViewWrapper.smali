.class public Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private mIsLegacy:Z

.field private mLegacyColor:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 35
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0602e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mLegacyColor:I

    .line 36
    return-void
.end method


# virtual methods
.method public getCustomBackgroundColor()I
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    .line 52
    .local v0, "customBackgroundColor":I
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    if-eqz v1, :cond_0

    .line 53
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mLegacyColor:I

    return v1

    .line 55
    :cond_0
    return v0
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .line 59
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    .line 61
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 40
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42
    return-void
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 1
    .param p1, "topRounded"    # Z
    .param p2, "bottomRounded"    # Z

    .line 65
    const/4 v0, 0x1

    return v0
.end method

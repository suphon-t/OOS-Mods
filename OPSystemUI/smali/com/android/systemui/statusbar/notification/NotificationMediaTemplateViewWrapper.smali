.class public Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMediaTemplateViewWrapper.java"


# instance fields
.field mActions:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 33
    return-void
.end method

.method private resolveViews()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10202fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public isDimmable()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->resolveViews()V

    .line 46
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 47
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 1
    .param p1, "topRounded"    # Z
    .param p2, "bottomRounded"    # Z

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .line 52
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 57
    :cond_0
    return-void
.end method

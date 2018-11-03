.class public Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMessagingTemplateViewWrapper.java"


# instance fields
.field private mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

.field private mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private final mMinHeightWithActions:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 44
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/MessagingLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    .line 45
    const v0, 0x7f0703b1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMinHeightWithActions:I

    .line 47
    return-void
.end method

.method private resolveViews()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 51
    return-void
.end method


# virtual methods
.method public getMinLayoutHeight()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMinHeightWithActions:I

    return v0

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getMinLayoutHeight()I

    move-result v0

    return v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->resolveViews()V

    .line 58
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 59
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLayout;->showHistoricMessages(Z)V

    .line 74
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .line 64
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 69
    :cond_0
    return-void
.end method

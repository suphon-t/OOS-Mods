.class Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "NotificationRemoteInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method

.method private findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 262
    if-nez p1, :cond_0

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewParent;

    .line 141
    :goto_0
    if-eqz p1, :cond_1

    .line 142
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 143
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 144
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0

    .line 146
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 158
    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {v3, v1, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 159
    return v4

    .line 162
    :cond_0
    const v3, 0x10203a7

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 163
    .local v3, "tag":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 164
    .local v5, "inputs":[Landroid/app/RemoteInput;
    instance-of v6, v3, [Landroid/app/RemoteInput;

    if-eqz v6, :cond_1

    .line 165
    move-object v5, v3

    check-cast v5, [Landroid/app/RemoteInput;

    .line 168
    :cond_1
    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 169
    return v6

    .line 172
    :cond_2
    const/4 v7, 0x0

    .line 174
    .local v7, "input":Landroid/app/RemoteInput;
    array-length v8, v5

    move-object v9, v7

    move v7, v6

    .end local v7    # "input":Landroid/app/RemoteInput;
    .local v9, "input":Landroid/app/RemoteInput;
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v10, v5, v7

    .line 175
    .local v10, "i":Landroid/app/RemoteInput;
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 176
    move-object v9, v10

    .line 174
    .end local v10    # "i":Landroid/app/RemoteInput;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 180
    :cond_4
    if-nez v9, :cond_5

    .line 181
    return v6

    .line 184
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 185
    .local v7, "p":Landroid/view/ViewParent;
    const/4 v8, 0x0

    move-object v10, v7

    move-object v7, v8

    .line 186
    .local v7, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .local v10, "p":Landroid/view/ViewParent;
    :goto_1
    if-eqz v10, :cond_7

    .line 187
    instance-of v11, v10, Landroid/view/View;

    if-eqz v11, :cond_6

    .line 188
    move-object v11, v10

    check-cast v11, Landroid/view/View;

    .line 189
    .local v11, "pv":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->isRootNamespace()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 190
    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v7

    .line 191
    goto :goto_2

    .line 194
    .end local v11    # "pv":Landroid/view/View;
    :cond_6
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_1

    .line 196
    :cond_7
    :goto_2
    nop

    .line 197
    .local v8, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_3
    if-eqz v10, :cond_9

    .line 198
    instance-of v11, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_8

    .line 199
    move-object v8, v10

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 200
    goto :goto_4

    .line 202
    :cond_8
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_3

    .line 205
    :cond_9
    :goto_4
    if-nez v8, :cond_a

    .line 206
    return v6

    .line 209
    :cond_a
    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 211
    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v11, v11, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldAllowLockscreenRemoteInput()Z

    move-result v11

    if-nez v11, :cond_c

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 213
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v12, v12, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 214
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {v6, v8, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 215
    return v4

    .line 217
    :cond_b
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$000(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v12, v12, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 218
    invoke-interface {v12, v11}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceLocked(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 219
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {v6, v11, v8, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 220
    return v4

    .line 224
    .end local v11    # "userId":I
    :cond_c
    if-nez v7, :cond_e

    .line 225
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v7

    .line 226
    if-nez v7, :cond_d

    .line 227
    return v6

    .line 229
    :cond_d
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->isShown()Z

    move-result v11

    if-nez v11, :cond_e

    .line 230
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {v6, v8, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 231
    return v4

    .line 235
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 236
    .local v11, "width":I
    instance-of v12, v1, Landroid/widget/TextView;

    if-eqz v12, :cond_f

    .line 238
    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    .line 239
    .local v12, "tv":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    if-eqz v13, :cond_f

    .line 240
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    float-to-int v6, v6

    .line 241
    .local v6, "innerWidth":I
    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v6, v13

    .line 242
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 245
    .end local v6    # "innerWidth":I
    .end local v12    # "tv":Landroid/widget/TextView;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    div-int/lit8 v12, v11, 0x2

    add-int/2addr v6, v12

    .line 246
    .local v6, "cx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 247
    .local v12, "cy":I
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getWidth()I

    move-result v13

    .line 248
    .local v13, "w":I
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v14

    .line 249
    .local v14, "h":I
    add-int v15, v6, v12

    sub-int v16, v14, v12

    add-int v4, v6, v16

    .line 250
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v15, v13, v6

    add-int/2addr v15, v12

    sub-int v16, v13, v6

    sub-int v17, v14, v12

    add-int v0, v16, v17

    .line 251
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 249
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 253
    .local v0, "r":I
    invoke-virtual {v7, v6, v12, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    .line 254
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 255
    invoke-virtual {v7, v5, v9}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 256
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focusAnimated()V

    .line 258
    const/4 v4, 0x1

    return v4
.end method

.method public static synthetic lambda$onClickHandler$0(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private logActionClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 118
    .local v0, "parent":Landroid/view/ViewParent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 120
    const-string v2, "NotificationRemoteInputManager"

    const-string v3, "Couldn\'t determine notification for click."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 123
    :cond_0
    const/4 v2, -0x1

    .line 125
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x1020175

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 127
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 128
    .local v3, "actionGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 130
    .end local v3    # "actionGroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 131
    .local v3, "count":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v4

    .line 132
    .local v4, "rank":I
    const/4 v5, 0x1

    invoke-static {v1, v4, v3, v5}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v5

    .line 134
    .local v5, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v6, v1, v2, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v6

    .line 138
    :goto_0
    return-void
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 153
    const/4 v0, 0x4

    invoke-super {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->wakeUpIfDozing(JLandroid/view/View;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->logActionClick(Landroid/view/View;)V

    .line 109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z

    move-result v0

    return v0
.end method

.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTintArea:Landroid/graphics/Rect;

.field private final mUpdateStatusBarIcons:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 56
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 58
    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private applyNotificationIconsTint()V
    .locals 3

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 328
    .local v1, "iv":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    goto :goto_1

    .line 331
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$hxZzEn_IxyrKECdSreC0o-qUafc;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$hxZzEn_IxyrKECdSreC0o-qUafc;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    .line 326
    .end local v1    # "iv":Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 101
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    return-object v0
.end method

.method public static synthetic lambda$applyNotificationIconsTint$2(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "iv"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 331
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method static synthetic lambda$updateNotificationIcons$0(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method static synthetic lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10501a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 108
    const v1, 0x7f07064d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 109
    return-void
.end method

.method private updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZ)V
    .locals 16
    .param p2, "hostLayout"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p3, "showAmbient"    # Z
    .param p4, "hideDismissed"    # Z
    .param p5, "hideRepliedMessages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZZ)V"
        }
    .end annotation

    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 222
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 225
    .local v8, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v9, 0x0

    move v0, v9

    .local v0, "i":I
    :goto_0
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 226
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 227
    .local v11, "view":Landroid/view/View;
    instance-of v0, v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 228
    move-object v0, v11

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 229
    .local v12, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 232
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 229
    move-object v0, v6

    move-object v1, v12

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_1

    .line 225
    :cond_0
    move-object/from16 v0, p1

    :goto_1
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "i":I
    .local v1, "i":I
    move v0, v1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_1
    move-object/from16 v0, p1

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 244
    .local v1, "replacingIcons":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v2, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v3, v9

    .local v3, "i":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 246
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 247
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_2

    .line 248
    goto :goto_6

    .line 250
    :cond_2
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 251
    const/4 v5, 0x0

    .line 252
    .local v5, "iconWasReplaced":Z
    move-object v10, v4

    check-cast v10, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 253
    .local v10, "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, "removedGroupKey":Ljava/lang/String;
    move v12, v5

    move v5, v9

    .local v5, "j":I
    .local v12, "iconWasReplaced":Z
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_5

    .line 255
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 256
    .local v13, "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 257
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 258
    if-nez v12, :cond_3

    .line 259
    const/4 v12, 0x1

    goto :goto_4

    .line 261
    :cond_3
    const/4 v12, 0x0

    .line 262
    goto :goto_5

    .line 254
    .end local v13    # "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 266
    .end local v5    # "j":I
    :cond_5
    :goto_5
    if-eqz v12, :cond_7

    .line 267
    invoke-virtual {v1, v11}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 268
    .local v5, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-nez v5, :cond_6

    .line 269
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v13

    .line 270
    invoke-virtual {v1, v11, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_6
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v5    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_7
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v11    # "removedGroupKey":Ljava/lang/String;
    .end local v12    # "iconWasReplaced":Z
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 278
    .end local v3    # "i":I
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v3, "duplicates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v10, 0x1

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 280
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 281
    .local v11, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v12, v10, :cond_a

    .line 282
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v5    # "key":Ljava/lang/String;
    .end local v11    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_a
    goto :goto_7

    .line 285
    :cond_b
    invoke-virtual {v1, v3}, Landroid/support/v4/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 286
    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    .line 288
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 289
    .local v4, "toRemoveCount":I
    move v5, v9

    .local v5, "i":I
    :goto_8
    if-ge v5, v4, :cond_c

    .line 290
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 293
    .end local v5    # "i":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    .line 294
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    move v11, v9

    .local v11, "i":I
    :goto_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 295
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 297
    .local v12, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v7, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    .line 298
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_e

    .line 299
    if-eqz p4, :cond_d

    .line 300
    iget-object v14, v6, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    invoke-virtual {v12, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 302
    :cond_d
    invoke-virtual {v7, v12, v11, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v12    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 306
    .end local v11    # "i":I
    :cond_f
    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v10

    .line 309
    .local v10, "childCount":I
    move v11, v9

    .restart local v11    # "i":I
    :goto_a
    if-ge v11, v10, :cond_11

    .line 310
    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 311
    .local v12, "actual":Landroid/view/View;
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 312
    .local v14, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v12, v14, :cond_10

    .line 313
    goto :goto_b

    .line 315
    :cond_10
    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 316
    invoke-virtual {v7, v14, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    .line 309
    .end local v12    # "actual":Landroid/view/View;
    .end local v14    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 318
    .end local v11    # "i":I
    :cond_11
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 319
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    .line 320
    return-void
.end method

.method private updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 5
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 337
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0a01aa

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    .local v0, "isPreL":Z
    const/4 v1, 0x0

    .line 342
    .local v1, "color":I
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/OPUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 345
    .local v2, "colorize":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 346
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v3, p1, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 348
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 349
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 350
    return-void
.end method


# virtual methods
.method protected getHeight()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object v0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 64
    const v0, 0x7f0d00f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    const v2, 0x7f0a029c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 79
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "iconTint"    # I

    .line 126
    if-nez p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    goto :goto_1

    .line 136
    :cond_1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 140
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const v0, -0x333334

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 146
    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 89
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    nop

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "iconDrawingRect"    # Landroid/graphics/Rect;
    .param p2, "requireStateUpdate"    # Z

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    .line 363
    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 82
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 84
    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;ZZZZ)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "showAmbient"    # Z
    .param p3, "hideDismissed"    # Z
    .param p4, "hideRepliedMessages"    # Z
    .param p5, "statusBar"    # Z

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 155
    return v1

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    return v1

    .line 160
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 161
    return v1

    .line 163
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 164
    return v1

    .line 167
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isLastMessageFromReply()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    return v1

    .line 172
    :cond_4
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressStatusBar(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    return v1

    .line 177
    :cond_5
    if-eqz p5, :cond_7

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 180
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 182
    :cond_6
    if-eqz v0, :cond_7

    const-string v2, "hide_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 183
    return v1

    .line 188
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p2, "animated"    # Z

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    .line 359
    return-void
.end method

.method public updateNotificationIcons()V
    .locals 6

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 197
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$UqZBoYLzFV9iQ2ZKXh5_vFY0A6w;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$UqZBoYLzFV9iQ2ZKXh5_vFY0A6w;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZ)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 202
    return-void
.end method

.method public updateStatusBarIcons()V
    .locals 6

    .line 205
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZ)V

    .line 207
    return-void
.end method

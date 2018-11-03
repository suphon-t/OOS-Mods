.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mColor:I

.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mMobileViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarMobileView;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusIcons:Landroid/widget/LinearLayout;

.field private mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 4
    .param p1, "statusIcons"    # Landroid/widget/LinearLayout;
    .param p2, "iconSize"    # I

    .line 61
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 63
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 66
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->isRestrictingIcons()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setShouldRestrictIcons(Z)V

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setShouldRestrictIcons(Z)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 72
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setPadding(IIII)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    .line 75
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    .local v0, "p":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method private getMultiLTEIcons([I)[I
    .locals 5
    .param p1, "lteStatus"    # [I

    .line 333
    array-length v0, p1

    new-array v0, v0, [I

    .line 334
    .local v0, "ids":[I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/OPUtils;->isSupportMultiLTEstatus(Landroid/content/Context;)Z

    move-result v1

    .line 335
    .local v1, "multiLte":Z
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportShowHD()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 337
    aget v2, p1, v3

    if-nez v2, :cond_0

    .line 338
    const v2, 0x7f0805eb

    aput v2, v0, v3

    goto :goto_0

    .line 339
    :cond_0
    if-eqz v1, :cond_1

    aget v2, p1, v3

    if-lez v2, :cond_1

    aget v2, p1, v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/SignalIcons;->HD_ICONS:[I

    array-length v4, v4

    if-gt v2, v4, :cond_1

    .line 341
    sget-object v2, Lcom/android/systemui/statusbar/policy/SignalIcons;->HD_ICONS:[I

    aget v4, p1, v3

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    aput v2, v0, v3

    goto :goto_0

    .line 343
    :cond_1
    const v2, 0x7f0805e7

    aput v2, v0, v3

    goto :goto_0

    .line 347
    :cond_2
    if-eqz v1, :cond_3

    aget v2, p1, v3

    if-lez v2, :cond_3

    aget v2, p1, v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOLTE_ICONS:[I

    array-length v4, v4

    if-gt v2, v4, :cond_3

    .line 349
    sget-object v2, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOLTE_ICONS:[I

    aget v4, p1, v3

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    aput v2, v0, v3

    goto :goto_0

    .line 351
    :cond_3
    aget v2, p1, v3

    if-lez v2, :cond_4

    .line 352
    const v2, 0x7f080831

    aput v2, v0, v3

    .line 356
    :cond_4
    :goto_0
    const/4 v2, 0x2

    if-eqz v1, :cond_5

    aget v3, p1, v2

    if-lez v3, :cond_5

    aget v3, p1, v2

    sget-object v4, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOWIFI_ICONS:[I

    array-length v4, v4

    if-gt v3, v4, :cond_5

    .line 358
    sget-object v3, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOWIFI_ICONS:[I

    aget v4, p1, v2

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    aput v3, v0, v2

    goto :goto_1

    .line 360
    :cond_5
    aget v3, p1, v2

    if-lez v3, :cond_6

    .line 361
    const v3, 0x7f080835

    aput v3, v0, v2

    .line 364
    :cond_6
    :goto_1
    return-object v0
.end method

.method private matchingMobileView(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 6
    .param p1, "otherView"    # Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 305
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 306
    return-object v1

    .line 309
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 310
    .local v0, "v":Lcom/android/systemui/statusbar/StatusBarMobileView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 311
    .local v3, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v4, v5, :cond_1

    .line 312
    return-object v3

    .line 314
    .end local v3    # "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    :cond_1
    goto :goto_0

    .line 316
    :cond_2
    return-object v1
.end method

.method private updateColors()V
    .locals 3

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 93
    .local v1, "child":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 94
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    .line 91
    .end local v1    # "child":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPkg"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    if-nez p2, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 198
    :cond_1
    const/4 v0, -0x1

    .line 199
    .local v0, "removeIndex":I
    const/4 v7, 0x0

    move v1, v7

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v2

    const/4 v8, 0x1

    if-ge v1, v2, :cond_5

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 201
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v3, :cond_2

    .line 202
    goto :goto_1

    .line 204
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 205
    .local v3, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    if-nez p3, :cond_3

    .line 207
    move v0, v1

    .line 208
    goto :goto_2

    .line 210
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    .line 211
    .local v4, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iput-boolean v8, v4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 212
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 213
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 214
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 215
    return-void

    .line 199
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v4    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "removeIndex":I
    .end local v1    # "i":I
    .local v9, "removeIndex":I
    :cond_5
    :goto_2
    move v9, v0

    if-nez p3, :cond_7

    .line 220
    const/4 v0, -0x1

    if-eq v9, v0, :cond_6

    .line 221
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    .line 223
    :cond_6
    return-void

    .line 225
    :cond_7
    new-instance v10, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Demo"

    move-object v0, v10

    move-object v1, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 226
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iput-boolean v8, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 227
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    .line 228
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 230
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 231
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 232
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v7, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-void
.end method


# virtual methods
.method public addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 236
    const-string v0, "DemoStatusIcons"

    const-string v1, "addDemoWifiView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->slot:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    .line 239
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarWifiView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    .line 241
    .local v1, "viewIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/systemui/statusbar/StatusBarMobileView;

    if-eqz v4, :cond_0

    .line 244
    move v1, v2

    .line 245
    goto :goto_1

    .line 241
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setStaticDrawableColor(I)V

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;I)V

    .line 253
    return-void
.end method

.method public addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 265
    const-string v0, "DemoStatusIcons"

    const-string v1, "addMobileView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slot:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 268
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 269
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setStaticDrawableColor(I)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;I)V

    .line 274
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto/16 :goto_9

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto/16 :goto_9

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    const-string/jumbo v0, "volume"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "volume":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 111
    const-string/jumbo v3, "vibrate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f08065b

    goto :goto_0

    .line 112
    :cond_2
    move v3, v2

    .line 113
    .local v3, "iconId":I
    :goto_0
    const-string/jumbo v4, "volume"

    invoke-direct {p0, v4, v1, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    .end local v3    # "iconId":I
    :cond_3
    const-string/jumbo v3, "zen"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "zen":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 117
    const-string v4, "important"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f080848

    goto :goto_1

    .line 118
    :cond_4
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f080849

    goto :goto_1

    .line 119
    :cond_5
    move v4, v2

    .line 120
    .local v4, "iconId":I
    :goto_1
    const-string/jumbo v5, "zen"

    invoke-direct {p0, v5, v1, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    .end local v4    # "iconId":I
    :cond_6
    const-string v4, "bluetooth"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "bt":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 124
    const-string v5, "disconnected"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7f0805a5

    goto :goto_2

    .line 125
    :cond_7
    const-string v5, "connected"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x7f0805a6

    goto :goto_2

    .line 126
    :cond_8
    move v5, v2

    .line 127
    .local v5, "iconId":I
    :goto_2
    const-string v6, "bluetooth"

    invoke-direct {p0, v6, v1, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    .end local v5    # "iconId":I
    :cond_9
    const-string v5, "location"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "location":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 131
    const-string v6, "show"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const v6, 0x7f0805ed

    goto :goto_3

    .line 132
    :cond_a
    move v6, v2

    .line 133
    .local v6, "iconId":I
    :goto_3
    const-string v7, "location"

    invoke-direct {p0, v7, v1, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    .end local v6    # "iconId":I
    :cond_b
    const-string v6, "alarm"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "alarm":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 137
    const-string v7, "show"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x7f080592

    goto :goto_4

    .line 138
    :cond_c
    move v7, v2

    .line 139
    .local v7, "iconId":I
    :goto_4
    const-string v8, "alarm_clock"

    invoke-direct {p0, v8, v1, v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    .end local v7    # "iconId":I
    :cond_d
    const-string/jumbo v7, "tty"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "tty":Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 143
    const-string v8, "show"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const v8, 0x7f080830

    goto :goto_5

    .line 144
    :cond_e
    move v8, v2

    .line 145
    .local v8, "iconId":I
    :goto_5
    const-string/jumbo v9, "tty"

    invoke-direct {p0, v9, v1, v8}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    .end local v8    # "iconId":I
    :cond_f
    const-string v8, "mute"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "mute":Ljava/lang/String;
    if-eqz v8, :cond_11

    .line 149
    const-string v9, "show"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const v9, 0x1080076

    goto :goto_6

    .line 150
    :cond_10
    move v9, v2

    .line 151
    .local v9, "iconId":I
    :goto_6
    const-string v10, "mute"

    invoke-direct {p0, v10, v1, v9}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    .end local v9    # "iconId":I
    :cond_11
    const-string v9, "speakerphone"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "speakerphone":Ljava/lang/String;
    if-eqz v9, :cond_13

    .line 155
    const-string v10, "show"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const v10, 0x1080087

    goto :goto_7

    .line 156
    :cond_12
    move v10, v2

    .line 157
    .local v10, "iconId":I
    :goto_7
    const-string v11, "speakerphone"

    invoke-direct {p0, v11, v1, v10}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    .end local v10    # "iconId":I
    :cond_13
    const-string v10, "cast"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "cast":Ljava/lang/String;
    if-eqz v10, :cond_15

    .line 161
    const-string v11, "show"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const v11, 0x7f0805a4

    goto :goto_8

    :cond_14
    move v11, v2

    .line 162
    .local v11, "iconId":I
    :goto_8
    const-string v12, "cast"

    invoke-direct {p0, v12, v1, v11}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    .end local v11    # "iconId":I
    :cond_15
    const-string v11, "hotspot"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "hotspot":Ljava/lang/String;
    if-eqz v11, :cond_17

    .line 166
    const-string v12, "show"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    const v2, 0x7f0805ec

    nop

    .line 167
    .local v2, "iconId":I
    :cond_16
    const-string v12, "hotspot"

    invoke-direct {p0, v12, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    .end local v0    # "volume":Ljava/lang/String;
    .end local v2    # "iconId":I
    .end local v3    # "zen":Ljava/lang/String;
    .end local v4    # "bt":Ljava/lang/String;
    .end local v5    # "location":Ljava/lang/String;
    .end local v6    # "alarm":Ljava/lang/String;
    .end local v7    # "tty":Ljava/lang/String;
    .end local v8    # "mute":Ljava/lang/String;
    .end local v9    # "speakerphone":Ljava/lang/String;
    .end local v10    # "cast":Ljava/lang/String;
    .end local v11    # "hotspot":Ljava/lang/String;
    :cond_17
    goto :goto_9

    .line 171
    :cond_18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "voice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 173
    const-string/jumbo v0, "volte"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "voltestate":Ljava/lang/String;
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 175
    .local v3, "ltestatus":[I
    if-eqz v0, :cond_19

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 177
    .local v4, "state":I
    aput v4, v3, v2

    .line 179
    .end local v4    # "state":I
    :cond_19
    const-string/jumbo v4, "vowifi"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "vowifistate":Ljava/lang/String;
    const/4 v5, 0x2

    if-eqz v4, :cond_1a

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 182
    .local v6, "state":I
    aput v6, v3, v5

    .line 184
    .end local v6    # "state":I
    :cond_1a
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getMultiLTEIcons([I)[I

    move-result-object v6

    .line 185
    .local v6, "iconIds":[I
    const-string/jumbo v7, "volte"

    aget v2, v6, v2

    invoke-direct {p0, v7, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    const-string/jumbo v2, "vowifi"

    aget v5, v6, v5

    invoke-direct {p0, v2, v1, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    .end local v0    # "voltestate":Ljava/lang/String;
    .end local v3    # "ltestatus":[I
    .end local v4    # "vowifistate":Ljava/lang/String;
    .end local v6    # "iconIds":[I
    :cond_1b
    :goto_9
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(I)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 327
    .local v1, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 328
    .end local v1    # "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    goto :goto_0

    .line 329
    :cond_1
    return-void
.end method

.method public onRemoveIcon(Lcom/android/systemui/statusbar/StatusIconDisplayable;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 292
    invoke-interface {p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeView(Landroid/view/View;)V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->matchingMobileView(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 297
    .local v0, "mobileView":Lcom/android/systemui/statusbar/StatusBarMobileView;
    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeView(Landroid/view/View;)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    .end local v0    # "mobileView":Lcom/android/systemui/statusbar/StatusBarMobileView;
    :cond_1
    :goto_0
    return-void
.end method

.method public remove()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 86
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateColors()V

    .line 88
    return-void
.end method

.method public updateMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 277
    const-string v0, "DemoStatusIcons"

    const-string/jumbo v1, "updateMobileState: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    .line 279
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 281
    .local v1, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v2, v3, :cond_0

    .line 282
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 283
    return-void

    .line 279
    .end local v1    # "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 289
    return-void
.end method

.method public updateWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 256
    const-string v0, "DemoStatusIcons"

    const-string/jumbo v1, "updateWifiState: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 262
    :goto_0
    return-void
.end method

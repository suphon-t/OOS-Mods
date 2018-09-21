.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconManager"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field protected mDemoable:Z

.field protected final mGroup:Landroid/view/ViewGroup;

.field protected final mIconSize:I

.field private mIsInDemoMode:Z

.field protected mShouldLog:Z

.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "tag"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 321
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    .line 325
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    .line 328
    new-instance v1, Lcom/android/systemui/util/OPUtils$DisableStateTracker;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/util/OPUtils$DisableStateTracker;-><init>(II)V

    move-object v0, v1

    .line 330
    .local v0, "tracker":Lcom/android/systemui/util/OPUtils$DisableStateTracker;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/OPUtils$DisableStateTracker;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 335
    :cond_0
    return-void
.end method

.method private onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "blocked"    # Z

    .line 432
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-object v0
.end method

.method private onCreateStatusBarMobileView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 442
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    return-object v0
.end method

.method private onCreateStatusBarText(Ljava/lang/String;I)Lcom/android/systemui/statusbar/StatusBarTextView;
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/StatusBarTextView;->fromResId(Landroid/content/Context;I)Lcom/android/systemui/statusbar/StatusBarTextView;

    move-result-object v0

    .line 448
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarTextView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarTextView;->setSlot(Ljava/lang/String;)V

    .line 449
    return-object v0
.end method

.method private onCreateStatusBarWifiView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    .line 437
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarWifiView;
    return-object v0
.end method

.method private setHeightAndCenter(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "height"    # I

    .line 478
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 479
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 480
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 481
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 483
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    return-void
.end method


# virtual methods
.method protected addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .locals 2
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 360
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    const/4 v0, 0x0

    return-object v0

    .line 372
    :pswitch_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getResourceId()I

    move-result v0

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addText(ILjava/lang/String;IZ)Lcom/android/systemui/statusbar/StatusBarTextView;

    move-result-object v0

    return-object v0

    .line 368
    :pswitch_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addMobileIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    return-object v0

    .line 365
    :pswitch_2
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addSignalIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_3
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 382
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 383
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-object v0
.end method

.method protected addMobileIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 4
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 402
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarMobileView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 403
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 405
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    if-eqz v1, :cond_0

    .line 406
    sget-boolean v1, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "StatusBarIconController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMobileIcon phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " before phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarMobileView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :cond_0
    sget-boolean v1, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "StatusBarIconController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMobileIcon phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 416
    :cond_2
    return-object v0
.end method

.method protected addSignalIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 3
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 390
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarWifiView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    .line 391
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarWifiView;
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 397
    :cond_0
    return-object v0
.end method

.method protected addText(ILjava/lang/String;IZ)Lcom/android/systemui/statusbar/StatusBarTextView;
    .locals 3
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "visible"    # Z

    .line 422
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarText(Ljava/lang/String;I)Lcom/android/systemui/statusbar/StatusBarTextView;

    move-result-object v0

    .line 423
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarTextView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyVisible(Z)V

    .line 424
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 425
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 426
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 427
    return-object v0
.end method

.method protected createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .locals 3

    .line 578
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    return-object v0
.end method

.method protected destroy()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 459
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 553
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    if-nez v0, :cond_0

    .line 554
    return-void

    .line 557
    :cond_0
    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->exitDemoMode()V

    .line 562
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    goto :goto_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_3

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 570
    :goto_0
    return-void
.end method

.method protected exitDemoMode()V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->remove()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 575
    return-void
.end method

.method protected isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z
    .locals 3
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 583
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 584
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    .line 586
    .local v0, "resId":I
    const v2, 0x7f080589

    if-eq v0, v2, :cond_1

    const v2, 0x7f08058b

    if-eq v0, v2, :cond_1

    const v2, 0x7f08058c

    if-eq v0, v2, :cond_1

    const v2, 0x7f08058d

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 592
    .end local v0    # "resId":I
    :cond_2
    return v1
.end method

.method public isDemoable()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    return v0
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 454
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 355
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 356
    return-void
.end method

.method protected onIconExternal(II)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "height"    # I

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 463
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 464
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 465
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 466
    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 2
    .param p1, "viewIndex"    # I

    .line 487
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->onRemoveIcon(Lcom/android/systemui/statusbar/StatusIconDisplayable;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 491
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 495
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 496
    return-void
.end method

.method public onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 499
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 513
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetTextVisible(IZ)V

    goto :goto_0

    .line 508
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetMobileIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 509
    return-void

    .line 504
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetSignalIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 505
    return-void

    .line 501
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 502
    return-void

    .line 518
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSetMobileIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 533
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarMobileView;
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 537
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 540
    :cond_1
    return-void
.end method

.method public onSetSignalIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 522
    .local v0, "wifiView":Lcom/android/systemui/statusbar/StatusBarWifiView;
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 526
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 529
    :cond_1
    return-void
.end method

.method public onSetTextVisible(IZ)V
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "visible"    # Z

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarTextView;

    .line 545
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarTextView;
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyVisible(Z)V

    .line 548
    :cond_0
    return-void
.end method

.method public setShouldLog(Z)V
    .locals 0
    .param p1, "should"    # Z

    .line 346
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    .line 347
    return-void
.end method

.method public shouldLog()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    return v0
.end method

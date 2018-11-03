.class public Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.super Ljava/lang/Object;
.source "HeadsUpAppearanceController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field private final mClockView:Landroid/view/View;

.field private final mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mExpandFraction:F

.field private mExpandedHeight:F

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

.field private mIsExpanded:Z

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field mPoint:Landroid/graphics/Point;

.field private final mSetExpandedHeight:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetTrackingHeadsUp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShown:Z

.field private final mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mUpdatePanelTranslation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;)V
    .locals 8
    .param p1, "notificationIconAreaController"    # Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .param p2, "headsUpManager"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .param p3, "statusbarView"    # Landroid/view/View;

    .line 75
    nop

    .line 76
    const v0, 0x7f0a0192

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 77
    const v0, 0x7f0a02b4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 78
    const v0, 0x7f0a02ae

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 79
    const v0, 0x7f0a00c6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 75
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;)V
    .locals 2
    .param p1, "notificationIconAreaController"    # Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .param p2, "headsUpManager"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .param p3, "headsUpStatusBarView"    # Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
    .param p4, "stackScroller"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p5, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p6, "clockView"    # Landroid/view/View;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$Ndod8fRabzshTVmNSVHx_M0XNU4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Ndod8fRabzshTVmNSVHx_M0XNU4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DialNTWPBOn27MISeLu6p9klZxI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DialNTWPBOn27MISeLu6p9klZxI;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 91
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 93
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    .line 96
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 97
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addVerticalTranslationListener(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 104
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    .line 105
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 107
    return-void
.end method

.method private getRtlTranslation()I
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 165
    .local v0, "realDisplaySize":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 171
    .local v1, "windowInset":Landroid/view/WindowInsets;
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 172
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 171
    return v2
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updatePanelTranslation()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 1

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    return-void
.end method

.method public static synthetic lambda$setShown$2(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setShown$3(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$updateHeadsUpHeaders$4(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 300
    return-void
.end method

.method private setShown(Z)V
    .locals 7
    .param p1, "isShown"    # Z

    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    if-eq v0, p1, :cond_2

    .line 220
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    .line 221
    const v0, 0x7f0a00c9

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const-wide/16 v4, 0x6e

    if-eqz p1, :cond_0

    .line 222
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    .line 223
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-static {v6, v4, v5, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    .line 226
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$iMPD_c-MpkAUOLIdQAujzNCdyYQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$iMPD_c-MpkAUOLIdQAujzNCdyYQ;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/oneplus/scene/OPSceneModeObserver;

    .line 235
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-static {v0, v4, v5, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-static {v0, v4, v5, v3, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    .line 245
    :cond_2
    :goto_0
    return-void
.end method

.method private updateHeadsUpHeaders()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1KnuQ6evxsUDWWnSk6M2Hz6dh50;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1KnuQ6evxsUDWWnSk6M2Hz6dh50;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 301
    return-void
.end method

.method private updateIsolatedIconLocation(Z)V
    .locals 2
    .param p1, "requireStateUpdate"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 127
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getIconDrawingRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    .line 128
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeVerticalTranslationListener(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    .line 123
    return-void
.end method

.method public isShown()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 315
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 133
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 134
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 265
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 266
    return-void
.end method

.method public setExpandedHeight(FF)V
    .locals 4
    .param p1, "expandedHeight"    # F
    .param p2, "appearFraction"    # F

    .line 269
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 270
    .local v0, "changedHeight":Z
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    .line 271
    iput p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    .line 272
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v1, v2

    nop

    .line 273
    .local v1, "isExpanded":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpHeaders()V

    .line 276
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-eq v1, v2, :cond_3

    .line 277
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 280
    :cond_3
    return-void
.end method

.method public setPublicMode(Z)V
    .locals 1
    .param p1, "publicMode"    # Z

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPublicMode(Z)V

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 320
    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "trackedChild"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 291
    .local v0, "previousTracked":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 295
    :cond_0
    return-void
.end method

.method public shouldBeVisible()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 304
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 305
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 306
    .local v1, "headerVisibleAmount":F
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, v2, :cond_1

    .line 307
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    .line 309
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeaderVisibleAmount(F)V

    .line 310
    return-void
.end method

.method public updatePanelTranslation()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->getRtlTranslation()I

    move-result v0

    int-to-float v0, v0

    .local v0, "newTranslation":F
    goto :goto_0

    .line 180
    .end local v0    # "newTranslation":F
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    .line 182
    .restart local v0    # "newTranslation":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPanelTranslation(F)V

    .line 184
    return-void
.end method

.method public updateTopEntry()V
    .locals 6

    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/oneplus/scene/OPSceneModeObserver;

    .line 193
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v1}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getShowingEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 198
    .local v1, "previousEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 199
    if-eq v0, v1, :cond_4

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "animateIsolation":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    .line 205
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    xor-int/2addr v4, v5

    move v2, v4

    goto :goto_0

    .line 206
    :cond_1
    if-nez v1, :cond_2

    .line 209
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    .line 210
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    xor-int/2addr v4, v5

    move v2, v4

    .line 212
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    if-nez v0, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 214
    :cond_3
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 213
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    .line 216
    .end local v2    # "animateIsolation":Z
    :cond_4
    return-void
.end method

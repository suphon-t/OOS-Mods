.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkIconManager"
.end annotation


# instance fields
.field private final mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mIconHPadding:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;
    .param p2, "tag"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    .line 125
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 126
    return-void
.end method

.method private isDarkIcon()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 6
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    .line 171
    .local v0, "resId":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->isDarkIcon()Z

    move-result v1

    const v2, 0x7f08058d

    const v3, 0x7f08058c

    const v4, 0x7f08058b

    const v5, 0x7f080589

    if-eqz v1, :cond_1

    .line 172
    if-ne v0, v5, :cond_0

    .line 173
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 174
    :cond_0
    if-ne v0, v3, :cond_3

    .line 175
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_1
    if-ne v0, v4, :cond_2

    .line 179
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 180
    :cond_2
    if-ne v0, v2, :cond_3

    .line 181
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 184
    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    .line 195
    .local v0, "icons":Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 197
    return-object v0
.end method

.method protected destroy()V
    .locals 3

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 154
    return-void
.end method

.method protected exitDemoMode()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 203
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->exitDemoMode()V

    .line 204
    return-void
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 142
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mIconHPadding:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 145
    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 131
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    move-result-object v0

    .line 132
    .local v0, "view":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 2
    .param p1, "viewIndex"    # I

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 159
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    .line 160
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 164
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->applyDark(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 166
    return-void
.end method

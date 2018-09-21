.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintedIconManager"
.end annotation


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "tag"    # Ljava/lang/String;

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private isDarkIcon()Z
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mTag:Ljava/lang/String;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mContext:Landroid/content/Context;

    const v2, 0x7f060152

    .line 291
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mTag:Ljava/lang/String;

    const-string v1, "qs"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0
.end method

.method private updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 6
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 272
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    .line 273
    .local v0, "resId":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isDarkIcon()Z

    move-result v1

    const v2, 0x7f08058d

    const v3, 0x7f08058c

    const v4, 0x7f08058b

    const v5, 0x7f080589

    if-eqz v1, :cond_1

    .line 274
    if-ne v0, v5, :cond_0

    .line 275
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 276
    :cond_0
    if-ne v0, v3, :cond_3

    .line 277
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 280
    :cond_1
    if-ne v0, v4, :cond_2

    .line 281
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 282
    :cond_2
    if-ne v0, v2, :cond_3

    .line 283
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 286
    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 287
    return-void
.end method


# virtual methods
.method protected createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    .line 255
    .local v0, "icons":Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(I)V

    .line 256
    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 221
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    move-result-object v0

    .line 224
    .local v0, "view":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    goto :goto_0

    .line 227
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 230
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    .line 231
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 262
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 264
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    goto :goto_0

    .line 267
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 269
    :goto_0
    return-void
.end method

.method public setTint(I)V
    .locals 4
    .param p1, "color"    # I

    .line 234
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v2, :cond_1

    .line 238
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 241
    .local v2, "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    goto :goto_1

    .line 244
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 247
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    .line 235
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "icon":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

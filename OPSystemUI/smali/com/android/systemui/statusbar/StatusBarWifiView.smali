.class public Lcom/android/systemui/statusbar/StatusBarWifiView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWifiView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mAirplaneSpacer:Landroid/view/View;

.field private mDarkContext:Landroid/view/ContextThemeWrapper;

.field private mDarkIntensity:F

.field private mDirty:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mInoutContainer:Landroid/view/View;

.field private mLightContext:Landroid/view/ContextThemeWrapper;

.field private mRect:Landroid/graphics/Rect;

.field private mSignalSpacer:Landroid/view/View;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mTint:I

.field private mVisibleState:I

.field private mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiGroup:Landroid/widget/LinearLayout;

.field private mWifiIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDirty:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDirty:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDirty:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDirty:Z

    .line 110
    return-void
.end method

.method private applyColors()V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRect:Landroid/graphics/Rect;

    .line 307
    .local v0, "area":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 308
    .local v1, "darkIntensity":F
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mTint:I

    .line 316
    .local v2, "tint":I
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 322
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-static {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 327
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-static {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 329
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 330
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 331
    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # Ljava/lang/String;

    .line 87
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 88
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d01e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 89
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarWifiView;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setSlot(Ljava/lang/String;)V

    .line 90
    invoke-direct {v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->init()V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibleState(I)V

    .line 92
    return-object v1
.end method

.method private getWifiActivityId(ZZ)I
    .locals 2
    .param p1, "activityIn"    # Z
    .param p2, "activityOut"    # Z

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "activity":I
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 343
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 344
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 347
    const v1, 0x7f080a48

    return v1

    .line 353
    :pswitch_0
    const v1, 0x7f080a47

    return v1

    .line 351
    :pswitch_1
    const v1, 0x7f080a52

    return v1

    .line 349
    :pswitch_2
    const v1, 0x7f080a46

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    const v1, 0x7f040245

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 190
    .local v0, "dualToneLightTheme":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    const v2, 0x7f04010a

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 191
    .local v1, "dualToneDarkTheme":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLightContext:Landroid/view/ContextThemeWrapper;

    .line 192
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkContext:Landroid/view/ContextThemeWrapper;

    .line 194
    const v2, 0x7f0a04a2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    .line 195
    const v2, 0x7f0a04a6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 199
    const v2, 0x7f0a04a4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    .line 201
    const v2, 0x7f0a04a8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    .line 202
    const v2, 0x7f0a04a0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    .line 203
    const v2, 0x7f0a01be

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initDotView()V

    .line 206
    return-void
.end method

.method private initDotView()V
    .locals 4

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07064f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 213
    .local v0, "width":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method private initViewState()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-ltz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getWifiActivityId(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 282
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 286
    :cond_2
    move v1, v3

    goto :goto_1

    .line 287
    :cond_3
    :goto_0
    nop

    .line 286
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibility(I)V

    .line 291
    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 236
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-ltz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getWifiActivityId(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 251
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    .line 256
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 255
    :cond_2
    move v1, v3

    goto :goto_1

    .line 256
    :cond_3
    :goto_0
    nop

    .line 255
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eq v0, v1, :cond_7

    .line 260
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibility(I)V

    .line 263
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 264
    return-void
.end method


# virtual methods
.method public applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 219
    if-nez p1, :cond_0

    .line 220
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibility(I)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 222
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initViewState()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 233
    :cond_2
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getTranslationX()F

    move-result v0

    .line 181
    .local v0, "translationX":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getTranslationY()F

    move-result v1

    .line 182
    .local v1, "translationY":F
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 183
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 184
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 185
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 186
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 296
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRect:Landroid/graphics/Rect;

    .line 297
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 298
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mTint:I

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyColors()V

    .line 300
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 360
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 361
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyColors()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDirty:Z

    .line 367
    :cond_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 131
    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 118
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 119
    .local v0, "list":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 126
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 371
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 372
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    if-nez p1, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyColors()V

    .line 377
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDirty:Z

    .line 380
    :cond_1
    return-void
.end method

.method public setVisibleState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    if-ne p1, v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 150
    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 158
    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 154
    nop

    .line 170
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarWifiView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

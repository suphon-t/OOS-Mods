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

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mInoutContainer:Landroid/view/View;

.field private mLightContext:Landroid/view/ContextThemeWrapper;

.field private mSignalSpacer:Landroid/view/View;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mVisibleState:I

.field private mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiGroup:Landroid/widget/LinearLayout;

.field private mWifiIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 100
    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # Ljava/lang/String;

    .line 77
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d01d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 79
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarWifiView;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setSlot(Ljava/lang/String;)V

    .line 80
    invoke-direct {v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->init()V

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibleState(I)V

    .line 82
    return-object v1
.end method

.method private getWifiActivityId(ZZ)I
    .locals 2
    .param p1, "activityIn"    # Z
    .param p2, "activityOut"    # Z

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "activity":I
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 311
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 312
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 315
    const v1, 0x7f08081a

    return v1

    .line 321
    :pswitch_0
    const v1, 0x7f080819

    return v1

    .line 319
    :pswitch_1
    const v1, 0x7f080824

    return v1

    .line 317
    :pswitch_2
    const v1, 0x7f080818

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

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    const v1, 0x7f040242

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 180
    .local v0, "dualToneLightTheme":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    const v2, 0x7f04010a

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 181
    .local v1, "dualToneDarkTheme":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLightContext:Landroid/view/ContextThemeWrapper;

    .line 182
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkContext:Landroid/view/ContextThemeWrapper;

    .line 184
    const v2, 0x7f0a0475

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    .line 185
    const v2, 0x7f0a0479

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 189
    const v2, 0x7f0a0477

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    .line 191
    const v2, 0x7f0a047b

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    .line 192
    const v2, 0x7f0a0473

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    .line 193
    const v2, 0x7f0a01ae

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initDotView()V

    .line 196
    return-void
.end method

.method private initDotView()V
    .locals 4

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07061c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 203
    .local v0, "width":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-void
.end method

.method private initViewState()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-ltz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLightContext:Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkContext:Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->create(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/NeutralGoodDrawable;

    move-result-object v0

    .line 257
    .local v0, "drawable":Lcom/android/systemui/statusbar/NeutralGoodDrawable;
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->setDarkIntensity(F)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    .end local v0    # "drawable":Lcom/android/systemui/statusbar/NeutralGoodDrawable;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getWifiActivityId(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 264
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 268
    :cond_2
    move v1, v3

    goto :goto_1

    .line 269
    :cond_3
    :goto_0
    nop

    .line 268
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
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

    .line 271
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

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibility(I)V

    .line 273
    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 226
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-ltz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLightContext:Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkContext:Landroid/view/ContextThemeWrapper;

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 229
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->create(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/NeutralGoodDrawable;

    move-result-object v0

    .line 230
    .local v0, "drawable":Lcom/android/systemui/statusbar/NeutralGoodDrawable;
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NeutralGoodDrawable;->setDarkIntensity(F)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    .end local v0    # "drawable":Lcom/android/systemui/statusbar/NeutralGoodDrawable;
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getWifiActivityId(ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    .line 237
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    .line 242
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 241
    :cond_2
    move v1, v3

    goto :goto_1

    .line 242
    :cond_3
    :goto_0
    nop

    .line 241
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eq v0, v1, :cond_7

    .line 246
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibility(I)V

    .line 249
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 250
    return-void
.end method


# virtual methods
.method public applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 209
    if-nez p1, :cond_0

    .line 210
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibility(I)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 212
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initViewState()V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 223
    :cond_2
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 169
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getTranslationX()F

    move-result v0

    .line 171
    .local v0, "translationX":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->getTranslationY()F

    move-result v1

    .line 172
    .local v1, "translationY":F
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 173
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 174
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 175
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 176
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 130
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
    .locals 2
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 284
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIntensity:F

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 299
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 121
    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 108
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 109
    .local v0, "list":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 116
    return-void
.end method

.method public setVisibleState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 135
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    if-ne p1, v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 140
    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 148
    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 144
    nop

    .line 160
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

    .line 304
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

.class public Lcom/android/systemui/statusbar/StatusBarMobileView;
.super Landroid/widget/FrameLayout;
.source "StatusBarMobileView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mDarkIntensity:F

.field private mDirty:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mIn:Landroid/widget/ImageView;

.field private mInoutContainer:Landroid/view/View;

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field private mMobileGroup:Landroid/widget/LinearLayout;

.field private mMobileInOut:Landroid/widget/ImageView;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingSpace:Landroid/view/View;

.field private mMobileSingleGroup:Landroid/view/ViewGroup;

.field private mMobileStackedGroup:Landroid/view/ViewGroup;

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeOverlap:I

.field private mMobileTypeOverlapPlus:I

.field private mOut:Landroid/widget/ImageView;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;

.field private mStackedDataGroup:Landroid/view/ViewGroup;

.field private mStackedDataStrengthView:Landroid/widget/ImageView;

.field private mStackedDataTypeView:Landroid/widget/ImageView;

.field private mStackedVoiceGroup:Landroid/view/ViewGroup;

.field private mStackedVoiceStrengthView:Landroid/widget/ImageView;

.field private mStackedVoiceTypeView:Landroid/widget/ImageView;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mTint:I

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlap:I

    .line 81
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlapPlus:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlap:I

    .line 81
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlapPlus:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlap:I

    .line 81
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlapPlus:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlap:I

    .line 81
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlapPlus:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    .line 116
    return-void
.end method

.method private applyColors()V
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRect:Landroid/graphics/Rect;

    .line 324
    .local v0, "area":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDarkIntensity:F

    .line 325
    .local v1, "darkIntensity":F
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mTint:I

    .line 333
    .local v2, "tint":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    .line 334
    invoke-static {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 339
    .local v3, "color":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 342
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 344
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 345
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 346
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 347
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 350
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 353
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 354
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 355
    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slot"    # Ljava/lang/String;

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 93
    const v1, 0x7f0d01d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 95
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarMobileView;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setSlot(Ljava/lang/String;)V

    .line 96
    invoke-direct {v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->init()V

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibleState(I)V

    .line 98
    return-object v1
.end method

.method private getInOutIndicator(ZZ)I
    .locals 2
    .param p1, "in"    # Z
    .param p2, "out"    # Z

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "activity":I
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 461
    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 462
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 465
    const v1, 0x7f080a59

    return v1

    .line 471
    :pswitch_0
    const v1, 0x7f080a58

    return v1

    .line 469
    :pswitch_1
    const v1, 0x7f080a5a

    return v1

    .line 467
    :pswitch_2
    const v1, 0x7f080a57

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

    .line 130
    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    .line 131
    const v0, 0x7f0a025a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 132
    const v1, 0x7f0a0260

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 133
    const v2, 0x7f0a0258

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 134
    const v2, 0x7f0a0259

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoamingSpace:Landroid/view/View;

    .line 135
    const v2, 0x7f0a0255

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mIn:Landroid/widget/ImageView;

    .line 136
    const v2, 0x7f0a0257

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mOut:Landroid/widget/ImageView;

    .line 137
    const v2, 0x7f0a01be

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mInoutContainer:Landroid/view/View;

    .line 139
    new-instance v2, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    .line 140
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->initDotView()V

    .line 146
    const v2, 0x7f0a025b

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataGroup:Landroid/view/ViewGroup;

    .line 147
    const v2, 0x7f0a025f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceGroup:Landroid/view/ViewGroup;

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f0a025d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    .line 155
    const v0, 0x7f0a025e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    .line 157
    const v0, 0x7f0a0256

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070657

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlap:I

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070658

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlapPlus:I

    .line 161
    return-void
.end method

.method private initDotView()V
    .locals 4

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07064f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 168
    .local v0, "width":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method private initViewState()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-lez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->showStatck(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-nez v3, :cond_3

    const v3, 0x7f080822

    goto :goto_2

    :cond_3
    const v3, 0x7f080823

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getInOutIndicator(ZZ)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileIconPadding()V

    .line 248
    return-void
.end method

.method private showStatck(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 359
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateMobileIconPadding()V
    .locals 6

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 482
    .local v0, "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 483
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 484
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 485
    .local v2, "icon":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const v4, 0x7f0807e1

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const v4, 0x7f0807e3

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->isLayoutRtl()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const v5, 0x7f0807e2

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const v4, 0x7f0807e8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const v4, 0x7f0807eb

    if-ne v3, v4, :cond_3

    .line 493
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlapPlus:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeOverlap:I

    .line 494
    .local v3, "overlap":I
    :goto_0
    sub-int v4, v2, v3

    .line 495
    .local v4, "offset":I
    if-lez v4, :cond_5

    .line 496
    move v1, v4

    .end local v2    # "icon":I
    .end local v3    # "overlap":I
    .end local v4    # "offset":I
    goto :goto_2

    .line 487
    .restart local v2    # "icon":I
    :cond_4
    :goto_1
    move v1, v2

    .line 500
    .end local v2    # "icon":I
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 501
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    :cond_6
    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 251
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eq v0, v1, :cond_3

    .line 261
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->showStatck(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 290
    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-nez v1, :cond_5

    const v1, 0x7f080822

    goto :goto_2

    :cond_5
    const v1, 0x7f080823

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 295
    :cond_6
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-eqz v0, :cond_7

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 301
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getInOutIndicator(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    if-eqz v1, :cond_8

    move v2, v3

    nop

    :cond_8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileIconPadding()V

    .line 308
    return-void
.end method


# virtual methods
.method public applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 174
    if-nez p1, :cond_0

    .line 175
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibility(I)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 177
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->initViewState()V

    .line 183
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 189
    :cond_2
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 120
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getTranslationX()F

    move-result v0

    .line 122
    .local v0, "translationX":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getTranslationY()F

    move-result v1

    .line 123
    .local v1, "translationY":F
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 124
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 125
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 126
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 127
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object v0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 313
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRect:Landroid/graphics/Rect;

    .line 314
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDarkIntensity:F

    .line 315
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mTint:I

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyColors()V

    .line 317
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 509
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 510
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyColors()V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    .line 516
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 536
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 544
    return-void

    .line 538
    :cond_1
    :goto_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 402
    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 370
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 375
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 376
    .local v0, "list":Landroid/content/res/ColorStateList;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 377
    .local v1, "intensity":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    .line 382
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 385
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileInOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedDataTypeView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceStrengthView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 390
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mStackedVoiceTypeView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 397
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 520
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 521
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    if-nez p1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyColors()V

    .line 526
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDirty:Z

    .line 529
    :cond_1
    return-void
.end method

.method public setVisibleState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 411
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    if-ne p1, v0, :cond_0

    .line 412
    return-void

    .line 415
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 416
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    packed-switch p1, :pswitch_data_0

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 422
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 424
    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 420
    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 439
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarMobileView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

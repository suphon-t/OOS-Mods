.class public Lcom/android/systemui/statusbar/StatusBarTextView;
.super Landroid/widget/FrameLayout;
.source "StatusBarTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mSlot:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    .line 60
    return-void
.end method

.method public static fromResId(Landroid/content/Context;I)Lcom/android/systemui/statusbar/StatusBarTextView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarTextView;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarTextView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "container":Lcom/android/systemui/statusbar/StatusBarTextView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 41
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 43
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->setTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 47
    :cond_0
    const-string v3, "StatusBarTextView"

    const-string v4, "Load StatusBarTextView error, the resource is not TextView."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->setTextView(Landroid/widget/TextView;)V

    .line 50
    :goto_0
    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarTextView;->initDotView()V

    .line 51
    return-object v0
.end method

.method private initDotView()V
    .locals 4

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 140
    .local v0, "width":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    .line 133
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 155
    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 151
    nop

    .line 163
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    .line 78
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarTextView;->setVisibility(I)V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->updateState()V

    .line 81
    :cond_1
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleState()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    return v0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 129
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 97
    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 92
    return-void
.end method

.method public setVisibleState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->updateState()V

    .line 105
    :cond_0
    return-void
.end method

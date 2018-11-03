.class public Lcom/android/systemui/statusbar/StatusBarOPCustView;
.super Landroid/widget/LinearLayout;
.source "StatusBarOPCustView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;
    }
.end annotation


# instance fields
.field private mDirty:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;

.field private mTint:I

.field private mVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    .line 66
    return-void
.end method

.method private applyColors()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;

    .line 145
    .local v0, "area":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mTint:I

    .line 146
    .local v1, "tint":I
    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 148
    .local v2, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setColor(I)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 152
    return-void
.end method

.method public static fromResId(Landroid/content/Context;I)Lcom/android/systemui/statusbar/StatusBarOPCustView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarOPCustView;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "container":Lcom/android/systemui/statusbar/StatusBarOPCustView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 48
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "v":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-direct {v0, v2, p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->setView(Landroid/view/View;Landroid/content/Context;)Z

    .line 56
    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->initDotView()V

    .line 57
    return-object v0
.end method

.method private initDotView()V
    .locals 4

    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07064f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 167
    .local v0, "width":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x800013

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method

.method private setView(Landroid/view/View;Landroid/content/Context;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;-><init>(Lcom/android/systemui/statusbar/StatusBarOPCustView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private updateState()V
    .locals 3

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 174
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 186
    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 180
    nop

    .line 196
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

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    .line 84
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->setVisibility(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->updateState()V

    .line 87
    :cond_1
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;

    .line 136
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mTint:I

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->applyColors()V

    .line 138
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 201
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 202
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->applyColors()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    .line 208
    :cond_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 105
    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 100
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 212
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    if-nez p1, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->applyColors()V

    .line 218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    .line 221
    :cond_1
    return-void
.end method

.method public setVisibleState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    if-eq v0, p1, :cond_0

    .line 110
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->updateState()V

    .line 113
    :cond_0
    return-void
.end method

.class public Landroidx/slice/widget/SliceActionView;
.super Landroid/widget/FrameLayout;
.source "SliceActionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceActionView$ImageToggle;
    }
.end annotation


# static fields
.field private static final STATE_CHECKED:[I


# instance fields
.field private mActionView:Landroid/view/View;

.field private mEventInfo:Landroidx/slice/widget/EventInfo;

.field private mIconSize:I

.field private mImageSize:I

.field private mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSliceAction:Landroidx/slice/core/SliceActionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroidx/slice/widget/SliceActionView;->STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    .line 71
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    .line 72
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 50
    sget-object v0, Landroidx/slice/widget/SliceActionView;->STATE_CHECKED:[I

    return-object v0
.end method

.method private sendAction()V
    .locals 5

    .line 170
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 173
    .local v1, "isChecked":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 174
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 177
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput v4, v3, Landroidx/slice/widget/EventInfo;->state:I

    .line 180
    .end local v1    # "isChecked":Z
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    goto :goto_1

    .line 181
    :cond_2
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 183
    :goto_1
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_3
    goto :goto_2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/Checkable;

    if-eqz v2, :cond_4

    .line 188
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 190
    :cond_4
    const-string v0, "SliceActionView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 161
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendAction()V

    .line 165
    return-void

    .line 162
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 153
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceActionView;->sendAction()V

    .line 157
    return-void

    .line 154
    :cond_1
    :goto_0
    return-void
.end method

.method public setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;I)V
    .locals 6
    .param p1, "action"    # Landroidx/slice/core/SliceActionImpl;
    .param p2, "info"    # Landroidx/slice/widget/EventInfo;
    .param p3, "listener"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;
    .param p4, "color"    # I

    .line 79
    iput-object p1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 80
    iput-object p2, p0, Landroidx/slice/widget/SliceActionView;->mEventInfo:Landroidx/slice/widget/EventInfo;

    .line 81
    iput-object p3, p0, Landroidx/slice/widget/SliceActionView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "switchView":Landroid/widget/Switch;
    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceActionView;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget v1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setMinimumHeight(I)V

    .line 90
    iget v1, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setMinimumWidth(I)V

    .line 91
    nop

    .line 94
    iput-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 96
    .end local v0    # "switchView":Landroid/widget/Switch;
    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 97
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Landroidx/slice/widget/SliceActionView$ImageToggle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/widget/SliceActionView$ImageToggle;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "imageToggle":Landroidx/slice/widget/SliceActionView$ImageToggle;
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceActionView$ImageToggle;->setChecked(Z)V

    .line 100
    iput-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 101
    .end local v0    # "imageToggle":Landroidx/slice/widget/SliceActionView$ImageToggle;
    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    .line 104
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceActionView;->addView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    const/4 v1, -0x1

    if-eq p4, v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 110
    invoke-static {v0, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 112
    :cond_2
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 114
    iget v2, p0, Landroidx/slice/widget/SliceActionView;->mImageSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 115
    iget-object v2, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/slice/widget/SliceActionView;->mIconSize:I

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 117
    .local v2, "p":I
    :goto_1
    iget-object v3, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    const v3, 0x101030e

    .line 119
    .local v3, "touchFeedbackAttr":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 120
    const v3, 0x101045c

    .line 122
    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceActionView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v4, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "p":I
    .end local v3    # "touchFeedbackAttr":I
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 127
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 129
    :cond_6
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    :goto_3
    iget-object v1, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_7
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 141
    :cond_0
    return-void
.end method

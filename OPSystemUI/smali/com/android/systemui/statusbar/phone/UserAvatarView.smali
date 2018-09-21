.class public Lcom/android/systemui/statusbar/phone/UserAvatarView;
.super Landroid/view/View;
.source "UserAvatarView.java"


# instance fields
.field private final mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance v0, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 43
    sget-object v0, Lcom/android/systemui/R$styleable;->UserAvatarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 46
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 48
    .local v3, "attr":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v3    # "attr":I
    goto :goto_1

    .line 53
    .restart local v3    # "attr":I
    :pswitch_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameWidth(F)V

    .line 54
    goto :goto_1

    .line 56
    :pswitch_1
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFramePadding(F)V

    .line 57
    goto :goto_1

    .line 59
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameColor(Landroid/content/res/ColorStateList;)V

    .line 60
    goto :goto_1

    .line 65
    :pswitch_3
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeMargin(F)V

    .end local v3    # "attr":I
    goto :goto_1

    .line 62
    .restart local v3    # "attr":I
    :pswitch_4
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeDiameter(F)V

    .line 63
    goto :goto_1

    .line 50
    :pswitch_5
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatarPadding(F)V

    .line 51
    nop

    .line 46
    .end local v3    # "attr":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setAvatarPadding(F)V
    .locals 1
    .param p1, "avatarPadding"    # F

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setPadding(F)V

    .line 107
    return-void
.end method

.method public setAvatarWithBadge(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "avatar"    # Landroid/graphics/Bitmap;
    .param p2, "userId"    # I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 125
    return-void
.end method

.method public setBadgeDiameter(F)V
    .locals 2
    .param p1, "diameter"    # F

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeRadius(F)V

    .line 111
    return-void
.end method

.method public setBadgeMargin(F)V
    .locals 1
    .param p1, "margin"    # F

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeMargin(F)V

    .line 115
    return-void
.end method

.method public setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .line 136
    instance-of v0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 141
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Recursively adding UserIconDrawable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrameColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFrameColor(Landroid/content/res/ColorStateList;)V

    .line 95
    return-void
.end method

.method public setFramePadding(F)V
    .locals 1
    .param p1, "framePadding"    # F

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFramePadding(F)V

    .line 103
    return-void
.end method

.method public setFrameWidth(F)V
    .locals 1
    .param p1, "frameWidth"    # F

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFrameWidth(F)V

    .line 99
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    return-void
.end method

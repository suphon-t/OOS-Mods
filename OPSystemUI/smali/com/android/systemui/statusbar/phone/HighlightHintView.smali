.class public Lcom/android/systemui/statusbar/phone/HighlightHintView;
.super Landroid/widget/FrameLayout;
.source "HighlightHintView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static TAG_KEYGUARD_STATUSBAR:I

.field public static TAG_STATUSBAR:I


# instance fields
.field mChronometerContainer:Landroid/widget/FrameLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "HighlightHintView"

    sput-object v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    .line 39
    const/16 v0, 0x3e9

    sput v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_KEYGUARD_STATUSBAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    .line 56
    const v0, 0x7f0d0076

    .line 57
    .local v0, "layoutId":I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->addView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method private getMaxHighlightHintTextWidth()I
    .locals 13

    .line 208
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    .line 209
    .local v0, "notificationData":Lcom/android/systemui/statusbar/NotificationData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    return v1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v2

    .line 213
    .local v2, "chronometer":Landroid/widget/Chronometer;
    :goto_0
    if-nez v2, :cond_2

    .line 214
    return v1

    .line 216
    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 217
    .local v3, "measureWidth":I
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 218
    .local v4, "measureHeight":I
    invoke-virtual {v2}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v5

    .line 219
    .local v5, "chronometerMeasureWidth":I
    if-eqz v5, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    if-eq v6, v5, :cond_4

    .line 220
    :cond_3
    invoke-virtual {v2, v3, v4}, Landroid/widget/Chronometer;->measure(II)V

    .line 221
    iput v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContentWidth:I

    .line 223
    :cond_4
    invoke-virtual {v2}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v6

    .line 224
    .local v6, "contentWidth":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 225
    .local v7, "iconWidth":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f070200

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    .line 226
    .local v1, "padding":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int/2addr v8, v7

    sub-int/2addr v8, v1

    .line 227
    .local v8, "maxWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v9, v11

    double-to-int v9, v9

    .line 228
    .local v9, "minWidth":I
    if-lez v8, :cond_6

    move v10, v8

    goto :goto_1

    :cond_6
    move v10, v9

    :goto_1
    return v10
.end method

.method private updateHint()V
    .locals 11

    .line 102
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    .line 103
    .local v0, "notificationData":Lcom/android/systemui/statusbar/NotificationData;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 107
    .local v1, "n":Landroid/app/Notification;
    if-nez v1, :cond_1

    .line 108
    return-void

    .line 110
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    .line 112
    .local v2, "bgColor":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 114
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    .line 115
    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 116
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 119
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f070641

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 123
    .local v4, "textSize":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 124
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    int-to-float v9, v4

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v8

    if-eq v8, v5, :cond_4

    .line 126
    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "text":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .local v8, "newHint":Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getMaxHighlightHintTextWidth()I

    move-result v9

    .line 133
    .local v9, "maxWidth":I
    if-lez v9, :cond_3

    .line 134
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 137
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    .end local v5    # "text":Ljava/lang/String;
    .end local v8    # "newHint":Ljava/lang/StringBuffer;
    .end local v9    # "maxWidth":I
    goto :goto_1

    .line 139
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a

    .line 143
    invoke-virtual {v1}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 146
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06022f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 147
    .local v5, "textColor":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v8, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v6, v8, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v6

    .line 148
    .local v6, "chronometer":Landroid/widget/Chronometer;
    :goto_2
    if-eqz v6, :cond_8

    .line 149
    invoke-virtual {v6}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 150
    invoke-virtual {v6}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    :cond_7
    int-to-float v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/widget/Chronometer;->setTextSize(IF)V

    .line 153
    invoke-virtual {v6, v5}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 154
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 155
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 157
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 158
    .end local v5    # "textColor":I
    .end local v6    # "chronometer":Landroid/widget/Chronometer;
    goto :goto_3

    .line 159
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 163
    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    .line 164
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 165
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_b

    .line 166
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 167
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "textSize":I
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_b
    goto :goto_4

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 104
    .end local v1    # "n":Landroid/app/Notification;
    .end local v2    # "bgColor":I
    :cond_c
    :goto_5
    return-void
.end method

.method private updateLayout()V
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 89
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070649

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 91
    .local v2, "max":I
    if-le v1, v2, :cond_0

    .line 92
    move v1, v2

    .line 94
    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 95
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingEnd()I

    move-result v6

    .line 96
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setPaddingRelative(IIII)V

    .line 99
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "height":I
    .end local v2    # "max":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 194
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    .line 195
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 180
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 181
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    .line 184
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    .line 189
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 201
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->removeCallback(Ljava/lang/Object;)V

    .line 202
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f0a0198

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0a0199

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a019a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    .line 66
    const v0, 0x7f0a0196

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    .line 69
    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    .line 252
    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-eq v0, v1, :cond_0

    .line 237
    return-void

    .line 240
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v0

    .line 241
    .local v0, "show":Z
    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setVisibility(I)V

    goto :goto_0

    .line 245
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setVisibility(I)V

    .line 247
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 73
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 77
    .local v1, "width":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le v2, v1, :cond_0

    .line 78
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "width":I
    :cond_0
    return-void
.end method

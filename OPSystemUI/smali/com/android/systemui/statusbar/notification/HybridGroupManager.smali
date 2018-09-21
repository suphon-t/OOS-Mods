.class public Lcom/android/systemui/statusbar/notification/HybridGroupManager;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDarkAmount:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field private mOverflowNumberColor:I

.field private mOverflowNumberColorDark:I

.field private mOverflowNumberPadding:I

.field private mOverflowNumberPaddingDark:I

.field private mOverflowNumberSize:F

.field private mOverflowNumberSizeDark:F

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->initDimens()V

    .line 54
    return-void
.end method

.method private bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 2
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "style"    # I

    .line 113
    if-nez p1, :cond_0

    .line 114
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object p1

    .line 116
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    .local v0, "titleText":Ljava/lang/CharSequence;
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 118
    .local v1, "contentText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 119
    return-object p1
.end method

.method private inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 4
    .param p1, "style"    # I

    .line 69
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-class v1, Landroid/view/LayoutInflater;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f0d0077

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 73
    .local v1, "hybrid":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    return-object v1
.end method

.method private inflateOverflowNumber()Landroid/widget/TextView;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f0d0078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "numberView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    .line 83
    return-object v1
.end method

.method public static synthetic lambda$setOverflowNumberDark$0(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;Ljava/lang/Float;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "f"    # Ljava/lang/Float;

    .line 167
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    .line 169
    return-void
.end method

.method private resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 123
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    .local v0, "contentText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 125
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method private resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .line 131
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, "titleText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 133
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 135
    :cond_0
    return-object v0
.end method

.method private updateOverFlowNumberColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "numberView"    # Landroid/widget/TextView;

    .line 87
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColorDark:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;

    .line 107
    const v0, 0x7f1200df

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;

    .line 101
    const v0, 0x7f1200de

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;
    .locals 6
    .param p1, "reusableView"    # Landroid/widget/TextView;
    .param p2, "number"    # I

    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateOverflowNumber()Landroid/widget/TextView;

    move-result-object p1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110419

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 142
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f000d

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 147
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    return-object p1
.end method

.method public bindOverflowNumberAmbient(Landroid/widget/TextView;Landroid/app/Notification;I)Landroid/widget/TextView;
    .locals 4
    .param p1, "titleView"    # Landroid/widget/TextView;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "number"    # I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 158
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 156
    const v2, 0x7f11041a

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    return-object p1
.end method

.method public initDimens()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSize:F

    .line 60
    const v1, 0x7f0701dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSizeDark:F

    .line 62
    const v1, 0x7f0701da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    .line 64
    iget v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    const v2, 0x7f0701d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPaddingDark:I

    .line 66
    return-void
.end method

.method public setOverflowNumberColor(Landroid/widget/TextView;II)V
    .locals 0
    .param p1, "numberView"    # Landroid/widget/TextView;
    .param p2, "colorRegular"    # I
    .param p3, "colorDark"    # I

    .line 92
    iput p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    .line 93
    iput p3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColorDark:I

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "dark"    # Z
    .param p3, "fade"    # Z
    .param p4, "delay"    # J

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$HybridGroupManager$F4-Ues96OqS7pldtinZIwLPoyPg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$HybridGroupManager$F4-Ues96OqS7pldtinZIwLPoyPg;-><init>(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;)V

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->setIntensityDark(Ljava/util/function/Consumer;ZZJLandroid/view/View;)V

    .line 170
    nop

    .line 171
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSizeDark:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberSize:F

    .line 170
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPaddingDark:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    .line 173
    .local v0, "paddingEnd":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 174
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 173
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 175
    return-void
.end method

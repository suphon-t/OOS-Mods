.class public Lcom/android/systemui/statusbar/AppOpsInfo;
.super Landroid/widget/LinearLayout;
.source "AppOpsInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUid:I

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnOk:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;

.field private mPkg:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$68oqrp8uVHC6FuhanxBqfZBzjSI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$68oqrp8uVHC6FuhanxBqfZBzjSI;-><init>(Lcom/android/systemui/statusbar/AppOpsInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    .line 62
    return-void
.end method

.method private bindButtons()V
    .locals 3

    .line 116
    const v0, 0x7f0a03a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "settings":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$t2ZvU1jOw3dfO--nkIVBlcF8VwE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$t2ZvU1jOw3dfO--nkIVBlcF8VwE;-><init>(Lcom/android/systemui/statusbar/AppOpsInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f0a02a6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    .local v1, "ok":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private bindHeader()V
    .locals 4

    .line 89
    const/4 v0, 0x0

    .line 92
    .local v0, "pkgicon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    const v3, 0xc2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 97
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppUid:I

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 105
    :cond_0
    goto :goto_0

    .line 102
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const v1, 0x7f0a02f7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const v1, 0x7f0a02f8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method private bindPrompt()V
    .locals 2

    .line 111
    const v0, 0x7f0a031e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, "prompt":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method private closeControls(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x0

    const/16 v2, 0x541

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 167
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 168
    .local v2, "parentLoc":[I
    new-array v3, v0, [I

    .line 169
    .local v3, "targetLoc":[I
    iget-object v4, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    .line 170
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    .line 172
    .local v4, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v0

    .line 173
    .local v5, "centerY":I
    aget v0, v3, v1

    aget v6, v2, v1

    sub-int/2addr v0, v6

    add-int/2addr v0, v4

    .line 174
    .local v0, "x":I
    const/4 v6, 0x1

    aget v7, v3, v6

    aget v6, v2, v6

    sub-int/2addr v7, v6

    add-int/2addr v7, v5

    .line 175
    .local v7, "y":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v6, v0, v7, v1, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 176
    return-void
.end method

.method private getPrompt()Ljava/lang/String;
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    if-ne v0, v1, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f11013c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f11013d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110138

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f11013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f11013b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110139

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_7
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic lambda$bindButtons$1(Lcom/android/systemui/statusbar/AppOpsInfo;Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppUid:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V

    .line 119
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/AppOpsInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AppOpsInfo;->closeControls(Landroid/view/View;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "onSettingsClick"    # Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;",
            "Landroid/service/notification/StatusBarNotification;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p4, "activeOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;

    .line 77
    iput-object p4, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindHeader()V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindPrompt()V

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindButtons()V

    .line 83
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x541

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 85
    return-void
.end method

.method public getActualHeight()I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 195
    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f11040d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f11040c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 181
    return-void
.end method

.method public shouldBeSaved()Z
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public willBeRemoved()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

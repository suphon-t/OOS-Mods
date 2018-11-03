.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DOT_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIMATION_DURATION_FAST:I

.field private mAlwaysScaleIcon:Z

.field private mAnimationStartColor:I

.field private final mBlocked:Z

.field private mCachedContrastBackgroundColor:I

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mContrastedDrawableColor:I

.field private mCurrentSetColor:I

.field private mDarkAmount:F

.field private mDarkIntensity:F

.field private mDecorColor:I

.field private mDensity:I

.field private mDirty:Z

.field private mDismissed:Z

.field private mDotAnimator:Landroid/animation/ObjectAnimator;

.field private mDotAppearAmount:F

.field private final mDotPaint:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mDrawableColor:I

.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mIconAppearAmount:F

.field private mIconAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIconColor:I

.field private mIconScale:F

.field private mIsInShelf:Z

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field private mMatrix:[F

.field private mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mNotification:Landroid/service/notification/StatusBarNotification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mOnDismissListener:Ljava/lang/Runnable;

.field private mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStaticDotRadius:I

.field private mStatusBarIconDrawingSize:I

.field private mStatusBarIconDrawingSizeDark:I

.field private mStatusBarIconSize:I

.field private mTint:I

.field private mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const-string v1, "iconAppearAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$2;

    const-string v1, "dot_appear_amount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 117
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 118
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 129
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 134
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 144
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 145
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 154
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDirty:Z

    .line 262
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 263
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 264
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForNotifications()V

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "blocked"    # Z

    .line 175
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 117
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 118
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 129
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    .line 133
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 134
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 144
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 145
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 154
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDirty:Z

    .line 176
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 177
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 178
    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    .line 179
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const v2, 0x7f0806bc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 184
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10600f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 192
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/StatusBarIconView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private applyIconAndColors()V
    .locals 10

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 931
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mRect:Landroid/graphics/Rect;

    .line 934
    .local v0, "area":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkIntensity:F

    .line 935
    .local v1, "darkIntensity":F
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mTint:I

    .line 936
    .local v2, "tint":I
    invoke-static {v0, p0, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    .line 938
    .local v3, "areaTint":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v4

    .line 939
    .local v4, "slot":Ljava/lang/String;
    if-eqz v4, :cond_7

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v5

    .line 941
    .local v5, "resId":I
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-nez v6, :cond_1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 942
    .local v6, "isDark":Z
    :goto_0
    const/4 v7, 0x0

    const v8, 0x7f0807c7

    const v9, 0x7f0807c5

    if-eq v5, v9, :cond_5

    if-ne v5, v8, :cond_2

    goto :goto_2

    .line 951
    :cond_2
    const v8, 0x7f0807c9

    const v9, 0x7f0807c8

    if-eq v5, v9, :cond_3

    if-ne v5, v8, :cond_7

    .line 953
    :cond_3
    if-eqz v6, :cond_4

    .line 954
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_1

    .line 956
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 958
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 959
    return-void

    .line 944
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 945
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_3

    .line 947
    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 949
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 950
    return-void

    .line 963
    .end local v5    # "resId":I
    .end local v6    # "isDark":Z
    :cond_7
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 964
    .local v5, "color":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 965
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 966
    return-void
.end method

.method public static contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .line 518
    const-string v0, ""

    .line 520
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 521
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 531
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    goto :goto_0

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "StatusBarIconView"

    const-string v3, "Unable to recover builder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.appInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 527
    .local v2, "appInfo":Landroid/os/Parcelable;
    instance-of v3, v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 528
    move-object v3, v2

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 528
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "appInfo":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 534
    .local v1, "title":Ljava/lang/CharSequence;
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 535
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 538
    .local v3, "ticker":Ljava/lang/CharSequence;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 540
    .local v4, "titleOrText":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 541
    move-object v5, v4

    goto :goto_2

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    const-string v5, ""

    .line 543
    .local v5, "desc":Ljava/lang/CharSequence;
    :goto_2
    const v6, 0x7f11006d

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusBarIcon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 380
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 381
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 385
    :cond_0
    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, p0, v0}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 387
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 388
    .local v2, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07064e

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 389
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 392
    .local v3, "scaleFactor":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 393
    return-object v1

    .line 396
    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v4
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 148
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 148
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 150
    .local v0, "newColor":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    .line 151
    return-void
.end method

.method public static synthetic lambda$setDark$1(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Float;)V
    .locals 1
    .param p1, "f"    # Ljava/lang/Float;

    .line 838
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    .line 839
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForNotifications()V

    .line 840
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    .line 841
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateAllowAnimation()V

    .line 843
    return-void
.end method

.method private maybeUpdateIconScaleDimens()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForSystemIcons()V

    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForNotifications()V

    .line 203
    :goto_1
    return-void
.end method

.method private reloadDimens()V
    .locals 3

    .line 240
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 241
    .local v0, "applyRadius":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f07052b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    .line 243
    const v2, 0x7f07064f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 244
    const v2, 0x7f07064c

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 246
    const v2, 0x7f07064b

    .line 247
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 248
    if-eqz v0, :cond_1

    .line 249
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    .line 251
    :cond_1
    return-void
.end method

.method private runRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 783
    if-eqz p1, :cond_0

    .line 784
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 786
    :cond_0
    return-void
.end method

.method private setColorInternal(I)V
    .locals 0
    .param p1, "color"    # I

    .line 579
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    .line 581
    return-void
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .line 495
    if-eqz p1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "d":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 501
    .end local v0    # "d":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAllowAnimation()V
    .locals 3

    .line 847
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 848
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAllowAnimation(Z)V

    .line 850
    :cond_2
    return-void
.end method

.method private updateContrastedStaticColor()V
    .locals 4

    .line 661
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 662
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    .line 663
    return-void

    .line 666
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 667
    .local v0, "contrastedColor":I
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 669
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 670
    .local v1, "hsl":[F
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    invoke-static {v2, v1}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 673
    const/4 v2, 0x1

    aget v2, v1, v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 674
    const/4 v0, 0x0

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    .line 679
    .end local v1    # "hsl":[F
    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    .line 680
    return-void
.end method

.method private updateDecorColor()V
    .locals 3

    .line 556
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 557
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 564
    :cond_0
    return-void
.end method

.method private updateDrawable(Z)Z
    .locals 5
    .param p1, "withClear"    # Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 343
    return v1

    .line 347
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 350
    nop

    .line 353
    if-nez v0, :cond_1

    .line 354
    const-string v2, "StatusBarIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return v1

    .line 357
    :cond_1
    if-eqz p1, :cond_2

    .line 358
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    const/4 v1, 0x1

    return v1

    .line 348
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "StatusBarIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOM while inflating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v1
.end method

.method private updateIconColor()V
    .locals 4

    .line 584
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_0

    .line 586
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    .line 587
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 589
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 591
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    const v2, 0x3f2b851f    # 0.67f

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    mul-float/2addr v2, v3

    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateTintMatrix([FIF)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;->setColorMatrixArray([F)V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 595
    .end local v0    # "color":I
    goto :goto_0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    .line 598
    :goto_0
    return-void
.end method

.method private updateIconScaleForNotifications()V
    .locals 3

    .line 206
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 210
    .local v0, "imageBounds":F
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 211
    .local v1, "outerBounds":I
    int-to-float v2, v1

    div-float v2, v0, v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    .line 213
    return-void
.end method

.method private updateIconScaleForSystemIcons()V
    .locals 1

    .line 216
    const v0, 0x3f61e1e2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 217
    return-void
.end method

.method private updatePivot()V
    .locals 4

    .line 897
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setPivotX(F)V

    .line 898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setPivotY(F)V

    .line 899
    return-void
.end method

.method private static updateTintMatrix([FIF)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "color"    # I
    .param p2, "alphaBoost"    # F

    .line 605
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 606
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 607
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x9

    aput v0, p0, v1

    .line 608
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xe

    aput v0, p0, v1

    .line 609
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    const/16 v1, 0x12

    aput v0, p0, v1

    .line 610
    return-void
.end method


# virtual methods
.method protected debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .line 456
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->debug(I)V

    .line 457
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method public equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "a"    # Landroid/graphics/drawable/Icon;
    .param p2, "b"    # Landroid/graphics/drawable/Icon;

    .line 284
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    .line 292
    return v3

    .line 290
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 288
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    return v0
.end method

.method public executeOnLayout(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 902
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 903
    return-void
.end method

.method getContrastedStaticDrawableColor(I)I
    .locals 1
    .param p1, "backgroundColor"    # I

    .line 653
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 654
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 655
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 657
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return v0
.end method

.method public getDotAppearAmount()F
    .locals 1

    .line 829
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 861
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v0

    .line 863
    .local v0, "translationX":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationY()F

    move-result v1

    .line 864
    .local v1, "translationY":F
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 865
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 866
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 867
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 868
    return-void
.end method

.method public getIconAppearAmount()F
    .locals 1

    .line 796
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    return v0
.end method

.method public getIconScale()F
    .locals 1

    .line 224
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return v0
.end method

.method public getIconScaleFullyDark()F
    .locals 2

    .line 220
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getStaticDrawableColor()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    return v0
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public getVisibleState()I
    .locals 1

    .line 800
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public isIconBlocked()Z
    .locals 1

    .line 975
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    return v0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 229
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 231
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 232
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 237
    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 923
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mRect:Landroid/graphics/Rect;

    .line 924
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkIntensity:F

    .line 925
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mTint:I

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->applyIconAndColors()V

    .line 927
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 427
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 429
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v2, v3

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 429
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 431
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 439
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 441
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 442
    .local v0, "alpha":F
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 443
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    mul-float/2addr v2, v3

    .local v2, "radius":F
    goto :goto_0

    .line 445
    .end local v2    # "radius":F
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    sub-float/2addr v2, v3

    .line 446
    .local v2, "fadeOutAmount":F
    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    .line 447
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    .line 449
    .local v2, "radius":F
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 450
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 452
    .end local v0    # "alpha":F
    .end local v2    # "radius":F
    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 405
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 409
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 880
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/AnimatedImageView;->onLayout(ZIIII)V

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 885
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    .line 887
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDirty:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->applyIconAndColors()V

    .line 890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDirty:Z

    .line 894
    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 421
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onRtlPropertiesChanged(I)V

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 423
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AnimatedImageView;->onSizeChanged(IIII)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    .line 417
    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 12

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 465
    .local v0, "tooBig":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v1, v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 470
    .local v1, "f":Ljava/text/NumberFormat;
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v2, v2, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "str":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v2

    .line 475
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v3

    .line 476
    .local v3, "h":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 477
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v1, v6, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 478
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    .line 479
    .local v5, "tw":I
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    .line 480
    .local v6, "th":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 481
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iget v8, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 482
    .local v7, "dw":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 483
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    .line 485
    :cond_1
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int v8, v2, v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int v9, v7, v9

    iget v10, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    .line 486
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    .line 487
    .local v8, "dh":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 488
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    .line 490
    :cond_2
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int v10, v8, v10

    sub-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    .line 491
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v10, v2, v7

    sub-int v11, v3, v8

    invoke-virtual {v9, v10, v11, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 492
    return-void
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 9
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 300
    .local v0, "iconEquals":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 302
    .local v3, "levelEquals":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 304
    .local v4, "visibilityEquals":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v5, v6, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 306
    .local v5, "numberEquals":Z
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 307
    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    const/4 v6, 0x0

    if-nez v0, :cond_5

    .line 309
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v7

    if-nez v7, :cond_4

    return v2

    .line 311
    :cond_4
    const v7, 0x7f0a01a9

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 313
    :cond_5
    if-nez v3, :cond_6

    .line 314
    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageLevel(I)V

    .line 317
    :cond_6
    if-nez v5, :cond_9

    .line 318
    iget v7, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v7, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f05003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 320
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_7

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08055a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 324
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    goto :goto_4

    .line 326
    :cond_8
    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 327
    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 329
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 331
    :cond_9
    if-nez v4, :cond_b

    .line 332
    iget-boolean v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 334
    :cond_b
    return v1
.end method

.method public setDark(ZZJ)V
    .locals 7
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$IedzBslpRTF95Z-E8YfkBh77Pu0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$IedzBslpRTF95Z-E8YfkBh77Pu0;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setIntensityDark(Ljava/util/function/Consumer;ZZJLandroid/view/View;)V

    .line 844
    return-void
.end method

.method public setDecorColor(I)V
    .locals 0
    .param p1, "iconTint"    # I

    .line 551
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    .line 553
    return-void
.end method

.method public setDismissed()V
    .locals 1

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDismissed:Z

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 910
    :cond_0
    return-void
.end method

.method public setDotAppearAmount(F)V
    .locals 1
    .param p1, "dotAppearAmount"    # F

    .line 804
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 805
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 808
    :cond_0
    return-void
.end method

.method public setIconAppearAmount(F)V
    .locals 1
    .param p1, "iconAppearAmount"    # F

    .line 789
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 790
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 791
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 793
    :cond_0
    return-void
.end method

.method public setIconColor(IZ)V
    .locals 3
    .param p1, "iconColor"    # I
    .param p2, "animate"    # Z

    .line 613
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    if-eq v0, p1, :cond_3

    .line 614
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 618
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-ne v0, p1, :cond_1

    .line 619
    return-void

    .line 621
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_2

    .line 622
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 623
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 636
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    .line 639
    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIsInShelf(Z)V
    .locals 0
    .param p1, "isInShelf"    # Z

    .line 871
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsInShelf:Z

    .line 872
    return-void
.end method

.method public setNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 254
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Landroid/app/Notification;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onDismissListener"    # Ljava/lang/Runnable;

    .line 917
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    .line 918
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    .line 833
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    .line 834
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 571
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 572
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    .line 573
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 574
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    .line 576
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 812
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    .line 817
    :cond_0
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 819
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->applyIconAndColors()V

    .line 822
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDirty:Z

    .line 826
    :cond_2
    return-void
.end method

.method public setVisibleState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 684
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "animate"    # Z

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    .line 689
    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;)V
    .locals 6
    .param p1, "visibleState"    # I
    .param p2, "animate"    # Z
    .param p3, "endRunnable"    # Ljava/lang/Runnable;

    .line 697
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    .line 698
    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;J)V
    .locals 18
    .param p1, "visibleState"    # I
    .param p2, "animate"    # Z
    .param p3, "endRunnable"    # Ljava/lang/Runnable;
    .param p4, "duration"    # J

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 710
    const/4 v3, 0x0

    .line 711
    .local v3, "runnableAdded":Z
    iget v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-eq v1, v4, :cond_e

    .line 712
    iput v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 713
    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 716
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_1

    .line 717
    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 719
    :cond_1
    const/4 v6, 0x1

    if-eqz p2, :cond_a

    .line 720
    const/4 v7, 0x0

    .line 721
    .local v7, "targetAmount":F
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 722
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    if-nez v1, :cond_2

    .line 723
    const/high16 v7, 0x3f800000    # 1.0f

    .line 724
    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 726
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result v9

    .line 727
    .local v9, "currentAmount":F
    cmpl-float v10, v7, v9

    const-wide/16 v13, 0x0

    const/4 v4, 0x2

    const/16 v16, 0x0

    if-eqz v10, :cond_4

    .line 728
    sget-object v10, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v5, v4, [F

    aput v9, v5, v16

    aput v7, v5, v6

    invoke-static {v0, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 730
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 731
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v10, p4, v13

    if-nez v10, :cond_3

    const-wide/16 v11, 0x64

    goto :goto_0

    .line 732
    :cond_3
    nop

    .line 731
    move-wide/from16 v11, p4

    :goto_0
    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 733
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v10, Lcom/android/systemui/statusbar/StatusBarIconView$4;

    invoke-direct {v10, v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$4;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 740
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 741
    const/4 v3, 0x1

    .line 744
    :cond_4
    if-nez v1, :cond_5

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    :goto_1
    move v5, v15

    .line 745
    .end local v7    # "targetAmount":F
    .local v5, "targetAmount":F
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 746
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    if-ne v1, v6, :cond_6

    .line 747
    const/high16 v5, 0x3f800000    # 1.0f

    .line 748
    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 750
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

    move-result v8

    .line 751
    .end local v9    # "currentAmount":F
    .local v8, "currentAmount":F
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_9

    .line 752
    sget-object v9, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v4, v4, [F

    aput v8, v4, v16

    aput v5, v4, v6

    invoke-static {v0, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    .line 754
    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 755
    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v9, p4, v13

    if-nez v9, :cond_7

    const-wide/16 v9, 0x64

    goto :goto_2

    .line 756
    :cond_7
    nop

    .line 755
    move-wide/from16 v9, p4

    :goto_2
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 757
    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v6, v16

    :goto_3
    move v4, v6

    .line 758
    .local v4, "runRunnable":Z
    iget-object v6, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v9, Lcom/android/systemui/statusbar/StatusBarIconView$5;

    invoke-direct {v9, v0, v4, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$5;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    iget-object v6, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 768
    const/4 v3, 0x1

    .line 770
    .end local v4    # "runRunnable":Z
    .end local v5    # "targetAmount":F
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "currentAmount":F
    :cond_9
    goto :goto_6

    .line 771
    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_b

    move v5, v4

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    .line 772
    if-ne v1, v6, :cond_c

    goto :goto_5

    .line 773
    :cond_c
    if-nez v1, :cond_d

    .line 772
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_5

    .line 774
    :cond_d
    nop

    .line 772
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    .line 777
    :cond_e
    :goto_6
    if-nez v3, :cond_f

    .line 778
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    .line 780
    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarIconView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawable()V
    .locals 1

    .line 338
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    .line 339
    return-void
.end method

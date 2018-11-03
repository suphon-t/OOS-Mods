.class public Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;
.super Ljava/lang/Object;
.source "DarkIconDispatcherImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;


# static fields
.field private static PFLAG_FORCE_LAYOUT:I


# instance fields
.field private final DELAY_INTERVAL:I

.field private final MAX_RETRY_TIMES:I

.field private final TAG:Ljava/lang/String;

.field private mDarkIntensity:F

.field private mDarkModeIconColorSingleTone:I

.field private final mHandler:Landroid/os/Handler;

.field private mIconTint:I

.field private mLightModeIconColorSingleTone:I

.field private mReApplyIconTint:Ljava/lang/Runnable;

.field private final mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTintRetryTimes:I

.field private final mTintArea:Landroid/graphics/Rect;

.field private mTraceView:Landroid/view/View;

.field private final mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    const-string v0, "android.view.View"

    const-string v1, "PFLAG_FORCE_LAYOUT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/util/OPUtils;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->PFLAG_FORCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->MAX_RETRY_TIMES:I

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->DELAY_INTERVAL:I

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->TAG:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReApplyIconTint:Ljava/lang/Runnable;

    .line 59
    const v0, 0x7f060152

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkModeIconColorSingleTone:I

    .line 60
    const v0, 0x7f06027e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$oA-3cfsaKFqoqAQl8JID377YBJY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DarkIconDispatcherImpl$oA-3cfsaKFqoqAQl8JID377YBJY;-><init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$008(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    return v0
.end method

.method private isLayoutReadyBeforeApplyIconTint()Z
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTraceView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTraceView:Landroid/view/View;

    const-string v2, "android.view.View"

    const-string v3, "mPrivateFlags"

    invoke-static {v0, v2, v3, v1}, Lcom/android/systemui/util/OPUtils;->getIntField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "privateFlags":I
    sget v2, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->PFLAG_FORCE_LAYOUT:I

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 130
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_1
    return v1
.end method

.method public static synthetic lambda$oA-3cfsaKFqoqAQl8JID377YBJY(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->setIconTintInternal(F)V

    return-void
.end method

.method private setIconTintInternal(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .line 116
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    .line 117
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mLightModeIconColorSingleTone:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 117
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    .line 120
    return-void
.end method


# virtual methods
.method public addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 76
    return-void
.end method

.method public applyDark(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
    .locals 4
    .param p1, "object"    # Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 95
    return-void
.end method

.method public applyIconTint()V
    .locals 7

    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 155
    .local v0, "timeout":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->isLayoutReadyBeforeApplyIconTint()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReApplyIconTint:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 156
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReApplyIconTint:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    move v2, v1

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mDarkIntensity:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 160
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply tint time-out after retrying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mSetTintRetryTimes:I

    .line 169
    :goto_3
    return-void
.end method

.method public getTraceView()Landroid/view/View;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTraceView:Landroid/view/View;

    return-object v0
.end method

.method public getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object v0
.end method

.method public removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public setIconsDarkArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "darkArea"    # Landroid/graphics/Rect;

    .line 104
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    if-nez p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->applyIconTint()V

    .line 113
    return-void
.end method

.method public setTraceView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTraceView:Landroid/view/View;

    .line 173
    return-void
.end method

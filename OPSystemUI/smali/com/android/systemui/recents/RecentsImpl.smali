.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_SET:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private static mToggleFollowingTransitionStart:Z

.field private static mWaitingForTransitionStart:Z

.field protected static sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

.field protected static sLastPipTime:J


# instance fields
.field private mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field private mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private final mEmptyTaskStack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field private mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

.field private mResetToggleFlagListener:Ljava/lang/Runnable;

.field mTaskBarHeight:I

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field mTmpBounds:Landroid/graphics/Rect;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsImpl;->EMPTY_SET:Landroid/util/ArraySet;

    .line 228
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    .line 234
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mResetToggleFlagListener:Ljava/lang/Runnable;

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    .line 252
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 257
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 264
    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsImpl$2;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v2, 0xe1

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 274
    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$3;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    .line 286
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mEmptyTaskStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 289
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 290
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 294
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 297
    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    .line 298
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 301
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsImpl;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p1, "x1"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .param p2, "x2"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p3, "x3"    # Landroid/graphics/Rect;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$300()Landroid/util/ArraySet;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->EMPTY_SET:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsImpl;
    .param p1, "x1"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "x2"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .line 853
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 854
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 857
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 858
    .local v1, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 859
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 860
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 861
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 862
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 863
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .line 719
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 720
    .local v0, "plan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 721
    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "toTask"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 958
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 959
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 960
    .local v1, "width":I
    iget-object v2, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    .line 961
    .local v2, "height":I
    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_2

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 962
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    .line 963
    :try_start_0
    iget-boolean v5, p1, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    .line 964
    .local v5, "disabledInSafeMode":Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 971
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 972
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 973
    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 975
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3, p1, v6, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    .line 977
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 978
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v8, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 979
    iget v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    iget-object v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v8, v9, v6}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 982
    .end local v5    # "disabledInSafeMode":Z
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 984
    :cond_2
    return-object v3
.end method

.method public static getLastPipTime()J
    .locals 2

    .line 728
    sget-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-wide v0
.end method

.method private getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;
    .locals 11
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "windowOverrideRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;",
            ">;"
        }
    .end annotation

    .line 903
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    .line 906
    .local v0, "isLowRamDevice":Z
    new-instance v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/Task;-><init>()V

    .line 907
    .local v1, "toTask":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    .line 910
    .local v8, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 911
    .local v9, "toTaskRect":Landroid/graphics/RectF;
    new-instance v10, Lcom/android/systemui/recents/RecentsImpl$4;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object v2, v10

    move-object v3, p0

    move-object v5, v9

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/RecentsImpl$4;-><init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/os/Handler;Landroid/graphics/RectF;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 924
    .local v2, "future":Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 925
    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mResetToggleFlagListener:Ljava/lang/Runnable;

    .line 924
    :goto_0
    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->createAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .line 935
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 936
    .local v0, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    .line 937
    .local v1, "launchTask":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v1, :cond_0

    .line 938
    invoke-virtual {p2, v1}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    .line 941
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    .line 942
    invoke-virtual {p2, v1}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 946
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 947
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 948
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    .line 949
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v6, 0x0

    .line 948
    move-object v3, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 950
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v2
.end method

.method private getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "windowRectOverride"    # Landroid/graphics/Rect;

    .line 790
    if-eqz p1, :cond_0

    .line 791
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 792
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 790
    :goto_0
    return-object v0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "growTarget"    # I

    .line 1086
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1090
    .local v0, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1091
    .local v7, "displayRect":Landroid/graphics/Rect;
    const/4 v2, 0x4

    .line 1092
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1093
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v6

    .line 1091
    move v1, p1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1094
    return-object v0
.end method

.method public static synthetic lambda$preloadRecents$0(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 6

    .line 511
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 512
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 515
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v2, :cond_0

    .line 516
    return-void

    .line 519
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v3

    .line 520
    .local v3, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    new-instance v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 521
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 522
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v4

    .line 523
    .local v4, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 526
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 532
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 535
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .end local v4    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    :cond_1
    return-void
.end method

.method public static synthetic lambda$setWaitingForTransitionStart$1(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1

    .line 710
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    return-void
.end method

.method static synthetic lambda$startRecentsActivity$4(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .param p2, "future"    # Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    .line 1113
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 1114
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1115
    if-eqz p2, :cond_0

    .line 1116
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;->composeSpecsSynchronous()V

    .line 1118
    :cond_0
    return-void
.end method

.method public static synthetic lambda$startRecentsActivityAndDismissKeyguardIfNeeded$2(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 0
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .line 999
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    return-void
.end method

.method public static synthetic lambda$startRecentsActivityAndDismissKeyguardIfNeeded$3(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 8
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .line 998
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 999
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$p86QbP39-AERJwYL1CmDcPooyqY;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$p86QbP39-AERJwYL1CmDcPooyqY;-><init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1001
    return-void
.end method

.method private preloadIcon(I)V
    .locals 3
    .param p1, "runningTaskId"    # I

    .line 870
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 871
    .local v0, "launchOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 872
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 873
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 874
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 875
    return-void
.end method

.method private reloadResources()V
    .locals 9

    .line 742
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 744
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0705b1

    const v3, 0x7f0705b1

    const v4, 0x7f0705b1

    const v5, 0x7f0705b2

    const v6, 0x7f0705b1

    const v7, 0x7f0705b2

    const v8, 0x7f070590

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 753
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 754
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d01a1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 756
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutDirection(I)V

    .line 757
    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 11
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .line 1010
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1011
    .local v0, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 1013
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    const/4 v3, -0x1

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 1014
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    .line 1015
    :cond_0
    move v2, v3

    .line 1020
    .local v2, "runningTaskId":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_2

    .line 1022
    :cond_1
    new-instance v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 1024
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1025
    :cond_3
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 1028
    :cond_4
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v4

    .line 1029
    .local v4, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_5

    move v5, v6

    goto :goto_1

    :cond_5
    move v5, v7

    .line 1030
    .local v5, "hasRecentTasks":Z
    :goto_1
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    if-eqz v5, :cond_6

    move v8, v6

    goto :goto_2

    :cond_6
    move v8, v7

    .line 1034
    .local v8, "useThumbnailTransition":Z
    :goto_2
    if-nez v8, :cond_7

    iget-boolean v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v9, :cond_7

    move v9, v6

    goto :goto_3

    :cond_7
    move v9, v7

    :goto_3
    iput-boolean v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 1035
    if-nez v8, :cond_9

    iget-boolean v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    move v6, v7

    nop

    :cond_9
    :goto_4
    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 1036
    iput-boolean v7, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    .line 1037
    nop

    .line 1038
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->isNextLaunchTargetPip(J)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 1039
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 1040
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 1041
    iput v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1042
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1046
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    .line 1050
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 1053
    invoke-direct {p0, p4}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 1054
    .local v6, "windowOverrideRect":Landroid/graphics/Rect;
    invoke-direct {p0, v4, v6}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 1057
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 1058
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v7

    .line 1061
    .local v7, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    iget v9, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 1062
    iget v9, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 1064
    const/4 v9, 0x0

    if-nez p3, :cond_a

    .line 1065
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v10, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-direct {p0, v3, v9}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    .line 1067
    return-void

    .line 1071
    :cond_a
    if-eqz v8, :cond_b

    .line 1073
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;

    move-result-object v3

    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;>;"
    goto :goto_6

    .line 1077
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;>;"
    :cond_b
    new-instance v3, Landroid/util/Pair;

    if-eqz v5, :cond_c

    .line 1078
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v10

    goto :goto_5

    .line 1079
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v10

    :goto_5
    invoke-direct {v3, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1081
    .restart local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;>;"
    :goto_6
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/app/ActivityOptions;

    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    .line 1082
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 1083
    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 5
    .param p1, "opts"    # Landroid/app/ActivityOptions;
    .param p2, "future"    # Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    .line 1106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1111
    new-instance v1, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;-><init>()V

    .line 1112
    .local v1, "hideMenuEvent":Lcom/android/systemui/recents/events/component/HidePipMenuEvent;
    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1119
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1123
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mEmptyTaskStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 1124
    return-void
.end method

.method private updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "stackLayout"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .param p2, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p3, "windowRect"    # Landroid/graphics/Rect;

    .line 761
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 762
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 763
    .local v8, "displayRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v1

    .line 764
    .local v9, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 769
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 770
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 772
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 774
    :cond_0
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 776
    :cond_1
    invoke-direct {p0, v9, p3, v8}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 777
    invoke-virtual {p3, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 780
    invoke-virtual {p1, v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 781
    if-eqz p2, :cond_2

    .line 782
    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v2, v8

    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 784
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 785
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v8, p3, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 787
    :cond_2
    return-void
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .line 805
    invoke-direct {p0, p2}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 806
    .local v0, "windowRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 807
    .local v1, "taskViewWidth":I
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v2

    .line 808
    .local v2, "useGridLayout":Z
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    invoke-direct {p0, v3, p1, v0}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 809
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 810
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    .line 811
    .local v4, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeAllTasks(Z)V

    .line 812
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, p1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 814
    if-eqz v2, :cond_0

    .line 815
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-result-object v5

    .line 816
    .local v5, "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    .line 817
    nop

    .line 818
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 817
    invoke-virtual {v5, v3, v6, v7, v4}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 819
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v1, v6

    .line 820
    .end local v5    # "gridLayout":Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 822
    .local v5, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 823
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 828
    .end local v4    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v5    # "taskViewBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    if-lez v1, :cond_5

    .line 829
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    .line 830
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v5

    if-ne v5, v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 831
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v5, v6, :cond_4

    .line 832
    :cond_2
    if-eqz v2, :cond_3

    .line 833
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setShouldDarkenBackgroundColor(Z)V

    .line 834
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 836
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    .line 837
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 838
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 839
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 837
    invoke-virtual {v5, v7, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 841
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    invoke-virtual {v5, v3, v3, v1, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    .line 842
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 844
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .line 540
    return-void
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .line 891
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0100d9

    const v3, 0x7f0100da

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .line 881
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0100db

    const v3, 0x7f0100dc

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .line 402
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    .line 408
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 409
    return-void

    .line 414
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 416
    return-void
.end method

.method public onAnimationFinished()V
    .locals 2

    .line 1130
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1131
    return-void
.end method

.method public onBootCompleted()V
    .locals 4

    .line 309
    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 315
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 316
    .local v0, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    new-instance v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 317
    .local v1, "plan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 318
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 319
    .local v2, "launchOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 320
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 321
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 322
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 323
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDraggingInRecents(F)V
    .locals 2
    .param p1, "distanceFromTop"    # F

    .line 543
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 544
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2
    .param p1, "velocity"    # F

    .line 547
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 548
    return-void
.end method

.method public onShowCurrentUserToast(II)V
    .locals 1
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .line 551
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 552
    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 349
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    .line 352
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .line 339
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    .line 340
    return-void
.end method

.method public preloadRecents()V
    .locals 3

    .line 497
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    return-void

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 503
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$j3kxRIim5t_10M0HDPUojNhJV5I;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$j3kxRIim5t_10M0HDPUojNhJV5I;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    return-void
.end method

.method public setWaitingForTransitionStart(Z)V
    .locals 2
    .param p1, "waitingForTransitionStart"    # Z

    .line 704
    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    if-ne v0, p1, :cond_0

    .line 705
    return-void

    .line 708
    :cond_0
    sput-boolean p1, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    .line 709
    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$8KagPhOavaRXCFab5YBHz8Lgk54;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$8KagPhOavaRXCFab5YBHz8Lgk54;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    .line 713
    return-void
.end method

.method public showNextTask()V
    .locals 15

    .line 558
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 559
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 560
    .local v1, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 561
    .local v2, "plan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 562
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    .line 565
    .local v3, "focusedStack":Lcom/android/systemui/shared/recents/model/TaskStack;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 569
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 570
    .local v4, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v4, :cond_1

    return-void

    .line 573
    :cond_1
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 574
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 576
    .local v5, "isRunningTaskInHomeStack":Z
    :goto_0
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 577
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    const/4 v8, 0x0

    .line 578
    .local v8, "toTask":Lcom/android/systemui/shared/recents/model/Task;
    const/4 v9, 0x0

    .line 579
    .local v9, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 580
    .local v10, "taskCount":I
    add-int/lit8 v11, v10, -0x1

    .local v11, "i":I
    :goto_1
    if-lt v11, v7, :cond_5

    .line 581
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shared/recents/model/Task;

    .line 582
    .local v12, "task":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v5, :cond_3

    .line 583
    add-int/lit8 v7, v11, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    .line 584
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0100df

    const v14, 0x7f0100d8

    invoke-static {v7, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 587
    goto :goto_2

    .line 588
    :cond_3
    iget-object v13, v12, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v13, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v13, v14, :cond_4

    .line 589
    add-int/lit8 v7, v11, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    .line 590
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0100e2

    const v14, 0x7f0100e1

    invoke-static {v7, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 593
    goto :goto_2

    .line 580
    .end local v12    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 598
    .end local v11    # "i":I
    :cond_5
    :goto_2
    if-nez v8, :cond_6

    .line 599
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0100e0

    .line 600
    invoke-static {v7, v11}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 599
    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 602
    return-void

    .line 606
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v7

    iget-object v11, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v9, v12, v12}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    .line 608
    return-void

    .line 565
    .end local v4    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5    # "isRunningTaskInHomeStack":Z
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .end local v8    # "toTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v9    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v10    # "taskCount":I
    :cond_7
    :goto_3
    return-void
.end method

.method public showRecents(ZZZI)V
    .locals 10
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .line 356
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 357
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 358
    .local v1, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v3

    .line 360
    .local v3, "isRecentsVisible":Z
    iget-boolean v4, v1, Landroid/util/MutableBoolean;->value:Z

    .line 362
    .local v4, "fromHome":Z
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v6

    .line 364
    .local v5, "launchedWhileDockingTask":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 365
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 366
    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 367
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 369
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_1

    .line 370
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 376
    if-nez p1, :cond_2

    .line 377
    return-void

    .line 379
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_1

    .line 380
    :cond_3
    if-eqz p1, :cond_4

    .line 383
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 384
    return-void

    .line 389
    :cond_4
    :goto_1
    if-nez v5, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v7, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v2

    .line 390
    .local v7, "forceVisible":Z
    :goto_3
    if-nez v7, :cond_7

    if-nez v3, :cond_a

    .line 392
    :cond_7
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    .line 393
    .local v8, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v9, v1, Landroid/util/MutableBoolean;->value:Z

    if-nez v9, :cond_9

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, v6

    nop

    :cond_9
    :goto_4
    invoke-virtual {p0, v8, v2, p3, p4}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivityAndDismissKeyguardIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v7    # "forceVisible":Z
    .end local v8    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_a
    goto :goto_5

    .line 396
    :catch_0
    move-exception v2

    .line 397
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "RecentsImpl"

    const-string v7, "Failed to launch RecentsActivity"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_5
    return-void
.end method

.method public splitPrimaryTask(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;

    .line 694
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 698
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 701
    :cond_0
    return-void
.end method

.method protected startRecentsActivityAndDismissKeyguardIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 13
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .line 994
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v6

    .line 995
    .local v6, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;

    move-object v7, v1

    move-object v8, p0

    move-object v9, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;-><init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .line 1004
    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    .line 1006
    :goto_0
    return-void
.end method

.method public toggleRecents(I)V
    .locals 11
    .param p1, "growTarget"    # I

    .line 419
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    return-void

    .line 428
    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 429
    sput-boolean v1, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    .line 430
    return-void

    .line 433
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 434
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 435
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 438
    :try_start_0
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 439
    .local v2, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long/2addr v3, v5

    .line 441
    .local v3, "elapsedTime":J
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 442
    .local v5, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v6

    const-wide/16 v7, 0x15e

    if-eqz v6, :cond_8

    .line 443
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    .line 444
    .local v6, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v9

    .line 445
    .local v9, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v10, v9, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_6

    .line 446
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v7, :cond_5

    .line 448
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    move v0, v1

    nop

    .line 449
    .local v0, "isQuickTap":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 450
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v7}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 452
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    invoke-direct {v7}, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 454
    .end local v0    # "isQuickTap":Z
    :goto_0
    goto :goto_1

    .line 456
    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 463
    :cond_6
    cmp-long v0, v3, v7

    if-gez v0, :cond_7

    .line 464
    return-void

    .line 467
    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 470
    :goto_1
    return-void

    .line 476
    .end local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v9    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_8
    cmp-long v0, v3, v7

    if-gez v0, :cond_9

    .line 477
    return-void

    .line 482
    :cond_9
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 483
    .local v0, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v6, v2, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {p0, v0, v6, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivityAndDismissKeyguardIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    .line 487
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-string v6, "recentapps"

    invoke-virtual {v1, v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v0    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v3    # "elapsedTime":J
    .end local v5    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    goto :goto_2

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "RecentsImpl"

    const-string v2, "Failed to launch RecentsActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return-void
.end method

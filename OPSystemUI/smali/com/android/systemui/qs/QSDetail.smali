.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$Callback;
    }
.end annotation


# instance fields
.field private mAnimatingOpen:Z

.field private mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private mClosingDetail:Z

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field protected mDetailDoneButton:Landroid/widget/TextView;

.field protected mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFooter:Landroid/view/View;

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mOpenX:I

.field private mOpenY:I

.field protected mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderBack:Landroid/widget/ImageView;

.field protected mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field protected mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field protected mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mScanState:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTriggeredExpand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 350
    new-instance v0, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    .line 390
    new-instance v0, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 412
    new-instance v0, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSDetail;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSDetail;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/QSDetail;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSDetail;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSDetail;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetail;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    return-object v0
.end method

.method private checkPendingAnimations()V
    .locals 2

    .line 346
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 347
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 346
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    .line 348
    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 328
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    .line 329
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 330
    .local v0, "anim":Landroid/graphics/drawable/Animatable;
    if-eqz p1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 333
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 334
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 339
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$uWzoJtW0gRQtylxIzOBLYDei0eA;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/-$$Lambda$uWzoJtW0gRQtylxIzOBLYDei0eA;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 340
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    :goto_0
    return-void
.end method

.method private handleToggleStateChanged(ZZ)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "toggleEnabled"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 318
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 324
    return-void
.end method

.method static synthetic lambda$setupDetailFooter$0(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;Landroid/view/View;)V
    .locals 3
    .param p0, "adapter"    # Lcom/android/systemui/plugins/qs/DetailAdapter;
    .param p1, "settingsIntent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .line 288
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    .line 289
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v1

    .line 288
    const/16 v2, 0x3a1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 290
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 291
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 292
    return-void
.end method

.method private updateDetailText()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f1104e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f110500

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    return-void
.end method


# virtual methods
.method protected animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "visibleDiff"    # Z
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 270
    if-eqz p3, :cond_4

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 273
    :cond_2
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->setAlpha(F)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 282
    :cond_4
    :goto_2
    return-void
.end method

.method public handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
    .locals 10
    .param p1, "adapter"    # Lcom/android/systemui/plugins/qs/DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "toggleQs"    # Z

    .line 207
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 208
    .local v2, "showingDetail":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSDetail;->setClickable(Z)V

    .line 209
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 211
    if-eqz p4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v4, :cond_1

    .line 212
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 213
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4, v5}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue;

    .line 214
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/CommandQueue;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 218
    :goto_1
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 219
    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    goto :goto_2

    .line 222
    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 223
    iget p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    .line 224
    if-eqz p4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz v4, :cond_3

    .line 225
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4, v5}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue;

    .line 226
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 231
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    if-eqz p1, :cond_5

    move v5, v0

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    if-eq v4, v5, :cond_6

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v1

    .line 232
    .local v4, "visibleDiff":Z
    :goto_5
    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-ne v5, p1, :cond_7

    return-void

    .line 233
    :cond_7
    const/4 v5, 0x0

    .line 234
    .local v5, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz p1, :cond_9

    .line 235
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v3

    .line 236
    .local v3, "viewCacheIndex":I
    iget-object v6, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {p1, v6, v7, v8}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 238
    .local v6, "detailView":Landroid/view/View;
    if-eqz v6, :cond_8

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetail;->setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 242
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 243
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    const-class v7, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 246
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    const v8, 0x7f1100c0

    new-array v0, v0, [Ljava/lang/Object;

    .line 248
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v0, v1

    .line 246
    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 249
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 251
    .end local v5    # "listener":Landroid/animation/Animator$AnimatorListener;
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->setVisibility(I)V

    .line 252
    .end local v3    # "viewCacheIndex":I
    .end local v6    # "detailView":Landroid/view/View;
    goto :goto_6

    .line 238
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .restart local v3    # "viewCacheIndex":I
    .restart local v5    # "listener":Landroid/animation/Animator$AnimatorListener;
    .restart local v6    # "detailView":Landroid/view/View;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must return detail view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    .end local v3    # "viewCacheIndex":I
    .end local v6    # "detailView":Landroid/view/View;
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v6, :cond_a

    .line 254
    const-class v6, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/logging/MetricsLogger;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 256
    :cond_a
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    .line 257
    iput-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 258
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 259
    .end local v5    # "listener":Landroid/animation/Animator$AnimatorListener;
    .local v3, "listener":Landroid/animation/Animator$AnimatorListener;
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    .line 260
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v5, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    .line 264
    move-object v0, v3

    .end local v3    # "listener":Landroid/animation/Animator$AnimatorListener;
    .restart local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    :goto_6
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->sendAccessibilityEvent(I)V

    .line 266
    invoke-virtual {p0, p2, p3, v4, v0}, Lcom/android/systemui/qs/QSDetail;->animateDetailVisibleDiff(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 267
    return-void
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

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

    .line 90
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f070533

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 111
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 112
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 113
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 114
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0a0323

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 119
    const v0, 0x7f0a0324

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 123
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 125
    new-instance v0, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    .line 133
    .local v0, "doneListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x10204a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderBack:Landroid/widget/ImageView;

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->updateThemeColor()V

    .line 140
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 102
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderBack:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 106
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "qsExpanded"    # Z

    .line 181
    if-nez p1, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 184
    :cond_0
    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 3
    .param p1, "fullyExpanded"    # Z

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-eq v0, p1, :cond_0

    .line 175
    const-string v0, "QSDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFullyExpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    .line 178
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 167
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 168
    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "header"    # Lcom/android/systemui/qs/QuickStatusBarHeader;
    .param p3, "footer"    # Landroid/view/View;

    .line 159
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 160
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 161
    iput-object p3, p0, Lcom/android/systemui/qs/QSDetail;->mFooter:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    .line 164
    return-void
.end method

.method protected setupDetailFooter(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 285
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 286
    .local v0, "settingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$QSDetail$NHQwfesA2Z6J0e0FBlLg3IIEATQ;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/qs/-$$Lambda$QSDetail$NHQwfesA2Z6J0e0FBlLg3IIEATQ;-><init>(Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method protected setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    .line 298
    .local v0, "toggleState":Ljava/lang/Boolean;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 300
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :goto_0
    return-void
.end method

.method protected updateThemeColor()V
    .locals 5

    .line 144
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 145
    .local v0, "primaryTextColor":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 146
    .local v1, "buttonColor":I
    sget v2, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    invoke-static {v2}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 148
    .local v2, "primaryColor":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderBack:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSDetail;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 155
    return-void
.end method

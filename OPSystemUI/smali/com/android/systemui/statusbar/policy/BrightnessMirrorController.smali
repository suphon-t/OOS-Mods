.class public Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private final mBrightnessMirrorListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInt2Cache:[I

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private final mVisibilityCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "statusBarWindow"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowView;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "visibilityCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 51
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 52
    const v0, 0x7f0a0297

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$BrightnessMirrorController$6Ez050oVQOhwQ3Mf-NjJAvUx4_k;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$BrightnessMirrorController$6Ez050oVQOhwQ3Mf-NjJAvUx4_k;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlphaEndAction(Ljava/lang/Runnable;)V

    .line 56
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 57
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method

.method private reinflate()V
    .locals 6

    .line 122
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120546

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 124
    .local v0, "qsThemeContext":Landroid/view/ContextThemeWrapper;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 125
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->removeView(Landroid/view/View;)V

    .line 126
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v4, 0x0

    const v5, 0x7f0d0033

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->addView(Landroid/view/View;I)V

    .line 130
    nop

    .local v4, "i":I
    :goto_0
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;->onBrightnessMirrorReinflated(Landroid/view/View;)V

    .line 130
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 133
    .end local v4    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    .line 137
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    return-void
.end method

.method public getMirror()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    return-object v0
.end method

.method public hideMirror()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/16 v1, 0xff

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlpha(IZ)Z

    .line 81
    return-void
.end method

.method public hideMirrorImmediately()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 72
    .local v0, "visibility":I
    if-nez v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_1
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    .line 119
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    .line 115
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    return-void
.end method

.method public setLocation(Landroid/view/View;)V
    .locals 6
    .param p1, "original"    # Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 89
    .local v0, "originalX":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 90
    .local v2, "originalY":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 92
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 93
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v1, v4, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 94
    .local v1, "mirrorX":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v3, v4, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 95
    .local v3, "mirrorY":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int v5, v0, v1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 96
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int v5, v2, v3

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 97
    return-void
.end method

.method public showMirror()V
    .locals 4

    .line 61
    const-string v0, "quick_bright"

    const-string v1, "manual"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlpha(IZ)Z

    .line 66
    return-void
.end method

.method public updateResources()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 107
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f070569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 108
    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 109
    const v2, 0x7f0b005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method

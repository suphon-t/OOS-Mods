.class public Lcom/android/systemui/statusbar/car/CarNavigationButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "CarNavigationButton.java"


# instance fields
.field private mBroadcastIntent:Z

.field private mContext:Landroid/content/Context;

.field private mIconResourceId:I

.field private mIntent:Ljava/lang/String;

.field private mLongIntent:Ljava/lang/String;

.field private mSelected:Z

.field private mSelectedAlpha:F

.field private mSelectedIconResourceId:I

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelected:Z

    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelectedAlpha:F

    .line 29
    iput v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mUnselectedAlpha:F

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mContext:Landroid/content/Context;

    .line 37
    sget-object v1, Lcom/android/systemui/R$styleable;->CarNavigationButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 39
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIntent:Ljava/lang/String;

    .line 40
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mLongIntent:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mBroadcastIntent:Z

    .line 42
    iget v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelectedAlpha:F

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelectedAlpha:F

    .line 44
    iget v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mUnselectedAlpha:F

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mUnselectedAlpha:F

    .line 46
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIconResourceId:I

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIconResourceId:I

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelectedIconResourceId:I

    .line 50
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/statusbar/car/CarNavigationButton;Landroid/content/Intent;Landroid/view/View;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mBroadcastIntent:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarNavigationButton"

    const-string v2, "Failed to launch intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/statusbar/car/CarNavigationButton;Landroid/content/Intent;Landroid/view/View;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarNavigationButton"

    const-string v2, "Failed to launch intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onFinishInflate()V

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mUnselectedAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setAlpha(F)V

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIntent:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIntent:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$o-nXIZktyFUCdG5qz6xMJmfysfM;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$o-nXIZktyFUCdG5qz6xMJmfysfM;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationButton;Landroid/content/Intent;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    nop

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mLongIntent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mLongIntent:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 84
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$JmPpKNHLRTKzKT3BOWLrrGz-iXU;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarNavigationButton$JmPpKNHLRTKzKT3BOWLrrGz-iXU;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationButton;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    nop

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to attach long press intent"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to attach intent"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .line 103
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setSelected(Z)V

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelected:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelectedAlpha:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mUnselectedAlpha:F

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setAlpha(F)V

    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mSelectedIconResourceId:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationButton;->mIconResourceId:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setImageResource(I)V

    .line 107
    return-void
.end method

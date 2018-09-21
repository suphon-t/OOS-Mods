.class public Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
.super Ljava/lang/Object;
.source "NavigationBarGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mConfirm:Ljava/lang/Runnable;

.field private mConfirmed:Z

.field private mContentWindow:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

.field private mRotation:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mWindowToken:Landroid/os/IBinder;

    .line 393
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirm:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mWindowManager:Landroid/view/WindowManager;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->isConfirmed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirmed:Z

    .line 80
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 81
    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirmed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirmed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->saveSetting()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->handleHide()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mRotation:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
    .param p1, "x1"    # I

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mRotation:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .line 143
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mRotation:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mRotation:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    const/4 v0, -0x1

    .line 150
    .local v0, "width":I
    const/4 v3, -0x2

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    .line 144
    .end local v0    # "width":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 146
    .local v0, "fontScale":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07036a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 147
    .local v3, "width":I
    const/4 v0, -0x1

    .line 148
    .local v0, "height":I
    nop

    .line 150
    :goto_1
    nop

    .line 153
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mRotation:I

    if-ne v4, v2, :cond_2

    .line 154
    const/4 v1, 0x5

    .local v1, "gravity":I
    :goto_2
    goto :goto_3

    .line 155
    .end local v1    # "gravity":I
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mRotation:I

    if-ne v2, v1, :cond_3

    .line 156
    const/4 v1, 0x3

    goto :goto_2

    .line 158
    :cond_3
    const/16 v1, 0x50

    .line 160
    .restart local v1    # "gravity":I
    :goto_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v2
.end method

.method private getContentWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 124
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 134
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 135
    const-string v1, "NavigationBarGuide"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    const v1, 0x7f12000e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 138
    return-object v0
.end method

.method private handleHide()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContentWindow:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    if-eqz v0, :cond_1

    .line 117
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarGuide"

    const-string v1, "Hiding navigation bar guide confirmation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContentWindow:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContentWindow:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 121
    :cond_1
    return-void
.end method

.method private handleShow()V
    .locals 3

    .line 377
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarGuide"

    const-string v1, "Showing navigation bar guide confirmation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContentWindow:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContentWindow:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->setSystemUiVisibility(I)V

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->getContentWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 388
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContentWindow:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    .line 391
    return-void
.end method

.method private isConfirmed()Z
    .locals 6

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "confirmed":Z
    const/4 v1, 0x0

    .line 87
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigation_bar_guide_confirmation"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 89
    const-string v2, "confirmed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 90
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "NavigationBarGuide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded confirmed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "NavigationBarGuide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading confirmations, value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method private saveSetting()V
    .locals 4

    .line 103
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarGuide"

    const-string v1, "saveSetting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirmed:Z

    if-eqz v0, :cond_1

    const-string v0, "confirmed"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 106
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_guide_confirmation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "NavigationBarGuide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "NavigationBarGuide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving confirmations, mConfirmed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method public show()V
    .locals 4

    .line 164
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show DEBUG_SHOW_EVERY_TIME=false, mConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mConfirmed:Z

    if-eqz v0, :cond_1

    .line 169
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    return-void
.end method

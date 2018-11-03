.class public Lcom/android/systemui/assist/AssistDisclosure;
.super Ljava/lang/Object;
.source "AssistDisclosure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

.field private mViewAdded:Z

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistDisclosure$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/assist/AssistDisclosure;

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure;->show()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/assist/AssistDisclosure;

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure;->hide()V

    return-void
.end method

.method private hide()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    .line 85
    :cond_0
    return-void
.end method

.method private show()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;-><init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7df

    const v2, 0x80508

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 73
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "AssistDisclosure"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    .line 78
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

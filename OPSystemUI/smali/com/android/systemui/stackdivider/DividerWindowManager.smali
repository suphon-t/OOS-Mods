.class public Lcom/android/systemui/stackdivider/DividerWindowManager;
.super Ljava/lang/Object;
.source "DividerWindowManager.java"


# instance fields
.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 48
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;II)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 51
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f2

    const v4, 0x20840028

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "DockedStackDivider"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 60
    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    .line 65
    return-void
.end method

.method public remove()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    .line 72
    return-void
.end method

.method public setSlippery(Z)V
    .locals 4
    .param p1, "slippery"    # Z

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "changed":Z
    const/high16 v1, 0x20000000

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 81
    const/4 v0, 0x1

    .line 83
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_2
    return-void
.end method

.method public setTouchable(Z)V
    .locals 4
    .param p1, "touchable"    # Z

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "changed":Z
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    const/4 v0, 0x1

    .line 97
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :cond_2
    return-void
.end method

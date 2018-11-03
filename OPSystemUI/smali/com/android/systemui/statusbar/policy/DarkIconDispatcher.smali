.class public interface abstract Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;
.super Ljava/lang/Object;
.source "DarkIconDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
    }
.end annotation


# static fields
.field public static final sTmpInt2:[I

.field public static final sTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    return-void
.end method

.method public static getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F
    .locals 1
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "intensity"    # F

    .line 77
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return p2

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getTint(Landroid/graphics/Rect;Landroid/view/View;I)I
    .locals 3
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 56
    const/4 v0, 0x1

    .line 57
    .local v0, "canApplyIgnoreColor":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "qsIcon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 62
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const v1, -0x333334

    return v1

    .line 64
    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    return p2

    .line 68
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 9
    .param p0, "area"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 90
    return v1

    .line 92
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    sget-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 94
    sget-object v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->sTmpInt2:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 96
    .local v0, "left":I
    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 97
    .local v3, "intersectStart":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 98
    .local v4, "intersectEnd":I
    sub-int v5, v4, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 100
    .local v5, "intersectAmount":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    if-gtz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    .line 101
    .local v6, "coversFullStatusBar":Z
    :goto_0
    const/4 v7, 0x2

    mul-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v2

    .line 102
    .local v7, "majorityOfWidth":Z
    :goto_1
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method


# virtual methods
.method public abstract addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract applyDark(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract applyIconTint()V
.end method

.method public abstract getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.end method

.method public abstract removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract setIconsDarkArea(Landroid/graphics/Rect;)V
.end method

.method public abstract setTraceView(Landroid/view/View;)V
.end method

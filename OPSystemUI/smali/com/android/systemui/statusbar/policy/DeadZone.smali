.class public Lcom/android/systemui/statusbar/policy/DeadZone;
.super Ljava/lang/Object;
.source "DeadZone.java"


# instance fields
.field private final mDebugFlash:Ljava/lang/Runnable;

.field private mDecay:I

.field private mDisplayRotation:I

.field private mFlashFrac:F

.field private mHold:I

.field private mLastPokeTime:J

.field private final mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mShouldFlash:Z

.field private mSizeMax:I

.field private mSizeMin:I

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mVertical:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeadZone$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DeadZone$1;-><init>(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DeadZone;->onConfigurationChanged(I)V

    .line 74
    return-void
.end method

.method private getSize(J)F
    .locals 6
    .param p1, "now"    # J

    .line 81
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    sub-long v0, p1, v0

    .line 84
    .local v0, "dt":J
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 85
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    int-to-float v2, v2

    return v2

    .line 86
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 87
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    return v2

    .line 88
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    int-to-long v4, v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DeadZone;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    return v2
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .line 77
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private poke(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    .line 102
    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    .line 104
    const v1, 0x7f070375

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    .line 105
    const v1, 0x7f070376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    .line 106
    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 107
    .local v1, "index":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    .line 113
    const v2, 0x7f050009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DeadZone;->setFlashOnTouchCapture(Z)V

    .line 114
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "can"    # Landroid/graphics/Canvas;

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v0

    float-to-int v0, v0

    .line 190
    .local v0, "size":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 191
    iget v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 200
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 201
    .local v1, "frac":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/16 v3, 0xdd

    const/16 v4, 0xee

    const/16 v5, 0xaa

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 206
    return-void

    .line 186
    .end local v0    # "size":I
    .end local v1    # "frac":F
    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 125
    return v0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 129
    .local v1, "action":I
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 131
    return v4

    .line 132
    :cond_1
    if-nez v1, :cond_9

    .line 136
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoDim()V

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v3

    float-to-int v3, v3

    .line 141
    .local v3, "size":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    if-eqz v5, :cond_6

    .line 142
    iget v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    if-ne v5, v2, :cond_4

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    move v2, v4

    .local v2, "consumeEvent":Z
    :goto_1
    goto :goto_3

    .line 145
    .end local v2    # "consumeEvent":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    move v2, v4

    goto :goto_1

    .line 148
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v0

    .line 150
    .restart local v2    # "consumeEvent":Z
    :goto_3
    if-eqz v2, :cond_9

    .line 152
    const-string v4, "DeadZone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "consuming errant click: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v4, :cond_8

    .line 155
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->post(Ljava/lang/Runnable;)Z

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    .line 161
    :cond_8
    return v0

    .line 165
    .end local v2    # "consumeEvent":Z
    .end local v3    # "size":I
    :cond_9
    return v0
.end method

.method public setFlashOnTouchCapture(Z)V
    .locals 1
    .param p1, "dbg"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    .line 95
    return-void
.end method

.class public Landroid/support/v7/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;,
        Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final sRemoteIndicatorCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttachedToWindow:Z

.field private mButtonTint:Landroid/content/res/ColorStateList;

.field private final mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

.field private mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 107
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 112
    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 121
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 125
    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedButtonContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 91
    invoke-static {}, Landroid/support/v7/app/MediaRouteDialogFactory;->getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 126
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 129
    new-instance v0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    .line 131
    sget-object v0, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_mediaRouteButtonTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    .line 134
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    .line 136
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    .line 138
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 140
    .local v2, "remoteIndicatorResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    if-eqz v2, :cond_1

    .line 143
    sget-object v3, Landroid/support/v7/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 144
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 145
    .local v3, "remoteIndicatorState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v4, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroid/support/v7/app/MediaRouteButton;I)V

    iput-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 149
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    .end local v3    # "remoteIndicatorState":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setClickable(Z)V

    .line 155
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .line 79
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/v7/app/MediaRouteButton;Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;)Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/MediaRouteButton;
    .param p1, "x1"    # Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 79
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    return-object p1
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 279
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 280
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 281
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 283
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .line 269
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 271
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    return-object v1

    .line 273
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateContentDescription()V
    .locals 2

    .line 529
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v0, :cond_0

    .line 530
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connecting:I

    .local v0, "resId":I
    :goto_0
    goto :goto_1

    .line 531
    .end local v0    # "resId":I
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v0, :cond_1

    .line 532
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connected:I

    goto :goto_0

    .line 534
    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_disconnected:I

    .line 536
    .restart local v0    # "resId":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 537
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 325
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 327
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 329
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 330
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->invalidate()V

    .line 332
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 383
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 404
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 407
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 411
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 309
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 315
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 317
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_1

    .line 318
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 320
    :cond_1
    :goto_0
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 416
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 420
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 421
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 468
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 470
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    .line 472
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 473
    .local v1, "right":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    .line 474
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 476
    .local v3, "bottom":I
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 477
    .local v4, "drawWidth":I
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 478
    .local v5, "drawHeight":I
    sub-int v6, v1, v0

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    .line 479
    .local v6, "drawLeft":I
    sub-int v7, v3, v2

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    .line 481
    .local v7, "drawTop":I
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v6, v4

    add-int v10, v7, v5

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 485
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v4    # "drawWidth":I
    .end local v5    # "drawHeight":I
    .end local v6    # "drawLeft":I
    .end local v7    # "drawTop":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 425
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 426
    .local v0, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 427
    .local v1, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 428
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 430
    .local v3, "heightMode":I
    iget v4, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 431
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_0

    .line 430
    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 432
    .local v4, "width":I
    iget v5, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 433
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    nop

    .line 432
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 436
    .local v5, "height":I
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    .line 445
    move v8, v4

    goto :goto_1

    .line 438
    :cond_2
    move v8, v0

    .line 439
    .local v8, "measuredWidth":I
    goto :goto_1

    .line 441
    .end local v8    # "measuredWidth":I
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 442
    .restart local v8    # "measuredWidth":I
    nop

    .line 445
    :goto_1
    nop

    .line 450
    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    .line 459
    move v6, v5

    goto :goto_2

    .line 452
    :cond_4
    move v6, v1

    .line 453
    .local v6, "measuredHeight":I
    goto :goto_2

    .line 455
    .end local v6    # "measuredHeight":I
    :cond_5
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 456
    .restart local v6    # "measuredHeight":I
    nop

    .line 459
    :goto_2
    nop

    .line 463
    invoke-virtual {p0, v8, v6}, Landroid/support/v7/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 464
    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 300
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 301
    .local v0, "handled":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->playSoundEffect(I)V

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->showDialog()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method refreshRoute()V
    .locals 7

    .line 488
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 489
    .local v0, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 490
    .local v1, "isRemote":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    nop

    .line 491
    .local v2, "isConnecting":Z
    :cond_1
    const/4 v4, 0x0

    .line 492
    .local v4, "needsRefresh":Z
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v5, v1, :cond_2

    .line 493
    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    .line 494
    const/4 v4, 0x1

    .line 496
    :cond_2
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v5, v2, :cond_3

    .line 497
    iput-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    .line 498
    const/4 v4, 0x1

    .line 501
    :cond_3
    if-eqz v4, :cond_4

    .line 502
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    .line 503
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 505
    :cond_4
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_5

    .line 506
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v5, v6, v3}, Landroid/support/v7/media/MediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/app/MediaRouteButton;->setEnabled(Z)V

    .line 509
    :cond_5
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_9

    .line 511
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 512
    .local v5, "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v6, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v6, :cond_7

    .line 513
    if-nez v4, :cond_6

    if-eqz v2, :cond_9

    :cond_6
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_9

    .line 514
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 516
    :cond_7
    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    .line 519
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 520
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 522
    :cond_8
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 525
    .end local v5    # "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_9
    :goto_1
    return-void
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 338
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->cancel(Z)Z

    .line 342
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 344
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 347
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 348
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 349
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 351
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 353
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 355
    :cond_4
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 358
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 359
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_7

    .line 360
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 361
    .local v1, "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v2, :cond_5

    .line 362
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 363
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 365
    :cond_5
    iget-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v2, :cond_7

    .line 366
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 367
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 369
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 372
    .end local v1    # "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_7
    :goto_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 395
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 400
    :cond_1
    return-void
.end method

.method public showDialog()Z
    .locals 5

    .line 237
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    return v1

    .line 241
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 242
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_5

    .line 246
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 247
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    const-string v3, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 258
    const-string v3, "MediaRouteButton"

    const-string v4, "showDialog(): Route controller dialog already showing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v1

    .line 261
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 262
    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;

    move-result-object v1

    .line 263
    .local v1, "f":Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    const-string v3, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .end local v1    # "f":Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    goto :goto_1

    .line 248
    :cond_3
    :goto_0
    const-string v3, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 249
    const-string v3, "MediaRouteButton"

    const-string v4, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v1

    .line 252
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 253
    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    move-result-object v1

    .line 254
    .local v1, "f":Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 255
    const-string v3, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 256
    .end local v1    # "f":Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    nop

    .line 265
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 243
    .end local v2    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 376
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

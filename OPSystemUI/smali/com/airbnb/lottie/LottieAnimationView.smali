.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;,
        Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;
    }
.end annotation


# static fields
.field public static final DEFAULT_CACHE_STRATEGY:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I

.field private autoPlay:Z

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionTask:Lcom/airbnb/lottie/LottieTask;

.field private defaultCacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

.field private final failureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private useHardwareLayer:Z

.field private wasAnimatingWhenDetached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Weak:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_CACHE_STRATEGY:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    .line 55
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 75
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 81
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 86
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 87
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareLayer:Z

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 75
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 81
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 86
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 87
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareLayer:Z

    .line 100
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 75
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 81
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 86
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 87
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareLayer:Z

    .line 105
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 477
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 479
    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 886
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 887
    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 3

    .line 890
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareLayer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 891
    .local v0, "useHardwareLayer":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    nop

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 892
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheStrategy:I

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_CACHE_STRATEGY:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    .line 112
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->ordinal()I

    move-result v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 113
    .local v1, "cacheStrategyOrdinal":I
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->values()[Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->defaultCacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    .line 114
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 115
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 116
    .local v2, "hasRawRes":Z
    sget v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 117
    .local v4, "hasFileName":Z
    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    .line 118
    .local v5, "hasUrl":Z
    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use use only one at once."

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 122
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 123
    .local v6, "rawResId":I
    if-eqz v6, :cond_2

    .line 124
    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 126
    .end local v6    # "rawResId":I
    :cond_2
    goto :goto_1

    :cond_3
    if-eqz v4, :cond_5

    .line 127
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 129
    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 131
    .end local v6    # "fileName":Ljava/lang/String;
    :cond_4
    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 132
    sget v6, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 134
    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 138
    .end local v2    # "hasRawRes":Z
    .end local v4    # "hasFileName":Z
    .end local v5    # "hasUrl":Z
    .end local v6    # "url":Ljava/lang/String;
    :cond_6
    :goto_1
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    .line 139
    iput-boolean v4, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 140
    iput-boolean v4, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 143
    :cond_7
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_8

    .line 144
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 147
    :cond_8
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 148
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 152
    :cond_9
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 153
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 157
    :cond_a
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 158
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 159
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 161
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 162
    new-instance v2, Lcom/airbnb/lottie/SimpleColorFilter;

    sget v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    .line 163
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 164
    .local v2, "filter":Lcom/airbnb/lottie/SimpleColorFilter;
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    const-string v4, "**"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 165
    .local v3, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v4, v2}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 166
    .local v4, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<Landroid/graphics/ColorFilter;>;"
    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v3, v5, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 168
    .end local v2    # "filter":Lcom/airbnb/lottie/SimpleColorFilter;
    .end local v3    # "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    .end local v4    # "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<Landroid/graphics/ColorFilter;>;"
    :cond_b
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 169
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 172
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 175
    return-void
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "recycle"    # Z

    .line 188
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eq p1, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->recycleBitmaps()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 192
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 644
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 645
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 632
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 794
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 795
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 2
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 804
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/airbnb/lottie/value/SimpleLottieValueCallback;, "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$5;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/LottieAnimationView$5;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 809
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    .line 838
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 839
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 282
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    .line 283
    return-void
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getFrame()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getUseHardwareAcceleration()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareLayer:Z

    return v0
.end method

.method public hasMasks()Z
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->hasMasks()Z

    move-result v0

    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->hasMatte()Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result v0

    return v0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "loop"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 661
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 251
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 252
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 255
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->recycleBitmaps()V

    .line 263
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 264
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 226
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 227
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 228
    return-void

    .line 231
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 232
    .local v0, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 233
    iget-object v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 237
    :cond_1
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    iput v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 238
    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    if-eqz v1, :cond_2

    .line 239
    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 241
    :cond_2
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 242
    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 246
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 247
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 248
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 213
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 214
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 215
    .local v1, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 216
    iget v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    .line 217
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 218
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v2

    iput-boolean v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 219
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 221
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 222
    return-object v1
.end method

.method public pauseAnimation()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 844
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 845
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 534
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 535
    return-void
.end method

.method recycleBitmaps()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->recycleBitmaps()V

    .line 272
    :cond_0
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    .line 653
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllUpdateListeners()V

    .line 641
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 648
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 649
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 636
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 637
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 1
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resumeAnimation()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 544
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 545
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationSpeed()V

    .line 615
    return-void
.end method

.method public setAnimation(I)V
    .locals 3
    .param p1, "rawRes"    # I

    .line 355
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getRawRes(I)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    .line 358
    .local v0, "cachedComposition":Lcom/airbnb/lottie/LottieComposition;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 360
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 364
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 365
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    new-instance v2, Lcom/airbnb/lottie/LottieAnimationView$3;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    .line 366
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 371
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 372
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 373
    return-void
.end method

.method public setAnimation(ILcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V
    .locals 0
    .param p1, "rawRes"    # I
    .param p2, "cacheStrategy"    # Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 348
    return-void
.end method

.method public setAnimation(Landroid/util/JsonReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 2
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 451
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 452
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 453
    invoke-static {p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 454
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 455
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 456
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 3
    .param p1, "assetName"    # Ljava/lang/String;

    .line 386
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 388
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    .line 389
    .local v0, "cachedComposition":Lcom/airbnb/lottie/LottieComposition;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 391
    return-void

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 395
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 396
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    new-instance v2, Lcom/airbnb/lottie/LottieAnimationView$4;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$4;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 402
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 403
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 404
    return-void
.end method

.method public setAnimation(Ljava/lang/String;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V
    .locals 0
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "cacheStrategy"    # Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setAnimation(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Landroid/util/JsonReader;)V

    .line 416
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .line 432
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 467
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 468
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 469
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 470
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    .line 471
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    .line 472
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 487
    sget-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v0, :cond_0

    .line 488
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 492
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 493
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    move-result v0

    .line 494
    .local v0, "isNewComposition":Z
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 495
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 498
    return-void

    .line 503
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    .line 507
    return-void
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/FontAssetDelegate;

    .line 764
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 765
    return-void
.end method

.method public setFrame(I)V
    .locals 1
    .param p1, "frame"    # I

    .line 853
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 854
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 756
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 757
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;

    .line 725
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 196
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->recycleBitmaps()V

    .line 197
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 198
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 185
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 178
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->recycleBitmaps()V

    .line 179
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 180
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 181
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1
    .param p1, "endFrame"    # I

    .line 572
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 573
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "endProgress"    # F

    .line 586
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 587
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .line 594
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 595
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1
    .param p1, "minProgress"    # F
    .param p2, "maxProgress"    # F

    .line 604
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 605
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1
    .param p1, "startFrame"    # I

    .line 551
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 552
    return-void
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "startProgress"    # F

    .line 565
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 566
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 876
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setPerformanceTrackingEnabled(Z)V

    .line 877
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 864
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 865
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 693
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 694
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 671
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatMode(I)V

    .line 672
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 824
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 825
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v0, v1, :cond_0

    .line 826
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 827
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 829
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 621
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 622
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 1
    .param p1, "textDelegate"    # Lcom/airbnb/lottie/TextDelegate;

    .line 771
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    .line 772
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 741
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public useExperimentalHardwareAcceleration()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareAcceleration(Z)V

    .line 298
    return-void
.end method

.method public useExperimentalHardwareAcceleration(Z)V
    .locals 0
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareAcceleration(Z)V

    .line 307
    return-void
.end method

.method public useHardwareAcceleration()V
    .locals 1

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareAcceleration(Z)V

    .line 314
    return-void
.end method

.method public useHardwareAcceleration(Z)V
    .locals 1
    .param p1, "use"    # Z

    .line 329
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareLayer:Z

    if-ne v0, p1, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->useHardwareLayer:Z

    .line 333
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 334
    return-void
.end method

.class public Lcom/airbnb/lottie/model/LottieCompositionCache;
.super Ljava/lang/Object;
.source "LottieCompositionCache.java"


# static fields
.field private static final CACHE_SIZE_MB:I = 0xa

.field private static final INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;


# instance fields
.field private final cache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/airbnb/lottie/model/LottieCompositionCache;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroid/support/v4/util/LruCache;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;
    .locals 1

    .line 24
    sget-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p1, "assetName"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public getRawRes(I)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p1, "rawRes"    # I

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    return-object v0
.end method

.method public put(ILcom/airbnb/lottie/LottieComposition;)V
    .locals 1
    .param p1, "rawRes"    # I
    .param p2, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 45
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 48
    if-nez p1, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

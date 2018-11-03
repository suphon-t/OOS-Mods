.class public Lcom/airbnb/lottie/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# static fields
.field private static final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p0, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 321
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieTask;

    return-object v0

    .line 325
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 326
    .local v0, "task":Lcom/airbnb/lottie/LottieTask;, "Lcom/airbnb/lottie/LottieTask<Lcom/airbnb/lottie/LottieComposition;>;"
    new-instance v1, Lcom/airbnb/lottie/LottieCompositionFactory$8;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 331
    new-instance v1, Lcom/airbnb/lottie/LottieCompositionFactory$9;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory$9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 336
    sget-object v1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-object v0
.end method

.method private static findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 3
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 308
    .local v1, "asset":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    return-object v1

    .line 311
    .end local v1    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    :cond_0
    goto :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/airbnb/lottie/LottieCompositionFactory$1;

    invoke-direct {v1, v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    return-object v1
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "cacheKey":Ljava/lang/String;
    const-string v1, ".zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 99
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$4;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$4;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$3;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$3;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 155
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method

.method private static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 161
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz p2, :cond_0

    .line 164
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 161
    :cond_0
    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    .line 164
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    :cond_1
    throw v0
.end method

.method public static fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$6;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$6;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-static {p0}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    .line 227
    .local v0, "composition":Lcom/airbnb/lottie/LottieComposition;
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 228
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 229
    .end local v0    # "composition":Lcom/airbnb/lottie/LottieComposition;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$5;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/airbnb/lottie/LottieCompositionFactory$2;

    invoke-direct {v2, v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$2;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    return-object v1
.end method

.method public static fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetch(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$7;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$7;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 250
    :try_start_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 250
    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 253
    throw v0
.end method

.method private static fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v1, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 263
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__MACOSX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_1

    .line 266
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v3

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "splitName":[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    .line 271
    .local v4, "name":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v3    # "splitName":[Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 276
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 280
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_3
    nop

    .line 283
    if-nez v0, :cond_4

    .line 284
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to parse composition"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 287
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 288
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v4

    .line 289
    .local v4, "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    if-eqz v4, :cond_5

    .line 290
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v4    # "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    :cond_5
    goto :goto_2

    .line 295
    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 296
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_7

    .line 297
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no image for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 299
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    :cond_7
    goto :goto_3

    .line 301
    :cond_8
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 302
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v3, v2}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private static rawResCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "resId"    # I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

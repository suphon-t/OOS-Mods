.class public Lcom/airbnb/lottie/LottieComposition;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory;
    }
.end annotation


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private characters:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private endFrame:F

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation
.end field

.field private frameRate:F

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private layerMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

.field private precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private startFrame:F

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {v0}, Lcom/airbnb/lottie/PerformanceTracker;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;

    .line 73
    const-string v0, "LOTTIE"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCharacters()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public getDuration()F
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public getDurationFrames()F
    .locals 2

    .line 143
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getEndFrame()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    return v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method public getFrameRate()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    return v0
.end method

.method public getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStartFrame()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    return v0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasImages()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public init(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/support/v4/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/support/v4/util/SparseArrayCompat;Ljava/util/Map;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "startFrame"    # F
    .param p3, "endFrame"    # F
    .param p4, "frameRate"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p5, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p6, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p7, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    .local p8, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    .local p9, "characters":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    .local p10, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 60
    iput p2, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 61
    iput p3, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 62
    iput p4, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    .line 63
    iput-object p5, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    .line 64
    iput-object p6, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    .line 65
    iput-object p7, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    .line 66
    iput-object p8, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 67
    iput-object p9, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    .line 68
    iput-object p10, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1
    .param p1, "id"    # J

    .line 91
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/Layer;

    return-object v0
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/PerformanceTracker;->setEnabled(Z)V

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    .line 150
    .local v2, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .end local v2    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

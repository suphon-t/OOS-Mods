.class Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSliceProviderGoogle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddShadowTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBlurRadius:F

.field private final mProviderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/keyguard/KeyguardSliceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/systemui/keyguard/KeyguardSliceProvider;
    .param p2, "weatherCard"    # Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 203
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mProviderReference:Ljava/lang/ref/WeakReference;

    .line 205
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 206
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0703fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mBlurRadius:F

    .line 208
    return-void
.end method

.method private applyShadow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 225
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mBlurRadius:F

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 226
    .local v0, "blurMask":Landroid/graphics/BlurMaskFilter;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 227
    .local v1, "blurPaint":Landroid/graphics/Paint;
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 228
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 229
    .local v2, "offset":[I
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 231
    .local v3, "shadow":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 233
    .local v4, "target":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    .local v5, "out":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 236
    .local v6, "drawPaint":Landroid/graphics/Paint;
    const/16 v7, 0x46

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 237
    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mBlurRadius:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v5, v3, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 238
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    return-object v4
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 212
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->applyShadow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 197
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->setIcon(Landroid/graphics/Bitmap;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->mProviderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 219
    .local v0, "provider":Lcom/android/systemui/keyguard/KeyguardSliceProvider;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 222
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 197
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

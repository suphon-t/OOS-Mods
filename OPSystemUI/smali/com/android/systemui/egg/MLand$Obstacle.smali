.class Lcom/android/systemui/egg/MLand$Obstacle;
.super Landroid/view/View;
.source "MLand.java"

# interfaces
.implements Lcom/android/systemui/egg/MLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Obstacle"
.end annotation


# instance fields
.field public h:F

.field public final hitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "h"    # F

    .line 1201
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Obstacle;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1202
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1199
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    .line 1203
    const/high16 p1, -0x10000

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand$Obstacle;->setBackgroundColor(I)V

    .line 1204
    iput p3, p0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    .line 1205
    return-void
.end method


# virtual methods
.method public cleared(Lcom/android/systemui/egg/MLand$Player;)Z
    .locals 5
    .param p1, "p"    # Lcom/android/systemui/egg/MLand$Player;

    .line 1218
    iget-object v0, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 1219
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1220
    iget-object v3, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    float-to-int v3, v3

    .line 1221
    .local v3, "x":I
    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-lt v4, v3, :cond_0

    return v1

    .line 1219
    .end local v3    # "x":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public intersects(Lcom/android/systemui/egg/MLand$Player;)Z
    .locals 7
    .param p1, "p"    # Lcom/android/systemui/egg/MLand$Player;

    .line 1208
    iget-object v0, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 1209
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1210
    iget-object v3, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    float-to-int v3, v3

    .line 1211
    .local v3, "x":I
    iget-object v4, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v2, 0x2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget v4, v4, v5

    float-to-int v4, v4

    .line 1212
    .local v4, "y":I
    iget-object v5, p0, Lcom/android/systemui/egg/MLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    return v6

    .line 1209
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1214
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public step(JJFF)V
    .locals 2
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J
    .param p5, "t"    # F
    .param p6, "dt"    # F

    .line 1228
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Obstacle;->getTranslationX()F

    move-result v0

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr v1, p6

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Obstacle;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Obstacle;->getHitRect(Landroid/graphics/Rect;)V

    .line 1230
    return-void
.end method

.class Lcom/android/systemui/egg/MLand$Cactus;
.super Lcom/android/systemui/egg/MLand$Building;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cactus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 1402
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Cactus;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1403
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Building;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 1405
    sget-object p1, Lcom/android/systemui/egg/MLand;->CACTI:[I

    invoke-static {p1}, Lcom/android/systemui/egg/MLand;->pick([I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand$Cactus;->setBackgroundResource(I)V

    .line 1406
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    div-int/lit8 p1, p1, 0x4

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Cactus;->h:I

    iput p1, p0, Lcom/android/systemui/egg/MLand$Cactus;->w:I

    .line 1407
    return-void
.end method

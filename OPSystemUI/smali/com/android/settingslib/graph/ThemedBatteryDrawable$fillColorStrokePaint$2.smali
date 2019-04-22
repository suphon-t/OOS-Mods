.class final Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokePaint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ThemedBatteryDrawable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $frameColor:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokePaint$2;->$frameColor:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .locals 3

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 106
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokePaint$2;->$frameColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 p0, 0x40a00000    # 5.0f

    .line 108
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 111
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokePaint$2;->invoke()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

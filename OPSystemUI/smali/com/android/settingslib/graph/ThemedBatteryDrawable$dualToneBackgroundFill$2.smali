.class final Lcom/android/settingslib/graph/ThemedBatteryDrawable$dualToneBackgroundFill$2;
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

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$dualToneBackgroundFill$2;->$frameColor:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .locals 2

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 138
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$dualToneBackgroundFill$2;->$frameColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p0, 0xff

    .line 139
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 p0, 0x0

    .line 141
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$dualToneBackgroundFill$2;->invoke()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;
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


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;

    invoke-direct {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;->INSTANCE:Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .locals 3

    .line 116
    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 117
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 118
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 121
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;->invoke()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/android/settingslib/graph/ThemedBatteryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ThemedBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemedBatteryDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemedBatteryDrawable.kt\ncom/android/settingslib/graph/ThemedBatteryDrawable\n*L\n1#1,405:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;


# instance fields
.field private backgroundColor:I

.field private final boltPath:Landroid/graphics/Path;

.field private charging:Z

.field private colorLevels:[I

.field private final context:Landroid/content/Context;

.field private criticalLevel:I

.field private dualTone:Z

.field private final dualToneBackgroundFill$delegate:Lkotlin/Lazy;

.field private fillColor:I

.field private final fillColorStrokePaint$delegate:Lkotlin/Lazy;

.field private final fillColorStrokeProtection$delegate:Lkotlin/Lazy;

.field private final fillMask:Landroid/graphics/Path;

.field private final fillPaint$delegate:Lkotlin/Lazy;

.field private final fillRect:Landroid/graphics/RectF;

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private final invalidateRunnable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private invertFillIcon:Z

.field private levelColor:I

.field private final levelPath:Landroid/graphics/Path;

.field private final levelRect:Landroid/graphics/RectF;

.field private final padding:Landroid/graphics/Rect;

.field private final perimeterPath:Landroid/graphics/Path;

.field private final plusPath:Landroid/graphics/Path;

.field private powerSaveEnabled:Z

.field private final scaleMatrix:Landroid/graphics/Matrix;

.field private final scaledBolt:Landroid/graphics/Path;

.field private final scaledFill:Landroid/graphics/Path;

.field private final scaledPerimeter:Landroid/graphics/Path;

.field private final scaledPlus:Landroid/graphics/Path;

.field private final unifiedPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fillColorStrokePaint"

    const-string v4, "getFillColorStrokePaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fillColorStrokeProtection"

    const-string v4, "getFillColorStrokeProtection()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fillPaint"

    const-string v4, "getFillPaint()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dualToneBackgroundFill"

    const-string v4, "getDualToneBackgroundFill()Landroid/graphics/Paint;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->Companion:Lcom/android/settingslib/graph/ThemedBatteryDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "context"

    # invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 45
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    .line 46
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    .line 48
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    .line 51
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 53
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    .line 54
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 56
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 57
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->padding:Landroid/graphics/Rect;

    .line 59
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 62
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 63
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 66
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    .line 67
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    const p1, -0xff01

    .line 78
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 79
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->backgroundColor:I

    .line 81
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 86
    new-instance p1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;-><init>(Lcom/android/settingslib/graph/ThemedBatteryDrawable;)V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    .line 104
    new-instance p1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokePaint$2;

    invoke-direct {p1, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokePaint$2;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint$delegate:Lkotlin/Lazy;

    .line 115
    sget-object p1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;->INSTANCE:Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillColorStrokeProtection$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection$delegate:Lkotlin/Lazy;

    .line 125
    new-instance p1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillPaint$2;

    invoke-direct {p1, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$fillPaint$2;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint$delegate:Lkotlin/Lazy;

    .line 136
    new-instance p1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$dualToneBackgroundFill$2;

    invoke-direct {p1, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$dualToneBackgroundFill$2;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill$delegate:Lkotlin/Lazy;

    .line 147
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    # invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 148
    iput p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 149
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    .line 151
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 152
    const p2, 0x7f030007

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 153
    const v0, 0x7f030008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 155
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 157
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aput v5, v3, v4

    .line 158
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 160
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v6

    .line 159
    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    aput v5, v3, v4

    goto :goto_1

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0026

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCriticalLevel(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->loadPaths()V

    return-void
.end method

.method private final batteryColorForLevel(I)I
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getColorForLevel(I)I

    move-result p0

    goto :goto_1

    .line 257
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    :goto_1
    return p0
.end method

.method private final getColorForLevel(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 266
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 267
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 268
    aget v3, v2, v3

    if-gt p1, v1, :cond_1

    .line 272
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_0

    .line 273
    iget v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final getDualToneBackgroundFill()Landroid/graphics/Paint;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getFillColorStrokePaint()Landroid/graphics/Paint;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getFillColorStrokeProtection()Landroid/graphics/Paint;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getFillPaint()Landroid/graphics/Paint;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final loadPaths()V
    .locals 3

    .line 374
    const-string v0, "M3.5,2 v0 H1.33 C0.6,2 0,2.6 0,3.33 V13v5.67 C0,19.4 0.6,20 1.33,20 h9.33 C11.4,20 12,19.4 12,18.67 V13V3.33 C12,2.6 11.4,2 10.67,2 H8.5 V0 H3.5 z M2,18v-7V4h8v9v5H2L2,18z"

    .line 376
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 377
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 378
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 380
    const-string v0, "M2,18 v-14 h8 v14 z"

    .line 382
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 384
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 386
    const-string v0, "M5,16.8 V12 H3 L7,5.2 V10 h2 L5,16.8 z"

    .line 388
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 390
    const-string v0, "M9,10l-2,0l0,-2l-2,0l0,2l-2,0l0,2l2,0l0,2l2,0l0,-2l2,0z"

    .line 392
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    return-void
.end method

.method protected final postInvalidate()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {v1, v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final updateSize()V
    .locals 4

    .line 359
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "b"

    .line 360
    # invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 367
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 368
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 370
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "c"

    # invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 177
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 178
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    const/16 v2, 0x5f

    if-lt v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, v0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 186
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 189
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 191
    iget-boolean v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-boolean v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 201
    iget-boolean v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-nez v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 204
    :cond_2
    iget-boolean v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 207
    iget-boolean v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-nez v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 212
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-eqz v1, :cond_4

    .line 214
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getDualToneBackgroundFill()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 216
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 225
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 227
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-nez v0, :cond_5

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 232
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    if-eqz v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 240
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillColorStrokePaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillColorStrokeProtection()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 245
    :cond_7
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 247
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    if-eqz v0, :cond_8

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillColorStrokePaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillColorStrokeProtection()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 306
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 310
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getPowerSaveEnabled()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 328
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 329
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->updateSize()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1

    const/16 v0, 0x43

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    .line 318
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 319
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryColorForLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 320
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setCharging(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public getCharging()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    return v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 294
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillColorStrokePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 295
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getDualToneBackgroundFill()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(III)V
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 344
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getFillColorStrokePaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    iput p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->backgroundColor:I

    .line 348
    invoke-direct {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getDualToneBackgroundFill()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCriticalLevel(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->criticalLevel:I

    return-void
.end method

.method public final setPowerSaveEnabled(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->powerSaveEnabled:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->postInvalidate()V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    return v0
.end method

.method public getChargeColor()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    return v0
.end method

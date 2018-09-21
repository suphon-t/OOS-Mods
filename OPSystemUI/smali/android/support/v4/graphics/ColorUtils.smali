.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 13
    .param p0, "hsl"    # [F

    .line 306
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 307
    .local v1, "h":F
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 308
    .local v2, "s":F
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 310
    .local v3, "l":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v5, v2

    .line 311
    .local v5, "c":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v7, v3, v7

    .line 312
    .local v7, "m":F
    const/high16 v8, 0x42700000    # 60.0f

    div-float v8, v1, v8

    rem-float/2addr v8, v4

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    .line 314
    .local v6, "x":F
    float-to-int v4, v1

    div-int/lit8 v4, v4, 0x3c

    .line 316
    .local v4, "hueSegment":I
    const/4 v8, 0x0

    .local v8, "r":I
    const/4 v9, 0x0

    .local v9, "g":I
    const/4 v10, 0x0

    .line 318
    .local v10, "b":I
    const/high16 v11, 0x437f0000    # 255.0f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 346
    :pswitch_0
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 347
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 348
    add-float v12, v6, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    goto :goto_0

    .line 340
    :pswitch_1
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 341
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 342
    add-float v12, v5, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 343
    goto :goto_0

    .line 335
    :pswitch_2
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 336
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 337
    add-float v12, v5, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 338
    goto :goto_0

    .line 330
    :pswitch_3
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 331
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 332
    add-float v12, v6, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 333
    goto :goto_0

    .line 325
    :pswitch_4
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 326
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 327
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 328
    goto :goto_0

    .line 320
    :pswitch_5
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 321
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 322
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 323
    nop

    .line 352
    :goto_0
    const/16 v11, 0xff

    invoke-static {v8, v0, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v8

    .line 353
    invoke-static {v9, v0, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v9

    .line 354
    invoke-static {v10, v0, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 356
    .end local v10    # "b":I
    .local v0, "b":I
    invoke-static {v8, v9, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static RGBToHSL(III[F)V
    .locals 16
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outHsl"    # [F

    .line 241
    move/from16 v0, p0

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 242
    .local v1, "rf":F
    move/from16 v3, p1

    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 243
    .local v4, "gf":F
    move/from16 v5, p2

    int-to-float v6, v5

    div-float/2addr v6, v2

    .line 245
    .local v6, "bf":F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 246
    .local v2, "max":F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 247
    .local v7, "min":F
    sub-float v8, v2, v7

    .line 250
    .local v8, "deltaMaxMin":F
    add-float v9, v2, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 252
    .local v9, "l":F
    cmpl-float v11, v2, v7

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-nez v11, :cond_0

    .line 254
    move v10, v13

    .local v10, "s":F
    move v11, v13

    .local v11, "h":F
    goto :goto_2

    .line 256
    .end local v10    # "s":F
    .end local v11    # "h":F
    :cond_0
    cmpl-float v11, v2, v1

    if-nez v11, :cond_1

    .line 257
    sub-float v11, v4, v6

    div-float/2addr v11, v8

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v11, v14

    .restart local v11    # "h":F
    :goto_0
    goto :goto_1

    .line 258
    .end local v11    # "h":F
    :cond_1
    cmpl-float v11, v2, v4

    if-nez v11, :cond_2

    .line 259
    sub-float v11, v6, v1

    div-float/2addr v11, v8

    add-float/2addr v11, v10

    goto :goto_0

    .line 261
    :cond_2
    sub-float v11, v1, v4

    div-float/2addr v11, v8

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v11, v14

    .line 264
    .restart local v11    # "h":F
    :goto_1
    mul-float/2addr v10, v9

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v12, v10

    div-float v10, v8, v10

    .line 267
    .restart local v10    # "s":F
    :goto_2
    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v14, v11

    const/high16 v12, 0x43b40000    # 360.0f

    rem-float/2addr v14, v12

    .line 268
    .end local v11    # "h":F
    .local v14, "h":F
    cmpg-float v11, v14, v13

    if-gez v11, :cond_3

    .line 269
    add-float/2addr v14, v12

    .line 272
    :cond_3
    const/4 v11, 0x0

    invoke-static {v14, v13, v12}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 273
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v13, v12}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 274
    const/4 v11, 0x2

    invoke-static {v9, v13, v12}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 275
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 22
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outXyz"    # [D

    .line 444
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 448
    move/from16 v1, p0

    int-to-double v2, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 449
    .local v2, "sr":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v8, v2, v6

    const-wide v9, 0x4003333333333333L    # 2.4

    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-gez v8, :cond_0

    div-double v17, v2, v15

    goto :goto_0

    :cond_0
    add-double v17, v2, v13

    div-double v13, v17, v11

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_0
    move-wide/from16 v2, v17

    .line 450
    move/from16 v8, p1

    int-to-double v13, v8

    div-double/2addr v13, v4

    .line 451
    .local v13, "sg":D
    cmpg-double v17, v13, v6

    if-gez v17, :cond_1

    div-double v17, v13, v15

    goto :goto_1

    :cond_1
    const-wide v17, 0x3fac28f5c28f5c29L    # 0.055

    add-double v19, v13, v17

    div-double v6, v19, v11

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_1
    move-wide/from16 v6, v17

    .line 452
    .end local v13    # "sg":D
    .local v6, "sg":D
    move/from16 v13, p2

    int-to-double v9, v13

    div-double/2addr v9, v4

    .line 453
    .local v9, "sb":D
    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v9, v4

    if-gez v4, :cond_2

    div-double v4, v9, v15

    goto :goto_2

    :cond_2
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v4, v9

    div-double/2addr v4, v11

    const-wide v11, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 455
    .end local v9    # "sb":D
    .local v4, "sb":D
    :goto_2
    const/4 v9, 0x0

    const-wide v10, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v10, v2

    const-wide v14, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v14, v6

    add-double/2addr v10, v14

    const-wide v14, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v14, v4

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    aput-wide v10, v0, v9

    .line 456
    const/4 v9, 0x1

    const-wide v10, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v10, v2

    const-wide v16, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v16, v16, v6

    add-double v10, v10, v16

    const-wide v16, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v16, v16, v4

    add-double v10, v10, v16

    mul-double/2addr v10, v14

    aput-wide v10, v0, v9

    .line 457
    const/4 v9, 0x2

    const-wide v10, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v10, v2

    const-wide v16, 0x3fbe83e425aee632L    # 0.1192

    mul-double v16, v16, v6

    add-double v10, v10, v16

    const-wide v16, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v16, v16, v4

    add-double v10, v10, v16

    mul-double/2addr v14, v10

    aput-wide v14, v0, v9

    .line 458
    return-void

    .line 445
    .end local v2    # "sr":D
    .end local v4    # "sb":D
    .end local v6    # "sg":D
    :cond_3
    move/from16 v1, p0

    move/from16 v8, p1

    move/from16 v13, p2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "outXyz must have a length of 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blendARGB(IIF)I
    .locals 9
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 611
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 612
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 613
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 614
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 615
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 616
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static calculateContrast(II)D
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 163
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 165
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 168
    :cond_0
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 169
    .local v0, "luminance1":D
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 172
    .local v4, "luminance2":D
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    return-wide v2

    .line 160
    .end local v0    # "luminance1":D
    .end local v4    # "luminance2":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateLuminance(I)D
    .locals 5
    .param p0, "color"    # I

    .line 145
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 146
    .local v0, "result":[D
    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 148
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 9
    .param p0, "foreground"    # I
    .param p1, "background"    # I
    .param p2, "minContrastRatio"    # F

    .line 187
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 193
    invoke-static {p0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 194
    .local v0, "testForeground":I
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    .line 195
    .local v2, "testRatio":D
    float-to-double v4, p2

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 197
    const/4 v1, -0x1

    return v1

    .line 201
    :cond_0
    const/4 v4, 0x0

    .line 202
    .local v4, "numIterations":I
    const/4 v5, 0x0

    .line 203
    .local v5, "minAlpha":I
    nop

    .line 205
    .local v1, "maxAlpha":I
    :goto_0
    const/16 v6, 0xa

    if-gt v4, v6, :cond_2

    sub-int v6, v1, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 207
    add-int v6, v5, v1

    div-int/lit8 v6, v6, 0x2

    .line 209
    .local v6, "testAlpha":I
    invoke-static {p0, v6}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 210
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    .line 212
    float-to-double v7, p2

    cmpg-double v7, v2, v7

    if-gez v7, :cond_1

    .line 213
    move v5, v6

    goto :goto_1

    .line 215
    :cond_1
    move v1, v6

    .line 218
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 219
    .end local v6    # "testAlpha":I
    goto :goto_0

    .line 222
    :cond_2
    return v1

    .line 188
    .end local v0    # "testForeground":I
    .end local v1    # "maxAlpha":I
    .end local v2    # "testRatio":D
    .end local v4    # "numIterations":I
    .end local v5    # "minAlpha":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static circularInterpolate(FFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .line 667
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_1

    .line 668
    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    .line 669
    add-float/2addr p0, v1

    goto :goto_0

    .line 671
    :cond_0
    add-float/2addr p1, v1

    .line 674
    :cond_1
    :goto_0
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    rem-float/2addr v0, v1

    return v0
.end method

.method public static colorToHSL(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outHsl"    # [F

    .line 289
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 290
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outXyz"    # [D

    .line 421
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 422
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .line 131
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .locals 7
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 54
    .local v0, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 55
    .local v1, "fgAlpha":I
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 57
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 57
    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 59
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 59
    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 61
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 61
    invoke-static {v5, v1, v6, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v5

    .line 64
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .line 135
    if-nez p4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    const/16 v0, 0xff

    mul-int v1, v0, p0

    mul-int/2addr v1, p1

    mul-int v2, p2, p3

    sub-int/2addr v0, p1

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    mul-int/lit16 v0, p4, 0xff

    div-int/2addr v1, v0

    return v1
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 585
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private static constrain(III)I
    .locals 1
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 589
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private static getTempDouble3Array()[D
    .locals 2

    .line 678
    sget-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 679
    .local v0, "result":[D
    if-nez v0, :cond_0

    .line 680
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 681
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 683
    :cond_0
    return-object v0
.end method

.method public static setAlphaComponent(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .line 365
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 368
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

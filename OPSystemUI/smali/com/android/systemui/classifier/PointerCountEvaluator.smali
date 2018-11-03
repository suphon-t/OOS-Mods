.class public Lcom/android/systemui/classifier/PointerCountEvaluator;
.super Ljava/lang/Object;
.source "PointerCountEvaluator.java"


# direct methods
.method public static evaluate(I)F
    .locals 2
    .param p0, "value"    # I

    .line 21
    add-int/lit8 v0, p0, -0x1

    add-int/lit8 v1, p0, -0x1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

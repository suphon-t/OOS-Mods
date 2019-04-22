.class Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;
.super Ljava/lang/Object;
.source "Comparisons.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt\n*L\n1#1,319:1\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$compareValuesByImpl(Ljava/lang/Object;Ljava/lang/Object;[Lkotlin/jvm/functions/Function1;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValuesByImpl$ComparisonsKt__ComparisonsKt(Ljava/lang/Object;Ljava/lang/Object;[Lkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0
.end method

.method public static varargs compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "selectors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$1;

    invoke-direct {v0, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$1;-><init>([Lkotlin/jvm/functions/Function1;)V

    return-object v0

    .line 90
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "*>;>(TT;TT;)I"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 78
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final compareValuesByImpl$ComparisonsKt__ComparisonsKt(Ljava/lang/Object;Ljava/lang/Object;[Lkotlin/jvm/functions/Function1;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;[",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    .line 24
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 25
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 26
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 27
    invoke-static {v4, v3}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

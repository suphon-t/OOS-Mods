.class final Landroid/support/v7/widget/GridLayout$PackedMap;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final index:[I

.field public final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .line 2207
    .local p0, "this":Landroid/support/v7/widget/GridLayout$PackedMap;, "Landroid/support/v7/widget/GridLayout$PackedMap<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2208
    invoke-static {p1}, Landroid/support/v7/widget/GridLayout$PackedMap;->createIndex([Ljava/lang/Object;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$PackedMap;->index:[I

    .line 2210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$PackedMap;->index:[I

    invoke-static {p1, v0}, Landroid/support/v7/widget/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    .line 2211
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$PackedMap;->index:[I

    invoke-static {p2, v0}, Landroid/support/v7/widget/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    .line 2212
    return-void
.end method

.method private static compact([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;[I)[TK;"
        }
    .end annotation

    .line 2239
    .local p0, "a":[Ljava/lang/Object;, "[TK;"
    array-length v0, p0

    .line 2240
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 2241
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, -0x1

    invoke-static {p1, v2}, Landroid/support/v7/widget/GridLayout;->max2([II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2244
    .local v2, "result":[Ljava/lang/Object;, "[TK;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 2245
    aget v4, p1, v3

    aget-object v5, p0, v3

    aput-object v5, v2, v4

    .line 2244
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2247
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method private static createIndex([Ljava/lang/Object;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;)[I"
        }
    .end annotation

    .line 2219
    .local p0, "keys":[Ljava/lang/Object;, "[TK;"
    array-length v0, p0

    .line 2220
    .local v0, "size":I
    new-array v1, v0, [I

    .line 2222
    .local v1, "result":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2223
    .local v2, "keyToIndex":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2224
    aget-object v4, p0, v3

    .line 2225
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2226
    .local v5, "index":Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 2227
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2228
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v3

    .line 2223
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "index":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2232
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 2215
    .local p0, "this":Landroid/support/v7/widget/GridLayout$PackedMap;, "Landroid/support/v7/widget/GridLayout$PackedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$PackedMap;->index:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

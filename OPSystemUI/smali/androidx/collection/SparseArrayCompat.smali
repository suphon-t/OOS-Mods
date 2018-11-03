.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 69
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 70
    if-nez p1, :cond_0

    .line 71
    sget-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 72
    sget-object v1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result p1

    .line 75
    new-array v1, p1, [I

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 76
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 78
    :goto_0
    iput v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 79
    return-void
.end method

.method private gc()V
    .locals 8

    .line 165
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 166
    .local v0, "n":I
    const/4 v1, 0x0

    .line 167
    .local v1, "o":I
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 168
    .local v2, "keys":[I
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 170
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .local v1, "i":I
    .local v5, "o":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 171
    aget-object v6, v3, v1

    .line 173
    .local v6, "val":Ljava/lang/Object;
    sget-object v7, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 174
    if-eq v1, v5, :cond_0

    .line 175
    aget v7, v2, v1

    aput v7, v2, v5

    .line 176
    aput-object v6, v3, v5

    .line 177
    const/4 v7, 0x0

    aput-object v7, v3, v1

    .line 180
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 170
    .end local v6    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_2
    iput-boolean v4, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 185
    iput v5, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 188
    return-void
.end method


# virtual methods
.method public clone()Landroidx/collection/SparseArrayCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "clone":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/SparseArrayCompat;

    move-object v0, v1

    .line 87
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 88
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 92
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    return-object v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 268
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 272
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public size()I
    .locals 1

    .line 247
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 251
    :cond_0
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 395
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 396
    const-string/jumbo v0, "{}"

    return-object v0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    const/4 v1, 0x0

    .line 401
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v1, v2, :cond_3

    .line 402
    if-lez v1, :cond_1

    .line 403
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    .line 406
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 409
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 412
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 282
    .local p0, "this":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<TE;>;"
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->gc()V

    .line 286
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

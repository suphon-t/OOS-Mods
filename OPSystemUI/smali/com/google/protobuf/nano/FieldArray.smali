.class public final Lcom/google/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/google/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/google/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 56
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 65
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array v1, p1, [Lcom/google/protobuf/nano/FieldData;

    iput-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 67
    iput v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 68
    return-void
.end method

.method private arrayEquals([I[II)Z
    .locals 4
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "size"    # I

    .line 260
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 261
    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    .line 262
    return v0

    .line 260
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z
    .locals 4
    .param p1, "a"    # [Lcom/google/protobuf/nano/FieldData;
    .param p2, "b"    # [Lcom/google/protobuf/nano/FieldData;
    .param p3, "size"    # I

    .line 269
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 270
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    return v0

    .line 269
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private gc()V
    .locals 8

    .line 97
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 98
    .local v0, "n":I
    const/4 v1, 0x0

    .line 99
    .local v1, "o":I
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 100
    .local v2, "keys":[I
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 102
    .local v3, "values":[Lcom/google/protobuf/nano/FieldData;
    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .local v1, "i":I
    .local v5, "o":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 103
    aget-object v6, v3, v1

    .line 105
    .local v6, "val":Lcom/google/protobuf/nano/FieldData;
    sget-object v7, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v6, v7, :cond_1

    .line 106
    if-eq v1, v5, :cond_0

    .line 107
    aget v7, v2, v1

    aput v7, v2, v5

    .line 108
    aput-object v6, v3, v5

    .line 109
    const/4 v7, 0x0

    aput-object v7, v3, v1

    .line 112
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 102
    .end local v6    # "val":Lcom/google/protobuf/nano/FieldData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_2
    iput-boolean v4, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 117
    iput v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 118
    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 3
    .param p1, "need"    # I

    .line 233
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 234
    const/4 v1, 0x1

    shl-int v2, v1, v0

    add-int/lit8 v2, v2, -0xc

    if-gt p1, v2, :cond_0

    .line 235
    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    return p1
.end method

.method private idealIntArraySize(I)I
    .locals 1
    .param p1, "need"    # I

    .line 229
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/FieldArray;
    .locals 5

    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v0

    .line 281
    .local v0, "size":I
    new-instance v1, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v1, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 282
    .local v1, "clone":Lcom/google/protobuf/nano/FieldArray;
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, v1, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    nop

    .local v4, "i":I
    :goto_0
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    if-ge v2, v0, :cond_1

    .line 284
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v4

    aput-object v4, v3, v2

    .line 283
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 288
    .end local v4    # "i":I
    :cond_1
    iput v0, v1, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 289
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 201
    return v0

    .line 203
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/FieldArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 204
    return v2

    .line 207
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/nano/FieldArray;

    .line 208
    .local v1, "other":Lcom/google/protobuf/nano/FieldArray;
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 209
    return v2

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v1, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v3, v4, v5}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, v1, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 212
    invoke-direct {p0, v3, v4, v5}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 211
    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 217
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 220
    :cond_0
    const/16 v0, 0x11

    .line 221
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v1, v2, :cond_1

    .line 222
    const/16 v2, 0x1f

    mul-int v3, v2, v0

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 223
    .end local v0    # "result":I
    .local v3, "result":I
    mul-int/2addr v2, v3

    iget-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldData;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 221
    .end local v3    # "result":I
    .restart local v0    # "result":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method size()I
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 178
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method

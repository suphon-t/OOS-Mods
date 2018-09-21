.class final Lcom/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# virtual methods
.method computeSerializedSize()I
    .locals 2

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 74
    return v2

    .line 77
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 78
    .local v1, "other":Lcom/google/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 83
    const/16 v0, 0x11

    .line 84
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v2, v3

    .line 85
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 86
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 66
    return-void
.end method

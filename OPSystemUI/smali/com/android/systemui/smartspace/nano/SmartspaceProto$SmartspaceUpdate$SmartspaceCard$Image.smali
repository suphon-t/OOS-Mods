.class public final Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SmartspaceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation


# instance fields
.field public gsaResourceName:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    .line 466
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;
    .locals 1

    .line 469
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    .line 470
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->cachedSize:I

    .line 473
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 493
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 494
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    .line 496
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    .line 500
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    .line 504
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 515
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 519
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 520
    return-object p0

    .line 533
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    .end local v0    # "tag":I
    goto :goto_1

    .line 529
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    .line 530
    goto :goto_1

    .line 525
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    .line 526
    nop

    .line 537
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 517
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 486
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 488
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 489
    return-void
.end method

.class public final Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SmartspaceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;
    }
.end annotation


# instance fields
.field public subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

.field public title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 356
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

    .line 358
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 1

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    .line 362
    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->cachedSize:I

    .line 364
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 381
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 382
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-eqz v1, :cond_0

    .line 383
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    .line 384
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-eqz v1, :cond_1

    .line 387
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    .line 388
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 399
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 403
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 404
    return-object p0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-nez v1, :cond_1

    .line 417
    new-instance v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    invoke-direct {v1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto :goto_1

    .line 409
    .restart local v0    # "tag":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-nez v1, :cond_3

    .line 410
    new-instance v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    invoke-direct {v1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 413
    nop

    .line 423
    .end local v0    # "tag":I
    :cond_4
    :goto_1
    goto :goto_0

    .line 401
    .restart local v0    # "tag":I
    :cond_5
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;

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

    .line 370
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->title:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    if-eqz v0, :cond_1

    .line 374
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message;->subtitle:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Message$FormattedText;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 376
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 377
    return-void
.end method

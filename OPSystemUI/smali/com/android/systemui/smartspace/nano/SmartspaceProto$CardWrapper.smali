.class public final Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SmartspaceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/smartspace/nano/SmartspaceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardWrapper"
.end annotation


# instance fields
.field public card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field public gsaUpdateTime:J

.field public gsaVersionCode:I

.field public icon:[B

.field public isIconGrayscale:Z

.field public publishTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1201
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1202
    invoke-virtual {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    .line 1203
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 2

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 1208
    iput-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    .line 1209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 1210
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 1211
    iput-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    .line 1212
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->cachedSize:I

    .line 1213
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 1242
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1243
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v1, :cond_0

    .line 1244
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1245
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1247
    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1248
    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 1249
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1251
    :cond_1
    iget-wide v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1252
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    .line 1253
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1255
    :cond_2
    iget v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    if-eqz v1, :cond_3

    .line 1256
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 1257
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1259
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1260
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 1261
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1263
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    if-eqz v1, :cond_5

    .line 1264
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    .line 1265
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1267
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1275
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1276
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 1280
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1281
    return-object p0

    .line 1309
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    .end local v0    # "tag":I
    goto :goto_1

    .line 1305
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 1306
    goto :goto_1

    .line 1301
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 1302
    goto :goto_1

    .line 1297
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    .line 1298
    goto :goto_1

    .line 1293
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 1294
    goto :goto_1

    .line 1286
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-nez v1, :cond_6

    .line 1287
    new-instance v1, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {v1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1289
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1290
    nop

    .line 1313
    .end local v0    # "tag":I
    :cond_7
    :goto_1
    goto :goto_0

    .line 1278
    .restart local v0    # "tag":I
    :cond_8
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    invoke-virtual {p0, p1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v0, :cond_0

    .line 1220
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1222
    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1223
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1225
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1226
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1228
    :cond_2
    iget v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    if-eqz v0, :cond_3

    .line 1229
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1232
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1234
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    if-eqz v0, :cond_5

    .line 1235
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1237
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1238
    return-void
.end method

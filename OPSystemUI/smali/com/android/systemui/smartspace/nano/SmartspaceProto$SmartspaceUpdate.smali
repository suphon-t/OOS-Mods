.class public final Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SmartspaceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/smartspace/nano/SmartspaceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartspaceUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    }
.end annotation


# instance fields
.field public card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1076
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1077
    invoke-virtual {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;

    .line 1078
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;
    .locals 1

    .line 1081
    invoke-static {}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->emptyArray()[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1082
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->cachedSize:I

    .line 1083
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 1102
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1103
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    aget-object v2, v2, v1

    .line 1106
    .local v2, "element":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    if-eqz v2, :cond_0

    .line 1107
    nop

    .line 1108
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1104
    .end local v2    # "element":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1121
    .local v0, "tag":I
    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1125
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1126
    return-object p0

    .line 1131
    :cond_0
    nop

    .line 1132
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 1133
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    array-length v2, v2

    .line 1134
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1136
    .local v4, "newArray":[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    if-eqz v2, :cond_2

    .line 1137
    iget-object v5, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1139
    :cond_2
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 1140
    new-instance v3, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {v3}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;-><init>()V

    aput-object v3, v4, v2

    .line 1141
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1142
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1145
    :cond_3
    new-instance v3, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {v3}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;-><init>()V

    aput-object v3, v4, v2

    .line 1146
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1147
    iput-object v4, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1148
    nop

    .line 1151
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    :cond_4
    goto :goto_0

    .line 1123
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

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1090
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1091
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate;->card:[Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    aget-object v1, v1, v0

    .line 1092
    .local v1, "element":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    if-eqz v1, :cond_0

    .line 1093
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1090
    .end local v1    # "element":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1098
    return-void
.end method

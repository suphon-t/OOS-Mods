.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1039
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1040
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    .line 1041
    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 2

    .line 988
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_1

    .line 989
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v1, :cond_0

    .line 992
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    sput-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    .line 994
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 996
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 2

    .line 1044
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1045
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1046
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->cachedSize:I

    .line 1048
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 1065
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1066
    .local v0, "size":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1067
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1068
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1070
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1071
    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1072
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1074
    :cond_1
    return v0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .param p1, "value"    # J

    .line 1026
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1027
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1028
    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .param p1, "value"    # I

    .line 1007
    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1008
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1009
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1055
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1057
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1058
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1060
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1061
    return-void
.end method

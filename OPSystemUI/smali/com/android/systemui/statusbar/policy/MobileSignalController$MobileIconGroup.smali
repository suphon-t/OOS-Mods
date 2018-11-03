.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileIconGroup"
.end annotation


# instance fields
.field final mActivityId:I

.field final mDataContentDescription:I

.field final mDataType:I

.field final mIsWide:Z

.field final mQsDataType:I

.field final mSingleSignalIcon:I

.field final mStackedDataIcon:[I

.field final mStackedVoiceIcon:[I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;IIIIZZ)V
    .locals 21
    .param p1, "mig"    # Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .param p2, "dataType"    # I
    .param p3, "voiceType"    # I
    .param p4, "voiceLevel"    # I
    .param p5, "dataLevel"    # I
    .param p6, "isRoaming"    # Z
    .param p7, "showLTE"    # Z

    move-object/from16 v0, p1

    .line 1384
    move/from16 v1, p7

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsIcons:[[I

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mContentDesc:[I

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbNullState:I

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsNullState:I

    iget v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbDiscState:I

    iget v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDiscState:I

    iget v11, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDiscContentDesc:I

    iget v12, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    iget v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 1387
    move/from16 v15, p2

    move/from16 v2, p5

    invoke-static {v15, v2, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getStackedDataIcon(IIZ)[I

    move-result-object v16

    move/from16 v15, p3

    move/from16 v0, p4

    move/from16 v19, v14

    move/from16 v14, p6

    invoke-static {v15, v0, v14, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getStackedVoiceIcon(IIZZ)[I

    move-result-object v17

    .line 1384
    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p0

    move/from16 v14, v19

    move/from16 v15, v18

    move/from16 v18, v20

    invoke-direct/range {v2 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI[I[II)V

    .line 1388
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z

    .line 1361
    const/4 v0, 0x2

    new-array v15, v0, [I

    new-array v0, v0, [I

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI[I[II)V

    .line 1364
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI[I[II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "singleSignalIcon"    # I
    .param p14, "stackedDataIcon"    # [I
    .param p15, "stackedVoicelIcon"    # [I
    .param p16, "activityId"    # I

    move-object v0, p0

    move/from16 v1, p11

    .line 1370
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 1372
    move/from16 v2, p10

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 1373
    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1374
    move/from16 v3, p12

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 1375
    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 1376
    move/from16 v4, p13

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSingleSignalIcon:I

    .line 1377
    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:[I

    .line 1378
    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:[I

    .line 1379
    move/from16 v7, p16

    iput v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mActivityId:I

    .line 1380
    return-void
.end method

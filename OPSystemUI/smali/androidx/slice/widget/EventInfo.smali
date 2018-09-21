.class public Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public actionType:I

.field public rowIndex:I

.field public rowTemplateType:I

.field public sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "sliceMode"    # I
    .param p2, "actionType"    # I
    .param p3, "rowTemplateType"    # I
    .param p4, "rowIndex"    # I

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    .line 208
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 209
    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    .line 210
    iput p4, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 213
    iput v0, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 214
    iput v0, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 215
    iput v0, p0, Landroidx/slice/widget/EventInfo;->state:I

    .line 216
    return-void
.end method

.method private static actionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .line 266
    packed-switch p0, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :pswitch_0
    const-string v0, "SEE MORE"

    return-object v0

    .line 274
    :pswitch_1
    const-string v0, "CONTENT"

    return-object v0

    .line 272
    :pswitch_2
    const-string v0, "SLIDER"

    return-object v0

    .line 270
    :pswitch_3
    const-string v0, "BUTTON"

    return-object v0

    .line 268
    :pswitch_4
    const-string v0, "TOGGLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static positionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "position"    # I

    .line 250
    packed-switch p0, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :pswitch_0
    const-string v0, "CELL"

    return-object v0

    .line 254
    :pswitch_1
    const-string v0, "END"

    return-object v0

    .line 252
    :pswitch_2
    const-string v0, "START"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static rowTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 286
    packed-switch p0, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown row type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :pswitch_0
    const-string v0, "PROGRESS"

    return-object v0

    .line 298
    :pswitch_1
    const-string v0, "SLIDER"

    return-object v0

    .line 296
    :pswitch_2
    const-string v0, "TOGGLE"

    return-object v0

    .line 292
    :pswitch_3
    const-string v0, "MESSAGING"

    return-object v0

    .line 290
    :pswitch_4
    const-string v0, "GRID"

    return-object v0

    .line 288
    :pswitch_5
    const-string v0, "LIST"

    return-object v0

    .line 294
    :pswitch_6
    const-string v0, "SHORTCUT"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setPosition(III)V
    .locals 0
    .param p1, "actionPosition"    # I
    .param p2, "actionIndex"    # I
    .param p3, "actionCount"    # I

    .line 227
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 228
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 229
    iput p3, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    invoke-static {v1}, Landroidx/slice/widget/SliceView;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", rowTemplateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->rowTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ", rowIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ", actionPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", actionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", actionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# instance fields
.field public final baselineShift:D

.field public final color:I

.field public final fontName:Ljava/lang/String;

.field final justification:I

.field final lineHeight:D

.field public final size:D

.field public final strokeColor:I

.field public final strokeOverFill:Z

.field public final strokeWidth:I

.field public final text:Ljava/lang/String;

.field public final tracking:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DIIDDIIIZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "size"    # D
    .param p5, "justification"    # I
    .param p6, "tracking"    # I
    .param p7, "lineHeight"    # D
    .param p9, "baselineShift"    # D
    .param p11, "color"    # I
    .param p12, "strokeColor"    # I
    .param p13, "strokeWidth"    # I
    .param p14, "strokeOverFill"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 29
    iput-wide p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:D

    .line 30
    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    .line 31
    iput p6, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 32
    iput-wide p7, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    .line 33
    iput-wide p9, p0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:D

    .line 34
    iput p11, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 35
    iput p12, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 36
    iput p13, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:I

    .line 37
    iput-boolean p14, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 38
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 44
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 45
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    int-to-double v3, v0

    iget-wide v5, p0, Lcom/airbnb/lottie/model/DocumentData;->size:D

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 46
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    add-int/2addr v2, v3

    .line 47
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v0, v3

    .line 48
    .end local v2    # "result":I
    .restart local v0    # "result":I
    iget-wide v2, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 49
    .local v2, "temp":J
    mul-int v4, v1, v0

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    xor-long/2addr v5, v2

    long-to-int v5, v5

    add-int/2addr v4, v5

    .line 50
    .end local v0    # "result":I
    .local v4, "result":I
    mul-int/2addr v1, v4

    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v1, v0

    .line 51
    .end local v4    # "result":I
    .local v1, "result":I
    return v1
.end method

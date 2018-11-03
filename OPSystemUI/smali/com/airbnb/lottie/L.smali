.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static depthPastMaxDepth:I

.field private static final loggedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sections:[Ljava/lang/String;

.field private static startTimeNs:[J

.field private static traceDepth:I

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    .line 18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/airbnb/lottie/L;->loggedMessages:Ljava/util/Set;

    .line 21
    sput-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 24
    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 25
    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4
    .param p0, "section"    # Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 58
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 59
    return-void

    .line 61
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    aput-object p0, v0, v1

    .line 62
    sget-object v0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 63
    invoke-static {p0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 64
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 65
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 28
    sget-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LOTTIE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 4
    .param p0, "section"    # Ljava/lang/String;

    .line 68
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 69
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 70
    return v1

    .line 72
    :cond_0
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_1

    .line 73
    return v1

    .line 75
    :cond_1
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 76
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 79
    sget-object v0, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    return v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbalanced trace call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t end trace section. There are none."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTraceEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .line 43
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-ne v0, p0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    sput-boolean p0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 47
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-eqz v0, :cond_1

    .line 48
    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 49
    new-array v0, v0, [J

    sput-object v0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 51
    :cond_1
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/airbnb/lottie/L;->loggedMessages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    const-string v0, "LOTTIE"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/airbnb/lottie/L;->loggedMessages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

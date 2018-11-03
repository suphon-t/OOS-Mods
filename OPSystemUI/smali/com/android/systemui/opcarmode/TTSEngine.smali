.class public Lcom/android/systemui/opcarmode/TTSEngine;
.super Ljava/lang/Object;
.source "TTSEngine.java"


# instance fields
.field private final STATE_ERROR:I

.field private final STATE_IDLE:I

.field private final STATE_SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitState:I

.field private mWaitPlayString:Ljava/lang/String;

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->STATE_IDLE:I

    .line 18
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->STATE_ERROR:I

    .line 19
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->STATE_SUCCESS:I

    .line 20
    iput v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mInitState:I

    .line 21
    const-string v0, "TTSEngine"

    iput-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->TAG:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/opcarmode/TTSEngine$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/opcarmode/TTSEngine$1;-><init>(Lcom/android/systemui/opcarmode/TTSEngine;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/opcarmode/TTSEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;

    .line 15
    iget v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mInitState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/opcarmode/TTSEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;
    .param p1, "x1"    # I

    .line 15
    iput p1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mInitState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/opcarmode/TTSEngine;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech;

    .line 15
    iput-object p1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/opcarmode/TTSEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mWaitPlayString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/opcarmode/TTSEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/TTSEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mWaitPlayString:Ljava/lang/String;

    return-object p1
.end method

.method public static initSentence(Landroid/content/Context;)Lcom/android/systemui/opcarmode/TTSEngine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/opcarmode/TTSEngine;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public playText(Ljava/lang/String;)V
    .locals 5
    .param p1, "playText"    # Ljava/lang/String;

    .line 82
    const-string v0, "TTSEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playText mInitState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mInitState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mInitState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mWaitPlayString:Ljava/lang/String;

    .line 85
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->mWaitPlayString:Ljava/lang/String;

    .line 88
    const-string v2, "TTSEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " textToSpeech = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v1, v0, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 93
    iput-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 95
    :cond_1
    return-void
.end method

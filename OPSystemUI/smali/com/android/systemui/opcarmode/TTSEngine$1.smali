.class Lcom/android/systemui/opcarmode/TTSEngine$1;
.super Ljava/lang/Object;
.source "TTSEngine.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/opcarmode/TTSEngine;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/opcarmode/TTSEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/opcarmode/TTSEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/opcarmode/TTSEngine;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 6
    .param p1, "i"    # I

    .line 36
    const-string v0, "TTSEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 38
    iget-object v1, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/opcarmode/TTSEngine;->access$002(Lcom/android/systemui/opcarmode/TTSEngine;I)I

    .line 39
    iget-object v1, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v1}, Lcom/android/systemui/opcarmode/TTSEngine;->access$100(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    const-string v0, "TTSEngine"

    const-string v1, "onInit textToSpeech == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v1}, Lcom/android/systemui/opcarmode/TTSEngine;->access$100(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    .line 44
    .local v1, "result":I
    iget-object v3, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/TTSEngine;->access$100(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 45
    iget-object v3, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/TTSEngine;->access$100(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 46
    if-eq v1, v0, :cond_1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    .line 49
    :cond_1
    const-string v3, "TTSEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInit result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v3, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v3, v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$002(Lcom/android/systemui/opcarmode/TTSEngine;I)I

    .line 51
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$300(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/opcarmode/TTSEngine$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/opcarmode/TTSEngine$1$1;-><init>(Lcom/android/systemui/opcarmode/TTSEngine$1;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$000(Lcom/android/systemui/opcarmode/TTSEngine;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 59
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$400(Lcom/android/systemui/opcarmode/TTSEngine;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$100(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/TTSEngine;->access$400(Lcom/android/systemui/opcarmode/TTSEngine;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0, v4}, Lcom/android/systemui/opcarmode/TTSEngine;->access$402(Lcom/android/systemui/opcarmode/TTSEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$100(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0, v4}, Lcom/android/systemui/opcarmode/TTSEngine;->access$102(Lcom/android/systemui/opcarmode/TTSEngine;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    .line 67
    .end local v1    # "result":I
    :cond_3
    goto :goto_0

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v1, v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$002(Lcom/android/systemui/opcarmode/TTSEngine;I)I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$300(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/opcarmode/TTSEngine$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/opcarmode/TTSEngine$1$2;-><init>(Lcom/android/systemui/opcarmode/TTSEngine$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :goto_0
    return-void
.end method

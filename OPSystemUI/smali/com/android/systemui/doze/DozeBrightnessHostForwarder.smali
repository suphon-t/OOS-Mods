.class public Lcom/android/systemui/doze/DozeBrightnessHostForwarder;
.super Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.source "DozeBrightnessHostForwarder.java"


# instance fields
.field private final mHost:Lcom/android/systemui/doze/DozeHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V
    .locals 0
    .param p1, "wrappedService"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p2, "host"    # Lcom/android/systemui/doze/DozeHost;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 29
    return-void
.end method


# virtual methods
.method public setDozeScreenBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    const-string v1, "Brightness: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DozeScreenBrightness"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # const p1, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->setDozeScreenBrightness(I)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->setDozeScreenBrightness(I)V

    .line 35
    return-void
.end method

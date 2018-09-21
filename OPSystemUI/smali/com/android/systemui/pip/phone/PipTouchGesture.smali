.class public abstract Lcom/android/systemui/pip/phone/PipTouchGesture;
.super Ljava/lang/Object;
.source "PipTouchGesture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
    .locals 0
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .line 27
    return-void
.end method

.method onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 1
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 1
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .line 40
    const/4 v0, 0x0

    return v0
.end method

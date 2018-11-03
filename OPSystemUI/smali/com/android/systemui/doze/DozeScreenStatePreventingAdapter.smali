.class public Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;
.super Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.source "DozeScreenStatePreventingAdapter.java"


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 0
    .param p1, "inner"    # Lcom/android/systemui/doze/DozeMachine$Service;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    .line 32
    return-void
.end method

.method private static isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z
    .locals 1
    .param p0, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;
    .locals 1
    .param p0, "inner"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p1, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 50
    invoke-static {p1}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->isNeeded(Lcom/android/systemui/statusbar/phone/DozeParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 36
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 37
    const/4 p1, 0x2

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 39
    const/4 p1, 0x6

    .line 41
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->setDozeScreenState(I)V

    .line 42
    return-void
.end method

.class public Lcom/android/systemui/tuner/TunerSwitch;
.super Landroid/support/v14/preference/SwitchPreference;
.source "TunerSwitch.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mAction:I

.field private final mDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object v0, Lcom/android/systemui/R$styleable;->TunerSwitch:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/tuner/TunerSwitch;->mDefault:Z

    .line 24
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    .line 25
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 3

    .line 29
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    .line 30
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 46
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    .line 47
    iget v0, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/tuner/TunerSwitch;->mAction:I

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 50
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 36
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 37
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 41
    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/tuner/TunerSwitch;->mDefault:Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerSwitch;->setChecked(Z)V

    .line 42
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 6
    .param p1, "value"    # Z

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 55
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerSwitch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz p1, :cond_0

    const-string v5, "1"

    goto :goto_1

    :cond_0
    const-string v5, "0"

    :goto_1
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

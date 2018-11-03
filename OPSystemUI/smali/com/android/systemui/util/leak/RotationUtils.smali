.class public Lcom/android/systemui/util/leak/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public static getExactRotation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 43
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 44
    .local v1, "rot":I
    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_2

    .line 45
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 46
    return v2

    .line 47
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 48
    return v2

    .line 49
    :cond_1
    if-ne v1, v2, :cond_2

    .line 50
    return v3

    .line 53
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static getRotation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 30
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 31
    .local v1, "rot":I
    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_1

    .line 32
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 33
    return v2

    .line 34
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 35
    const/4 v2, 0x2

    return v2

    .line 38
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

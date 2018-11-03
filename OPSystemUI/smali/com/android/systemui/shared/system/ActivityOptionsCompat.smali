.class public abstract Lcom/android/systemui/shared/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# direct methods
.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "dockTopLeft"    # Z

    .line 34
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 35
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 36
    if-eqz p0, :cond_0

    .line 37
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x1

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    .line 39
    return-object v0
.end method

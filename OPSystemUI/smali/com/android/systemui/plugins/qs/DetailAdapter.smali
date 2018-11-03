.class public interface abstract Lcom/android/systemui/plugins/qs/DetailAdapter;
.super Ljava/lang/Object;
.source "DetailAdapter.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public abstract getSettingsIntent()Landroid/content/Intent;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getToggleEnabled()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getToggleState()Ljava/lang/Boolean;
.end method

.method public hasHeader()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setToggleState(Z)V
.end method

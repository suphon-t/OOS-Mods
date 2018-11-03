.class public interface abstract Lcom/android/systemui/plugins/OverlayPlugin;
.super Ljava/lang/Object;
.source "OverlayPlugin.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_OVERLAY"
    version = 0x2
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_OVERLAY"

.field public static final VERSION:I = 0x2


# virtual methods
.method public holdStatusBarOpen()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public setCollapseDesired(Z)V
    .locals 0
    .param p1, "collapseDesired"    # Z

    .line 36
    return-void
.end method

.method public abstract setup(Landroid/view/View;Landroid/view/View;)V
.end method

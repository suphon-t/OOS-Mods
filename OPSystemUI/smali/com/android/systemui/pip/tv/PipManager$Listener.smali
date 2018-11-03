.class public interface abstract Lcom/android/systemui/pip/tv/PipManager$Listener;
.super Ljava/lang/Object;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onMoveToFullscreen()V
.end method

.method public abstract onPipActivityClosed()V
.end method

.method public abstract onPipEntered()V
.end method

.method public abstract onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract onPipResizeAboutToStart()V
.end method

.method public abstract onShowPipMenu()V
.end method

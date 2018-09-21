.class public interface abstract Lcom/android/systemui/qs/QSPanel$QSTileLayout;
.super Ljava/lang/Object;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QSTileLayout"
.end annotation


# virtual methods
.method public abstract addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
.end method

.method public abstract getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
.end method

.method public abstract removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
.end method

.method public setExpansion(F)V
    .locals 0
    .param p1, "expansion"    # F

    .line 772
    return-void
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract updateResources()Z
.end method

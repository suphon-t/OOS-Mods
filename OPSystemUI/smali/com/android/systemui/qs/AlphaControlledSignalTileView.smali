.class public Lcom/android/systemui/qs/AlphaControlledSignalTileView;
.super Lcom/android/systemui/qs/SignalTileView;
.source "AlphaControlledSignalTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;,
        Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createSlashImageView(Landroid/content/Context;)Lcom/android/systemui/qs/tileimpl/SlashImageView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

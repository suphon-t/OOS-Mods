.class Lcom/android/systemui/recents/views/grid/AnimateableGridViewBounds;
.super Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;
.source "AnimateableGridViewBounds.java"


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "source"    # Landroid/view/View;
    .param p2, "cornerRadius"    # I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected updateClipBounds()V
    .locals 0

    .line 31
    return-void
.end method

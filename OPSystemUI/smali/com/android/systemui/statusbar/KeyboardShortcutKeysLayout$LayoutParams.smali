.class public Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "KeyboardShortcutKeysLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public final mHorizontalSpacing:I

.field public final mVerticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "mHorizontalSpacing"    # I
    .param p2, "verticalSpacing"    # I

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 211
    iput p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 212
    iput p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    .line 213
    return-void
.end method

.method public constructor <init>(IILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "horizontalSpacing"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "viewGroupLayout"    # Landroid/view/ViewGroup$LayoutParams;

    .line 204
    invoke-direct {p0, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iput p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 206
    iput p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    .line 207
    return-void
.end method

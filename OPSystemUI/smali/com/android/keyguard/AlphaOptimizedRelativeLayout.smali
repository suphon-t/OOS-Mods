.class public Lcom/android/keyguard/AlphaOptimizedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AlphaOptimizedRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

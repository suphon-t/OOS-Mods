.class public interface abstract Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;
.super Ljava/lang/Object;
.source "RegionInterceptingFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/RegionInterceptingFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RegionInterceptableView"
.end annotation


# virtual methods
.method public abstract getInterceptRegion()Landroid/graphics/Region;
.end method

.method public shouldInterceptTouch()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

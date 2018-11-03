.class public interface abstract Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;
.super Ljava/lang/Object;
.source "NavGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/statusbar/phone/NavGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureHelper"
.end annotation


# virtual methods
.method public destroy()V
    .locals 0

    .line 48
    return-void
.end method

.method public abstract onDarkIntensityChange(F)V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onLayout(ZIIII)V
.end method

.method public abstract onNavigationButtonLongPress(Landroid/view/View;)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setBarState(ZZ)V
.end method

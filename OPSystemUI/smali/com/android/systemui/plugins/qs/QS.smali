.class public interface abstract Lcom/android/systemui/plugins/qs/QS;
.super Ljava/lang/Object;
.source "QS.java"

# interfaces
.implements Lcom/android/systemui/plugins/FragmentBase;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/qs/QS$HeightListener;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_QS"
    version = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/qs/QS$HeightListener;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_QS"

.field public static final TAG:Ljava/lang/String; = "QS"

.field public static final VERSION:I = 0x6


# virtual methods
.method public abstract animateHeaderSlidingIn(J)V
.end method

.method public abstract animateHeaderSlidingOut()V
.end method

.method public abstract closeDetail()V
.end method

.method public abstract getDesiredHeight()I
.end method

.method public abstract getHeader()Landroid/view/View;
.end method

.method public abstract getQsMinExpansionHeight()I
.end method

.method public abstract hideImmediately()V
.end method

.method public abstract isCustomizing()Z
.end method

.method public abstract isShowingDetail()Z
.end method

.method public abstract notifyCustomizeChanged()V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 78
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method public abstract setContainer(Landroid/view/ViewGroup;)V
.end method

.method public abstract setExpandClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public setHasNotifications(Z)V
    .locals 0
    .param p1, "hasNotifications"    # Z

    .line 67
    return-void
.end method

.method public abstract setHeaderClickable(Z)V
.end method

.method public abstract setHeaderListening(Z)V
.end method

.method public abstract setHeightOverride(I)V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setOverscrolling(Z)V
.end method

.method public abstract setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
.end method

.method public abstract setQsExpansion(FF)V
.end method

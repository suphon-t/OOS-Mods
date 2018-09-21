.class public interface abstract Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"


# virtual methods
.method public disable(IIZ)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 72
    return-void
.end method

.method public abstract getHeight()I
.end method

.method public abstract setExpandClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setExpansion(F)V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
.end method

.method public abstract setVisibility(I)V
.end method

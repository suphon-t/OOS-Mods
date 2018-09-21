.class public interface abstract Lcom/android/systemui/statusbar/policy/IconLogger;
.super Ljava/lang/Object;
.source "IconLogger.java"


# virtual methods
.method public abstract onIconHidden(Ljava/lang/String;)V
.end method

.method public abstract onIconShown(Ljava/lang/String;)V
.end method

.method public onIconVisibility(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 23
    if-eqz p2, :cond_0

    .line 24
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconShown(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 28
    :goto_0
    return-void
.end method

.class public interface abstract Lcom/android/systemui/plugins/qs/QSTile;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/Dependencies;
    value = {
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSIconView;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/DetailAdapter;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTile$Callback;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTile$Icon;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTile$State;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/qs/QSTile$SlashState;,
        Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;,
        Lcom/android/systemui/plugins/qs/QSTile$SignalState;,
        Lcom/android/systemui/plugins/qs/QSTile$BooleanState;,
        Lcom/android/systemui/plugins/qs/QSTile$State;,
        Lcom/android/systemui/plugins/qs/QSTile$Icon;,
        Lcom/android/systemui/plugins/qs/QSTile$Callback;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
.end method

.method public abstract clearState()V
.end method

.method public abstract click()V
.end method

.method public abstract createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
.end method

.method public abstract destroy()V
.end method

.method public abstract getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public abstract getState()Lcom/android/systemui/plugins/qs/QSTile$State;
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getTileSpec()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract longClick()V
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 0
    .param p1, "logMaker"    # Landroid/metrics/LogMaker;

    .line 74
    return-object p1
.end method

.method public abstract refreshState()V
.end method

.method public abstract removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
.end method

.method public abstract removeCallbacks()V
.end method

.method public abstract secondaryClick()V
.end method

.method public abstract setDetailListening(Z)V
.end method

.method public abstract setListening(Ljava/lang/Object;Z)V
.end method

.method public abstract setTileSpec(Ljava/lang/String;)V
.end method

.method public abstract userSwitch(I)V
.end method

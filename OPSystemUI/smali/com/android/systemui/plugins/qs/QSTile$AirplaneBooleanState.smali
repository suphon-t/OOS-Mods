.class public Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
.super Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneBooleanState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public isAirplaneMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 337
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    .line 338
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 339
    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 330
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    .line 331
    .local v0, "o":Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 332
    .local v1, "changed":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 333
    return v1
.end method

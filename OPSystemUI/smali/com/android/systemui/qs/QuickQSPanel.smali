.class public Lcom/android/systemui/qs/QuickQSPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
    }
.end annotation


# instance fields
.field private mDisabledByPolicy:Z

.field protected mFullPanel:Lcom/android/systemui/qs/QSPanel;

.field private mMaxTiles:I

.field private final mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel$1;-><init>(Lcom/android/systemui/qs/QuickQSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->removeView(Landroid/view/View;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 57
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->removeView(Landroid/view/View;)V

    .line 62
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mListening:Z

    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->addView(Landroid/view/View;I)V

    .line 65
    invoke-super {p0, v1, v1, v1, v1}, Lcom/android/systemui/qs/QSPanel;->setPadding(IIII)V

    .line 66
    return-void
.end method

.method public static getNumQuickTiles(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qqs_count"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 100
    instance-of v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 102
    .local v0, "copy":Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 105
    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 106
    move-object p2, v0

    .line 108
    .end local v0    # "copy":Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 109
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 79
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onAttachedToWindow()V

    .line 80
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string/jumbo v2, "sysui_qqs_count"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onDetachedFromWindow()V

    .line 86
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 87
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 126
    const-string v0, "qs_show_brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "0"

    invoke-super {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method setDisabledByPolicy(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eq p1, v0, :cond_1

    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    .line 158
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 160
    :cond_1
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .param p2, "customizer"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 115
    return-void
.end method

.method public setMaxTiles(I)V
    .locals 1
    .param p1, "maxTiles"    # I

    .line 118
    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 71
    return-void
.end method

.method public setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V
    .locals 0
    .param p1, "fullPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "header"    # Landroid/view/View;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFullPanel:Lcom/android/systemui/qs/QSPanel;

    .line 91
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "quickTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 136
    .local v2, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    if-ne v3, v4, :cond_0

    .line 138
    goto :goto_1

    .line 140
    .end local v2    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    :goto_1
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    .line 142
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    const/16 p1, 0x8

    .line 176
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 177
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

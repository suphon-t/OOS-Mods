.class public Landroid/support/v17/leanback/widget/SpeechOrbView;
.super Landroid/support/v17/leanback/widget/SearchOrbView;
.source "SpeechOrbView.java"


# instance fields
.field private mCurrentLevel:I

.field private mListening:Z

.field private mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mSoundLevelMaxZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 19
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 33
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Landroid/support/v17/leanback/R$fraction;->lb_search_bar_speech_orb_max_level_zoom:I

    .line 34
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    .line 36
    new-instance v2, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v3, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_pulsed:I

    .line 37
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_icon:I

    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 39
    new-instance v2, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v3, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    .line 40
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 43
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    .line 44
    return-void
.end method


# virtual methods
.method getLayoutResourceId()I
    .locals 1

    .line 48
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_speech_orb:I

    return v0
.end method

.method public setSoundLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .line 98
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    if-le p1, v0, :cond_1

    .line 103
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    goto :goto_0

    .line 105
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 108
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getFocusedZoom()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 110
    .local v0, "zoom":F
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    .line 111
    return-void
.end method

.method public showListening()V
    .locals 3

    .line 73
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 74
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->enableOrbColorAnimation(Z)V

    .line 78
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    .line 79
    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 80
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    .line 81
    return-void
.end method

.method public showNotListening()V
    .locals 2

    .line 87
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 88
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    .line 92
    return-void
.end method

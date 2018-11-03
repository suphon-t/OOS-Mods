.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAdjustable:Z

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 140
    sget v0, Landroid/support/v7/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$1;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 88
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$2;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$2;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 119
    sget-object v0, Landroid/support/v7/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_min:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 128
    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setMax(I)V

    .line 129
    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 130
    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    .line 131
    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/SeekBarPreference;

    .line 44
    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return v0
.end method

.method static synthetic access$002(Landroid/support/v7/preference/SeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/SeekBarPreference;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/preference/SeekBarPreference;Landroid/widget/SeekBar;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/SeekBarPreference;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/SeekBarPreference;

    .line 44
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/SeekBarPreference;

    .line 44
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/SeekBarPreference;

    .line 44
    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/preference/SeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/SeekBarPreference;

    .line 44
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "seekBarValue"    # I
    .param p2, "notifyChanged"    # Z

    .line 257
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 258
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 260
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    .line 261
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 264
    :cond_1
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_3

    .line 265
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 266
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->persistInt(I)Z

    .line 270
    if-eqz p2, :cond_3

    .line 271
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 274
    :cond_3
    return-void
.end method

.method private syncValueInternal(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 285
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    .local v0, "seekBarValue":I
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_1

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    goto :goto_0

    .line 290
    :cond_0
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 293
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 149
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 150
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 152
    sget v0, Landroid/support/v7/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 153
    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 160
    :goto_0
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    .line 161
    const-string v0, "SeekBarPreference"

    const-string v1, "SeekBar view is null in onBindViewHolder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 170
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 176
    :goto_1
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 177
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_3
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 181
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 316
    return-void

    .line 320
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    .line 321
    .local v0, "myState":Landroid/support/v7/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iget v1, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 323
    iget v1, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 324
    iget v1, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 325
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 326
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 297
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 298
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    return-object v0

    .line 304
    :cond_0
    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 305
    .local v1, "myState":Landroid/support/v7/preference/SeekBarPreference$SavedState;
    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iput v2, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    .line 306
    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    iput v2, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    .line 307
    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iput v2, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    .line 308
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 185
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SeekBarPreference;->setValue(I)V

    .line 187
    return-void
.end method

.method public final setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 209
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 210
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 212
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    .line 213
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 216
    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2
    .param p1, "seekBarIncrement"    # I

    .line 234
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    .line 235
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    .line 238
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "seekBarValue"    # I

    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    .line 254
    return-void
.end method

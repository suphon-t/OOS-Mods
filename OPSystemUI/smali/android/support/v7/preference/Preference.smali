.class public Landroid/support/v7/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/Preference$BaseSavedState;,
        Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/support/v7/preference/Preference$OnPreferenceClickListener;,
        Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 373
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 375
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/preference/Preference;->mViewId:I

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 138
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 140
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    .line 143
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    .line 144
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    .line 145
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    .line 147
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerAbove:Z

    .line 148
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 150
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    .line 156
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    .line 158
    sget v3, Landroid/support/v7/preference/R$layout;->preference:I

    iput v3, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 169
    new-instance v3, Landroid/support/v7/preference/Preference$1;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/Preference$1;-><init>(Landroid/support/v7/preference/Preference;)V

    iput-object v3, p0, Landroid/support/v7/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 262
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    .line 264
    sget-object v3, Landroid/support/v7/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 267
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_icon:I

    sget v5, Landroid/support/v7/preference/R$styleable;->Preference_android_icon:I

    invoke-static {v3, v4, v5, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    .line 270
    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_key:I

    sget v5, Landroid/support/v7/preference/R$styleable;->Preference_android_key:I

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    .line 273
    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_title:I

    sget v5, Landroid/support/v7/preference/R$styleable;->Preference_android_title:I

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 276
    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_summary:I

    sget v5, Landroid/support/v7/preference/R$styleable;->Preference_android_summary:I

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 279
    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_order:I

    sget v5, Landroid/support/v7/preference/R$styleable;->Preference_android_order:I

    invoke-static {v3, v4, v5, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    .line 282
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_fragment:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {v3, v0, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mFragment:Ljava/lang/String;

    .line 285
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_layout:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_layout:I

    sget v5, Landroid/support/v7/preference/R$layout;->preference:I

    invoke-static {v3, v0, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 288
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_widgetLayout:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {v3, v0, v4, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    .line 291
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_enabled:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {v3, v0, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 294
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_selectable:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {v3, v0, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 297
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_persistent:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {v3, v0, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    .line 300
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_dependency:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {v3, v0, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 303
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerAbove:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean v5, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    invoke-static {v3, v0, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mAllowDividerAbove:Z

    .line 306
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerBelow:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean v5, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    invoke-static {v3, v0, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 309
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_0
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 315
    :cond_1
    :goto_0
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_shouldDisableView:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 316
    invoke-static {v3, v0, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    .line 319
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 320
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v0, :cond_2

    .line 321
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_singleLineTitle:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {v3, v0, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    .line 325
    :cond_2
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget v4, Landroid/support/v7/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {v3, v0, v4, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    .line 328
    sget v0, Landroid/support/v7/preference/R$styleable;->Preference_isPreferenceVisible:I

    sget v1, Landroid/support/v7/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {v3, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    .line 331
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 4

    .line 1514
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1516
    return-void

    .line 1520
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1521
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1526
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1522
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1523
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1528
    :cond_3
    :goto_1
    return-void
.end method

.method private registerDependency()V
    .locals 4

    .line 1324
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1326
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1327
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_1

    .line 1328
    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->registerDependent(Landroid/support/v7/preference/Preference;)V

    .line 1333
    return-void

    .line 1330
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/support/v7/preference/Preference;

    .line 1372
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    .line 1376
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 1379
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 640
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 642
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 643
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 644
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/support/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 644
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 648
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 1554
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1557
    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .line 1336
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1338
    .local v0, "oldDependency":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 1339
    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->unregisterDependent(Landroid/support/v7/preference/Preference;)V

    .line 1342
    .end local v0    # "oldDependency":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroid/support/v7/preference/Preference;

    .line 1388
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1391
    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "parentGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 1277
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mParentGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 1278
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 1060
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final clearWasDetached()V
    .locals 1

    .line 1319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mWasDetached:Z

    .line 1320
    return-void
.end method

.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/support/v7/preference/Preference;

    .line 1184
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1186
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    return v0

    .line 1187
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1189
    const/4 v0, 0x0

    return v0

    .line 1190
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1191
    const/4 v0, 0x1

    return v0

    .line 1192
    :cond_2
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1193
    const/4 v0, -0x1

    return v0

    .line 1196
    :cond_3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 90
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1995
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1997
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 1998
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1999
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2000
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    .end local v0    # "state":Landroid/os/Parcelable;
    goto :goto_0

    .line 2001
    .restart local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2006
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1942
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1943
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1944
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1945
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    .line 1949
    if-eqz v0, :cond_1

    .line 1950
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .end local v0    # "state":Landroid/os/Parcelable;
    goto :goto_0

    .line 1946
    .restart local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1953
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1359
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0

    .line 1356
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1152
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 484
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 487
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1904
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1905
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1908
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1909
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1910
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1912
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1916
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 762
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 765
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 907
    iget-wide v0, p0, Landroid/support/v7/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 419
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 940
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .line 524
    iget v0, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 680
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    .line 1490
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mParentGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 3
    .param p1, "defaultReturnValue"    # Z

    .line 1874
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1875
    return p1

    .line 1878
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1879
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1880
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1883
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected getPersistedInt(I)I
    .locals 3
    .param p1, "defaultReturnValue"    # I

    .line 1709
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    return p1

    .line 1713
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1714
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1715
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1718
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .line 1601
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    return-object p1

    .line 1605
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1606
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1607
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1610
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1654
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1655
    return-object p1

    .line 1658
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1659
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1660
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1663
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    .line 475
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 1

    .line 1236
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1168
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 1169
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 775
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 725
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .line 549
    iget v0, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .line 963
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 897
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 1214
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;)V

    .line 1217
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .line 1401
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    .line 1403
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    if-nez v0, :cond_0

    .line 1404
    return-void

    .line 1407
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1408
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1409
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/support/v7/preference/Preference;->onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 1408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1411
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .line 1225
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    .line 1228
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 1289
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->registerDependency()V

    .line 1290
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroid/support/v7/preference/PreferenceManager;

    .line 1246
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    .line 1248
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1249
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/preference/Preference;->mId:J

    .line 1252
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->dispatchSetInitialValue()V

    .line 1253
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;J)V
    .locals 2
    .param p1, "preferenceManager"    # Landroid/support/v7/preference/PreferenceManager;
    .param p2, "id"    # J

    .line 1261
    iput-wide p2, p0, Landroid/support/v7/preference/Preference;->mId:J

    .line 1262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    .line 1264
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    .line 1267
    nop

    .line 1268
    return-void

    .line 1266
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    throw v1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 565
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/preference/Preference;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 568
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 569
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 571
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 572
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-boolean v4, p0, Landroid/support/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v4, :cond_1

    .line 575
    iget-boolean v4, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 583
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 584
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    .line 585
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 586
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 589
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 594
    .local v4, "imageView":Landroid/widget/ImageView;
    const/4 v5, 0x4

    if-eqz v4, :cond_9

    .line 595
    iget v6, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 596
    :cond_4
    iget-object v6, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    .line 597
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 599
    :cond_5
    iget-object v6, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    .line 600
    iget-object v6, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_6
    iget-object v6, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 604
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 606
    :cond_7
    iget-boolean v6, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_2

    :cond_8
    move v6, v1

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    :cond_9
    :goto_3
    sget v6, Landroid/support/v7/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 611
    .local v6, "imageFrame":Landroid/view/View;
    if-nez v6, :cond_a

    .line 612
    const v7, 0x102003e

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 614
    :cond_a
    if-eqz v6, :cond_d

    .line 615
    iget-object v7, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_b

    .line 616
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 618
    :cond_b
    iget-boolean v2, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v2, :cond_c

    move v1, v5

    nop

    :cond_c
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    :cond_d
    :goto_4
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_e

    .line 623
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_5

    .line 625
    :cond_e
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 628
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isSelectable()Z

    move-result v1

    .line 629
    .local v1, "selectable":Z
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 630
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 632
    iget-boolean v2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 633
    iget-boolean v2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 634
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 917
    return-void
.end method

.method public onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/support/v7/preference/Preference;
    .param p2, "disableDependent"    # Z

    .line 1420
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1421
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    .line 1424
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1426
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 1428
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 1299
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->unregisterDependency()V

    .line 1300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mWasDetached:Z

    .line 1301
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2031
    return-void
.end method

.method public onParentChanged(Landroid/support/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/preference/Preference;
    .param p2, "disableChild"    # Z

    .line 1437
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1438
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    .line 1441
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1443
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 1445
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .line 1499
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->unregisterDependency()V

    .line 1500
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2019
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 2020
    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2021
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1968
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1969
    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 1551
    return-void
.end method

.method public performClick()V
    .locals 3

    .line 1118
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    return-void

    .line 1122
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 1124
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    return-void

    .line 1128
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    .line 1129
    .local v0, "preferenceManager":Landroid/support/v7/preference/PreferenceManager;
    if-eqz v0, :cond_2

    .line 1130
    nop

    .line 1131
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1132
    .local v1, "listener":Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1133
    return-void

    .line 1137
    .end local v1    # "listener":Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1138
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1139
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1141
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1107
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->performClick()V

    .line 1108
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .line 1843
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    const/4 v0, 0x0

    return v0

    .line 1847
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1849
    return v1

    .line 1852
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1853
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1854
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1856
    :cond_2
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1857
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1858
    invoke-direct {p0, v2}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1860
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected persistInt(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 1678
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1679
    const/4 v0, 0x0

    return v0

    .line 1682
    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1684
    return v1

    .line 1687
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1688
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1689
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1691
    :cond_2
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1692
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1693
    invoke-direct {p0, v2}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1695
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1570
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    const/4 v0, 0x0

    return v0

    .line 1575
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1577
    return v1

    .line 1580
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1581
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1582
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1584
    :cond_2
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1585
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1586
    invoke-direct {p0, v2}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1588
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1624
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1625
    const/4 v0, 0x0

    return v0

    .line 1629
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1631
    return v1

    .line 1634
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1635
    .local v0, "dataStore":Landroid/support/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1636
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1638
    :cond_2
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1639
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1640
    invoke-direct {p0, v2}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1642
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method requireKey()V
    .locals 2

    .line 950
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mRequiresKey:Z

    .line 955
    return-void

    .line 951
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1981
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1982
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1928
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1929
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 808
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 809
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 812
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 814
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 816
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 751
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iput p1, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    .line 753
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 737
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 738
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    .line 740
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 742
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 410
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 411
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 926
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    .line 928
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->requireKey()V

    .line 931
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .line 515
    iput p1, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 516
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1207
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1208
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 1071
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 1072
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 1090
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 1091
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .line 664
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 665
    iput p1, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    .line 668
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyHierarchyChanged()V

    .line 670
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .line 997
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    .line 998
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .line 833
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 834
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 835
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 837
    :cond_0
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .line 798
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 799
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 784
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 787
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 789
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 715
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 702
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 704
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    .line 706
    :cond_2
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 883
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 884
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    .line 885
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)V

    .line 889
    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "widgetLayoutResId"    # I

    .line 540
    iput p1, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    .line 541
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 1454
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldPersist()Z
    .locals 1

    .line 986
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1888
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

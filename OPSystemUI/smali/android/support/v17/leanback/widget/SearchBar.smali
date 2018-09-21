.class public Landroid/support/v17/leanback/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;,
        Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mAutoStartRecognition:Z

.field private mBackgroundAlpha:I

.field private mBackgroundSpeechAlpha:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeView:Landroid/widget/ImageView;

.field private mBarBackground:Landroid/graphics/drawable/Drawable;

.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private mHint:Ljava/lang/String;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListening:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mRecognizing:Z

.field mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

.field mSearchQuery:Ljava/lang/String;

.field mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

.field mSoundMap:Landroid/util/SparseIntArray;

.field mSoundPool:Landroid/media/SoundPool;

.field mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

.field private mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private final mTextColor:I

.field private final mTextColorSpeechMode:I

.field private final mTextHintColor:I

.field private final mTextHintColorSpeechMode:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 144
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    .line 145
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 160
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 165
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Landroid/support/v17/leanback/R$layout;->lb_search_bar:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 167
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_search_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    .line 168
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarHeight:I

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setBackgroundColor(I)V

    .line 173
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setClipChildren(Z)V

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 176
    const-string v0, "input_method"

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 179
    sget v0, Landroid/support/v17/leanback/R$color;->lb_search_bar_text_speech_mode:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    .line 180
    sget v0, Landroid/support/v17/leanback/R$color;->lb_search_bar_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    .line 182
    sget v0, Landroid/support/v17/leanback/R$integer;->lb_search_bar_speech_mode_background_alpha:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    .line 183
    sget v0, Landroid/support/v17/leanback/R$integer;->lb_search_bar_text_mode_background_alpha:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    .line 185
    sget v0, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint_speech_mode:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    .line 186
    sget v0, Landroid/support/v17/leanback/R$color;->lb_search_bar_hint:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    .line 188
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mAudioManager:Landroid/media/AudioManager;

    .line 189
    return-void
.end method

.method private isVoiceMode()Z
    .locals 1

    .line 775
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->isFocused()Z

    move-result v0

    return v0
.end method

.method private loadSounds(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 785
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Landroid/support/v17/leanback/R$raw;->lb_voice_no_input:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 791
    .local v0, "sounds":[I
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    .line 792
    .local v4, "sound":I
    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v6, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    .end local v4    # "sound":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_0
    return-void
.end method

.method private play(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 797
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$10;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/SearchBar$10;-><init>(Landroid/support/v17/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void
.end method

.method private updateHint()V
    .locals 6

    .line 528
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title_speech:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_with_title:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$string;->lb_search_bar_hint_speech:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_2
    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    .line 539
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    if-eqz v1, :cond_3

    .line 540
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 542
    :cond_3
    return-void
.end method


# virtual methods
.method hideNativeKeyboard()V
    .locals 3

    .line 505
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 507
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 331
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 333
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    .line 334
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->loadSounds(Landroid/content/Context;)V

    .line 335
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 341
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 342
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 343
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 193
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 195
    sget v0, Landroid/support/v17/leanback/R$id;->lb_search_bar_items:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 196
    .local v0, "items":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    .line 198
    sget v1, Landroid/support/v17/leanback/R$id;->lb_search_text_editor:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/SearchEditText;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    .line 199
    sget v1, Landroid/support/v17/leanback/R$id;->lb_search_bar_badge:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    .line 200
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 216
    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    .line 222
    .local v1, "mOnTextChangedRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$3;

    invoke-direct {v3, p0, v1}, Landroid/support/v17/leanback/widget/SearchBar$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$4;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$4;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V

    .line 253
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$5;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$5;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 299
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string v3, "EscapeNorth=1;VoiceDismiss=1;"

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 301
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar_speech_orb:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SpeechOrbView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    .line 302
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$6;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    new-instance v3, Landroid/support/v17/leanback/widget/SearchBar$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/SearchBar$7;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    .line 326
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    .line 327
    return-void
.end method

.method playSearchFailure()V
    .locals 1

    .line 812
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_failure:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 813
    return-void
.end method

.method playSearchOpen()V
    .locals 1

    .line 808
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_open:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 809
    return-void
.end method

.method playSearchSuccess()V
    .locals 1

    .line 820
    sget v0, Landroid/support/v17/leanback/R$raw;->lb_voice_success:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/SearchBar;->play(I)V

    .line 821
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 825
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setNextFocusDownId(I)V

    .line 826
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchEditText;->setNextFocusDownId(I)V

    .line 827
    return-void
.end method

.method setSearchQueryInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQueryChange(Ljava/lang/String;)V

    .line 373
    :cond_1
    return-void
.end method

.method showNativeKeyboard()V
    .locals 2

    .line 510
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchBar$8;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/SearchBar$8;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method

.method public startRecognition()V
    .locals 5

    .line 600
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    .line 604
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;->recognizeSpeech()V

    .line 608
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 609
    return-void

    .line 611
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_3

    return-void

    .line 612
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 613
    .local v0, "res":I
    if-eqz v0, :cond_5

    .line 614
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    if-eqz v1, :cond_4

    .line 615
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;->requestAudioPermission()V

    .line 616
    return-void

    .line 618
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "android.permission.RECORD_AUDIO required for search"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_5
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 625
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 627
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v2, "recognizerIntent":Landroid/content/Intent;
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "free_form"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v3, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 633
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v4, Landroid/support/v17/leanback/widget/SearchBar$9;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/SearchBar$9;-><init>(Landroid/support/v17/leanback/widget/SearchBar;)V

    invoke-virtual {v3, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 751
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    .line 752
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 753
    return-void
.end method

.method public stopRecognition()V
    .locals 2

    .line 567
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    .line 576
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_1

    goto :goto_0

    .line 578
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    .line 580
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 582
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mListening:Z

    .line 585
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 586
    return-void

    .line 576
    :cond_3
    :goto_0
    return-void
.end method

.method submitQuery()V
    .locals 2

    .line 779
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onSearchQuerySubmit(Ljava/lang/String;)V

    .line 782
    :cond_0
    return-void
.end method

.method toggleRecognition()V
    .locals 1

    .line 545
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    .line 550
    :goto_0
    return-void
.end method

.method updateUi(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 756
    if-eqz p1, :cond_1

    .line 757
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 758
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 760
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 763
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 767
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setTextColor(I)V

    .line 768
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar;->mTextHintColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->setHintTextColor(I)V

    .line 771
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SearchBar;->updateHint()V

    .line 772
    return-void
.end method

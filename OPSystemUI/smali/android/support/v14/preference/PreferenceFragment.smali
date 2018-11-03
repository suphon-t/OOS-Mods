.class public abstract Landroid/support/v14/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/DialogPreference$TargetFragment;
.implements Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# instance fields
.field private final mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

.field private final mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/support/v7/widget/RecyclerView;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 133
    sget v0, Landroid/support/v7/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    .line 135
    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v14/preference/PreferenceFragment$1;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    .line 138
    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v14/preference/PreferenceFragment$1;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v14/preference/PreferenceFragment$2;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 772
    return-void
.end method

.method static synthetic access$100(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v14/preference/PreferenceFragment;

    .line 108
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v14/preference/PreferenceFragment;

    .line 108
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 3

    .line 536
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 537
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceFragment;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 539
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onAttached()V

    .line 541
    :cond_0
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onBindPreferences()V

    .line 542
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 531
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 533
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 525
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 528
    return-void

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unbindPreferences()V
    .locals 1

    .line 545
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 546
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onDetached()V

    .line 549
    :cond_0
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 550
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .line 431
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 433
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 434
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 433
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 435
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 518
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 519
    const/4 v0, 0x0

    return-object v0

    .line 521
    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1

    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 563
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 341
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 343
    if-eqz p1, :cond_0

    .line 344
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 345
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 347
    .local v1, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 352
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 555
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 206
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 208
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 210
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 211
    .local v1, "theme":I
    if-eqz v1, :cond_1

    .line 214
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 216
    new-instance v2, Landroid/support/v7/preference/PreferenceManager;

    iget-object v3, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    .line 217
    iget-object v2, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 218
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 220
    .local v2, "args":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "rootKey":Ljava/lang/String;
    goto :goto_0

    .line 223
    .end local v3    # "rootKey":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 225
    .restart local v3    # "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v3}, Landroid/support/v14/preference/PreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 226
    return-void

    .line 212
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "rootKey":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must specify preferenceTheme in theme"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 609
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 599
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 581
    sget v0, Landroid/support/v7/preference/R$layout;->preference_recyclerview:I

    .line 582
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 585
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 586
    new-instance v1, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 589
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 244
    iget-object v1, v0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/preference/R$styleable;->PreferenceFragment:[I

    iget-object v3, v0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget v4, Landroid/support/v7/preference/R$attr;->preferenceFragmentStyle:I

    .line 246
    const v5, 0x1010506

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v3

    .line 244
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 251
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_android_layout:I

    iget v3, v0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    .line 253
    sget v2, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 254
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    sget v3, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 256
    .local v3, "dividerHeight":I
    sget v6, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 258
    .local v6, "allowDividerAfterLastItem":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 262
    .local v8, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget v10, Landroid/support/v7/preference/R$attr;->preferenceTheme:I

    invoke-virtual {v9, v10, v8, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 264
    iget v7, v8, Landroid/util/TypedValue;->resourceId:I

    .line 266
    .local v7, "theme":I
    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 267
    .local v9, "themedContext":Landroid/content/Context;
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 269
    .local v11, "themedInflater":Landroid/view/LayoutInflater;
    iget v12, v0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    move-object/from16 v13, p2

    invoke-virtual {v11, v12, v13, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 271
    .local v4, "view":Landroid/view/View;
    const v12, 0x102003f

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 272
    .local v12, "rawListContainer":Landroid/view/View;
    instance-of v14, v12, Landroid/view/ViewGroup;

    if-eqz v14, :cond_2

    .line 277
    move-object v14, v12

    check-cast v14, Landroid/view/ViewGroup;

    .line 279
    .local v14, "listContainer":Landroid/view/ViewGroup;
    move-object/from16 v15, p3

    invoke-virtual {v0, v11, v14, v15}, Landroid/support/v14/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    .line 281
    .local v5, "listView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v5, :cond_1

    .line 285
    iput-object v5, v0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 287
    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .local v16, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 288
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/PreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 289
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    .line 290
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/PreferenceFragment;->setDividerHeight(I)V

    .line 292
    :cond_0
    iget-object v1, v0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 294
    iget-object v1, v0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 295
    iget-object v1, v0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v2

    iget-object v2, v0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .end local v2    # "divider":Landroid/graphics/drawable/Drawable;
    .local v17, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-object v4

    .line 282
    .end local v16    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "divider":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "divider":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "a":Landroid/content/res/TypedArray;
    .restart local v17    # "divider":Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create RecyclerView"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    .end local v5    # "listView":Landroid/support/v7/widget/RecyclerView;
    .end local v14    # "listContainer":Landroid/view/ViewGroup;
    .end local v16    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "divider":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v15, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "divider":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "a":Landroid/content/res/TypedArray;
    .restart local v17    # "divider":Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    .line 370
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->unbindPreferences()V

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 376
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 377
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 625
    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 627
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 629
    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 632
    :cond_1
    if-eqz v0, :cond_2

    .line 633
    return-void

    .line 637
    :cond_2
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "android.support.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 638
    return-void

    .line 642
    :cond_3
    instance-of v1, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v1, :cond_4

    .line 643
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/EditTextPreferenceDialogFragment;

    move-result-object v1

    .local v1, "f":Landroid/app/DialogFragment;
    :goto_0
    goto :goto_1

    .line 644
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_4
    instance-of v1, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 645
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v1

    goto :goto_0

    .line 646
    :cond_5
    instance-of v1, p1, Landroid/support/v14/preference/MultiSelectListPreference;

    if-eqz v1, :cond_6

    .line 647
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object v1

    goto :goto_0

    .line 649
    .restart local v1    # "f":Landroid/app/DialogFragment;
    :goto_1
    nop

    .line 652
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 653
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "android.support.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 654
    return-void

    .line 649
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 501
    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    .line 503
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 505
    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z

    .line 507
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 471
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 475
    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 477
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 479
    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 481
    :cond_1
    return v0

    .line 483
    .end local v0    # "handled":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 381
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 383
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 384
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 385
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 387
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 389
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 356
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 357
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 358
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 359
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 363
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 364
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 365
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 366
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 560
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 326
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 328
    iget-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->bindPreferences()V

    .line 330
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mInitDone:Z

    .line 337
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 311
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 321
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    .line 322
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 405
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->setPreferences(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    .line 408
    iget-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->postBindPreferences()V

    .line 412
    :cond_0
    return-void
.end method

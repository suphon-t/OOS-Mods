.class public Lcom/android/settingslib/notification/ZenDurationDialog;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    }
.end annotation


# static fields
.field protected static final ALWAYS_ASK_CONDITION_INDEX:I = 0x2

.field protected static final COUNTDOWN_CONDITION_INDEX:I = 0x1

.field private static final DEFAULT_BUCKET_INDEX:I

.field protected static final FOREVER_CONDITION_INDEX:I

.field protected static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field protected static final MIN_BUCKET_MINUTES:I


# instance fields
.field private MAX_MANUAL_DND_OPTIONS:I

.field protected mBucketIndex:I

.field protected mContext:Landroid/content/Context;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field protected mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    .line 47
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MIN_BUCKET_MINUTES:I

    .line 48
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_BUCKET_MINUTES:I

    .line 50
    sget-object v0, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    return-void
.end method

.method private bindTag(ILandroid/view/View;I)V
    .locals 3
    .param p1, "currZenDuration"    # I
    .param p2, "row"    # Landroid/view/View;
    .param p3, "rowIndex"    # I

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    invoke-direct {v0}, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;-><init>()V

    .line 174
    .local v0, "tag":Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 181
    :cond_1
    if-gtz p1, :cond_2

    .line 182
    sget-object v1, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    sget v2, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    aget v1, v1, v2

    iput v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    goto :goto_1

    .line 184
    :cond_2
    iput p1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 187
    :goto_1
    iget-object v1, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/android/settingslib/notification/ZenDurationDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog$2;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V

    .line 197
    return-void
.end method

.method private setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    .param p2, "row"    # Landroid/view/View;

    .line 206
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    if-nez v0, :cond_0

    .line 207
    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    .line 208
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 211
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 212
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    .line 216
    :cond_1
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    new-instance v1, Lcom/android/settingslib/notification/ZenDurationDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/notification/ZenDurationDialog$3;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method private updateButtons(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V
    .locals 8
    .param p1, "tag"    # Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    .param p2, "row"    # Landroid/view/View;
    .param p3, "rowIndex"    # I

    .line 228
    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .local v0, "button1":Landroid/widget/ImageView;
    new-instance v1, Lcom/android/settingslib/notification/ZenDurationDialog$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/settingslib/notification/ZenDurationDialog$4;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v1, 0x102001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 238
    .local v1, "button2":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settingslib/notification/ZenDurationDialog$5;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/settingslib/notification/ZenDurationDialog$5;-><init>(Lcom/android/settingslib/notification/ZenDurationDialog;Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget v2, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    int-to-long v2, v2

    .line 246
    .local v2, "time":J
    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    .line 247
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    sget v6, Lcom/android/settingslib/notification/ZenDurationDialog;->MIN_BUCKET_MINUTES:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 251
    iget v6, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    sget v7, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_BUCKET_MINUTES:I

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 253
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 254
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v6

    nop

    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 256
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :goto_3
    return-void
.end method


# virtual methods
.method protected getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    .locals 1
    .param p1, "index"    # I

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/R$layout;->zen_mode_duration_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "contentView":Landroid/view/View;
    sget v1, Lcom/android/settingslib/R$id;->zen_duration_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 135
    .local v1, "container":Landroid/widget/ScrollView;
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 136
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons_content:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 138
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    if-ge v3, v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/android/settingslib/R$layout;->zen_mode_radio_button:I

    iget-object v6, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 141
    .local v4, "radioButton":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 144
    iget-object v5, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/android/settingslib/R$layout;->zen_mode_condition:I

    iget-object v7, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 146
    .local v5, "radioButtonContent":Landroid/view/View;
    iget v6, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->MAX_MANUAL_DND_OPTIONS:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 147
    iget-object v6, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    .end local v4    # "radioButton":Landroid/view/View;
    .end local v5    # "radioButtonContent":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method protected onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;ZI)V
    .locals 11
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    .param p3, "up"    # Z
    .param p4, "rowId"    # I

    .line 291
    const/4 v0, -0x1

    .line 292
    .local v0, "newDndTimeDuration":I
    sget-object v1, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    array-length v1, v1

    .line 293
    .local v1, "N":I
    iget v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v2, v4, :cond_6

    .line 295
    iget v2, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    int-to-long v6, v2

    .line 296
    .local v6, "time":J
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v1, :cond_4

    .line 297
    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v2

    .line 298
    .local v3, "j":I
    :goto_1
    sget-object v8, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    aget v8, v8, v3

    .line 299
    .local v8, "bucketMinutes":I
    if-eqz p3, :cond_1

    int-to-long v9, v8

    cmp-long v9, v9, v6

    if-gtz v9, :cond_2

    :cond_1
    if-nez p3, :cond_3

    int-to-long v9, v8

    cmp-long v9, v9, v6

    if-gez v9, :cond_3

    .line 300
    :cond_2
    iput v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 301
    move v0, v8

    .line 302
    goto :goto_2

    .line 296
    .end local v3    # "j":I
    .end local v8    # "bucketMinutes":I
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_0

    .line 305
    .end local v3    # "i":I
    :cond_4
    :goto_2
    if-ne v0, v4, :cond_5

    .line 306
    sget v2, Lcom/android/settingslib/notification/ZenDurationDialog;->DEFAULT_BUCKET_INDEX:I

    iput v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 307
    sget-object v2, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    iget v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    aget v0, v2, v3

    .line 309
    .end local v6    # "time":J
    :cond_5
    goto :goto_3

    .line 311
    :cond_6
    add-int/lit8 v2, v1, -0x1

    iget v6, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    if-eqz p3, :cond_7

    move v4, v5

    nop

    :cond_7
    add-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    .line 312
    sget-object v2, Lcom/android/settingslib/notification/ZenDurationDialog;->MINUTE_BUCKETS:[I

    iget v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mBucketIndex:I

    aget v0, v2, v3

    .line 314
    :goto_3
    iput v0, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 315
    invoke-direct {p0, v0, p1, p4}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 316
    iget-object v2, p2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 317
    return-void
.end method

.method protected setupRadioButtons(I)V
    .locals 4
    .param p1, "zenDuration"    # I

    .line 155
    const/4 v0, 0x2

    .line 156
    .local v0, "checkedIndex":I
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_0
    if-lez p1, :cond_1

    .line 159
    const/4 v0, 0x1

    .line 162
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 164
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 166
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 169
    return-void
.end method

.method protected updateUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V
    .locals 5
    .param p1, "tag"    # Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    .param p2, "row"    # Landroid/view/View;
    .param p3, "rowIndex"    # I

    .line 263
    iget-object v0, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/notification/ZenDurationDialog;->setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V

    .line 267
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateButtons(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;I)V

    .line 269
    const-string v0, ""

    .line 270
    .local v0, "radioContentText":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->zen_mode_duration_always_prompt_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 277
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    .line 276
    invoke-static {v1, v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v1

    .line 278
    .local v1, "condition":Landroid/service/notification/Condition;
    iget-object v0, v1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 279
    goto :goto_0

    .line 272
    .end local v1    # "condition":Landroid/service/notification/Condition;
    :pswitch_2
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const v2, 0x104072d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    nop

    .line 286
    :goto_0
    iget-object v1, p1, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateZenDuration(I)V
    .locals 5
    .param p1, "currZenDuration"    # I

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 94
    .local v0, "checkedRadioButtonId":I
    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_duration"

    .line 94
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, "newZenDuration":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    const/4 v1, -0x1

    .line 114
    iget-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x540

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/ZenDurationDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    move-result-object v2

    .line 106
    .local v2, "tag":Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    iget v1, v2, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->countdownZenDuration:I

    .line 107
    iget-object v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0x53e

    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 111
    goto :goto_0

    .line 99
    .end local v2    # "tag":Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;
    :pswitch_2
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x53f

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 103
    nop

    .line 120
    :goto_0
    if-eq p1, v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_duration"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

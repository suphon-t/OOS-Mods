.class public Lcom/android/systemui/statusbar/NotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "NotificationSnooze.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;
    }
.end annotation


# static fields
.field private static final OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

.field private static final OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

.field private static final UNDO_LOG:Landroid/metrics/LogMaker;

.field private static final sAccessibilityActions:[I


# instance fields
.field private mCollapsedHeight:I

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDivider:Landroid/view/View;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpanded:Z

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mParser:Landroid/util/KeyValueListParser;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSelectedOptionText:Landroid/widget/TextView;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z

.field private mUndoButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x476

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    .line 72
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 74
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    .line 75
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x475

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 77
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/NotificationSnooze;->sAccessibilityActions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0a0032
        0x7f0a0031
        0x7f0a002f
        0x7f0a0030
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 107
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationSnooze;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private animateSnoozeOptions(Z)V
    .locals 10
    .param p1, "show"    # Z

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    const/4 v8, 0x1

    aput v7, v3, v8

    .line 307
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 309
    .local v0, "dividerAnim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 310
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v9

    aput v9, v7, v5

    if-eqz p1, :cond_2

    move v4, v6

    nop

    :cond_2
    aput v4, v7, v8

    .line 309
    invoke-static {v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 311
    .local v1, "optionAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 313
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v8

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/statusbar/NotificationSnooze$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/NotificationSnooze$1;-><init>(Lcom/android/systemui/statusbar/NotificationSnooze;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 332
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 333
    return-void
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 17
    .param p1, "minutes"    # I
    .param p2, "accessibilityActionId"    # I

    move/from16 v7, p1

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 252
    .local v8, "res":Landroid/content/res/Resources;
    const/16 v0, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v7, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v9, v0

    .line 253
    .local v9, "showInHours":Z
    if-eqz v9, :cond_1

    .line 254
    const v0, 0x7f0f000f

    goto :goto_1

    .line 255
    :cond_1
    const v0, 0x7f0f0010

    :goto_1
    move v10, v0

    .line 256
    .local v10, "pluralResId":I
    if-eqz v9, :cond_2

    div-int/lit8 v0, v7, 0x3c

    goto :goto_2

    :cond_2
    move v0, v7

    :goto_2
    move v11, v0

    .line 257
    .local v11, "count":I
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {v8, v10, v11, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, "description":Ljava/lang/String;
    const v0, 0x7f1105cc

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v12, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "resultText":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v14, v0

    .line 260
    .local v14, "string":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 261
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    .line 260
    invoke-virtual {v14, v0, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 262
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move/from16 v15, p2

    invoke-direct {v6, v15, v12}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 263
    .local v6, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    new-instance v16, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v7

    move-object v4, v12

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/NotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v16
.end method

.method private createOptionViews()V
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 271
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 273
    .local v3, "option":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    const v4, 0x7f0d00f9

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 275
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    .end local v3    # "option":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .end local v4    # "tv":Landroid/widget/TextView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private hideSelectedOption()V
    .locals 6

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 284
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 285
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 286
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-ne v4, v5, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 7
    .param p1, "category"    # I
    .param p2, "option"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 348
    .local v0, "index":I
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 349
    .local v1, "duration":J
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v4, Landroid/metrics/LogMaker;

    invoke-direct {v4, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 350
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 351
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x474

    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 352
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v6, 0x473

    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 349
    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 353
    return-void
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V
    .locals 2
    .param p1, "option"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .param p2, "userAction"    # Z

    .line 336
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->hideSelectedOption()V

    .line 340
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->sendAccessibilityEvent(I)V

    .line 341
    if-eqz p2, :cond_0

    .line 342
    const/16 v0, 0x472

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 344
    :cond_0
    return-void
.end method

.method private showSnoozeOptions(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 291
    if-eqz p1, :cond_0

    const v0, 0x1080328

    goto :goto_0

    .line 292
    :cond_0
    const v0, 0x1080361

    .line 293
    .local v0, "drawableId":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eq v1, p1, :cond_1

    .line 295
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    .line 296
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationSnooze;->animateSnoozeOptions(Z)V

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->onHeightChanged()V

    .line 301
    :cond_1
    return-void
.end method

.method private undoSnooze(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 377
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 378
    .local v1, "parentLoc":[I
    new-array v2, v0, [I

    .line 379
    .local v2, "targetLoc":[I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    .line 380
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 382
    .local v3, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    .line 383
    .local v4, "centerY":I
    const/4 v0, 0x0

    aget v5, v2, v0

    aget v6, v1, v0

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 384
    .local v5, "x":I
    const/4 v6, 0x1

    aget v7, v2, v6

    aget v6, v1, v6

    sub-int/2addr v7, v6

    add-int/2addr v7, v4

    .line 385
    .local v7, "y":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 386
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v6, v5, v7, v0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 387
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mCollapsedHeight:I

    :goto_0
    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    .line 403
    return-object p0
.end method

.method getDefaultOption()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    return-object v0
.end method

.method getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_snooze_options"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "config":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v2    # "config":Ljava/lang/String;
    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "NotificationSnooze"

    const-string v4, "Bad snooze constants"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "default"

    const v4, 0x7f0b0019

    .line 235
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 234
    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 236
    .local v2, "defaultSnooze":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    const-string v4, "options_array"

    const v5, 0x7f030028

    .line 237
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 236
    invoke-virtual {v3, v4, v5}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    .line 239
    .local v3, "snoozeTimes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    sget-object v5, Lcom/android/systemui/statusbar/NotificationSnooze;->sAccessibilityActions:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 240
    aget v5, v3, v4

    .line 241
    .local v5, "snoozeTime":I
    sget-object v6, Lcom/android/systemui/statusbar/NotificationSnooze;->sAccessibilityActions:[I

    aget v6, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v6

    .line 242
    .local v6, "option":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    if-eqz v4, :cond_0

    if-ne v5, v2, :cond_1

    .line 243
    :cond_0
    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 245
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v5    # "snoozeTime":I
    .end local v6    # "option":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 247
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method public handleCloseControls(ZZ)Z
    .locals 4
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .line 413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 415
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 416
    return v1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v0, :cond_1

    .line 419
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozing:Z

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 421
    return v1

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    .line 425
    return v2
.end method

.method public isExpanded()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    return v0
.end method

.method public isLeavebehind()Z
    .locals 1

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 145
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/16 v1, 0x471

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 147
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 361
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 362
    .local v1, "tag":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 363
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    goto :goto_1

    .line 364
    :cond_1
    const v3, 0x7f0a02b3

    if-ne v0, v3, :cond_3

    .line 366
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    xor-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->showSnoozeOptions(Z)V

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpanded:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/systemui/statusbar/NotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/NotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_1

    .line 370
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationSnooze;->undoSnooze(Landroid/view/View;)V

    .line 371
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v3, Lcom/android/systemui/statusbar/NotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 373
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070630

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mCollapsedHeight:I

    .line 125
    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0a03d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0a046c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mExpandButton:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 132
    const v0, 0x7f0a03d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOptionViews()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    .line 141
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSelectedOptionText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 161
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 162
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1105cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    .line 167
    .local v2, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 165
    .end local v2    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 175
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    const v0, 0x7f0a0033

    if-ne p1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mUndoButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationSnooze;->undoSnooze(Landroid/view/View;)V

    .line 180
    return v1

    .line 182
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 184
    .local v3, "so":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 185
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 186
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    .line 187
    return v1

    .line 182
    .end local v3    # "so":Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 408
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 409
    return-void
.end method

.method setKeyValueListParser(Landroid/util/KeyValueListParser;)V
    .locals 0
    .param p1, "parser"    # Landroid/util/KeyValueListParser;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    .line 119
    return-void
.end method

.method public setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    .line 216
    return-void
.end method

.method public setSnoozeOptions(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "snoozeList":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/SnoozeCriterion;>;"
    if-nez p1, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 201
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/SnoozeCriterion;

    .line 202
    .local v2, "sc":Landroid/service/notification/SnoozeCriterion;
    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f0a002e

    .line 203
    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v9, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 204
    .local v9, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    new-instance v11, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v7

    .line 205
    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v3, v11

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/NotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/NotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 204
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v2    # "sc":Landroid/service/notification/SnoozeCriterion;
    .end local v9    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationSnooze;->createOptionViews()V

    .line 208
    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 219
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 220
    return-void
.end method

.method public shouldBeSaved()Z
    .locals 1

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public willBeRemoved()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSnooze;->mSnoozing:Z

    return v0
.end method

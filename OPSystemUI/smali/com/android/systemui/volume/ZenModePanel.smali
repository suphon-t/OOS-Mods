.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/FrameLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;,
        Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttached:Z

.field private mAttachedZen:I

.field private mAutoRule:Landroid/view/View;

.field private mAutoTitle:Landroid/widget/TextView;

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mEdit:Landroid/view/ViewGroup;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExpanded:Z

.field private final mForeverId:Landroid/net/Uri;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private final mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

.field private mVoiceCapable:Z

.field private mZenAlarmWarning:Landroid/widget/TextView;

.field protected mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field protected final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field protected mZenConditions:Landroid/widget/LinearLayout;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionCustomize:Landroid/widget/TextView;

.field private mZenIntroductionMessage:Landroid/widget/TextView;

.field protected mZenModeButtonLayoutId:I

.field protected mZenModeConditionLayoutId:I

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field private mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-string v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    .line 83
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 84
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 85
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 86
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    .line 103
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZenModePanel/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    .line 842
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 978
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 1006
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 145
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    .line 147
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    .line 149
    const v0, 0x7f0d01f5

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeConditionLayoutId:I

    .line 150
    const v0, 0x7f0d01f4

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeButtonLayoutId:I

    .line 151
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "new ZenModePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/ZenModePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 72
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    .line 72
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/ZenModePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 751
    .local v1, "zen":I
    packed-switch v1, :pswitch_data_0

    .line 762
    return-void

    .line 759
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f1102c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "modeText":Ljava/lang/String;
    goto :goto_0

    .line 756
    .end local v2    # "modeText":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f1102cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    .restart local v2    # "modeText":Ljava/lang/String;
    goto :goto_0

    .line 753
    .end local v2    # "modeText":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f1102cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 754
    .restart local v2    # "modeText":Ljava/lang/String;
    nop

    .line 762
    :goto_0
    nop

    .line 764
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v4, 0x7f110705

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const/4 v0, 0x1

    iget-object v6, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 765
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v0

    .line 764
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 766
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 22
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "row"    # Landroid/view/View;
    .param p3, "rowId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 644
    move/from16 v3, p3

    if-eqz v1, :cond_13

    .line 645
    iget v4, v1, Landroid/service/notification/Condition;->state:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 647
    .local v4, "enabled":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    invoke-direct {v7}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>()V

    .line 648
    .local v7, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 649
    iget-object v8, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v8, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v6

    .line 650
    .local v8, "first":Z
    :goto_2
    iget-object v9, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v9, :cond_3

    .line 651
    iget-object v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 653
    :cond_3
    iput-object v1, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 654
    iget-object v9, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v9}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v9

    .line 655
    .local v9, "conditionId":Landroid/net/Uri;
    sget-boolean v10, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bind i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " first="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " condition="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_4
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v10, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 658
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v11, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v11, v0, v7, v9}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 671
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    if-nez v10, :cond_5

    .line 672
    const v10, 0x1020002

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    .line 674
    :cond_5
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v10, :cond_6

    .line 675
    const v10, 0x1020014

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 676
    iget-object v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v11, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 678
    :cond_6
    iget-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v10, :cond_7

    .line 679
    const v10, 0x1020015

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    .line 680
    iget-object v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v11, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;)I

    .line 682
    :cond_7
    iget-object v10, v1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_3

    .line 683
    :cond_8
    iget-object v10, v1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 684
    .local v10, "line1":Ljava/lang/String;
    :goto_3
    iget-object v11, v1, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 685
    .local v11, "line2":Ljava/lang/String;
    iget-object v12, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v13, 0x8

    if-eqz v12, :cond_9

    .line 687
    iget-object v12, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 689
    :cond_9
    iget-object v12, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v12, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    :goto_4
    iget-object v12, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 693
    iget-object v12, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    if-eqz v4, :cond_a

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    const v15, 0x3ecccccd    # 0.4f

    :goto_5
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 695
    const v12, 0x1020019

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 696
    .local v12, "button1":Landroid/widget/ImageView;
    new-instance v15, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v15, v0, v2, v7, v3}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    const v15, 0x102001a

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 704
    .local v15, "button2":Landroid/widget/ImageView;
    new-instance v14, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v14, v0, v2, v7, v3}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v14, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    new-instance v13, Lcom/android/systemui/volume/ZenModePanel$4;

    invoke-direct {v13, v0, v7}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v14, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 718
    .local v13, "time":J
    const/4 v5, 0x2

    if-eq v3, v5, :cond_11

    const-wide/16 v17, 0x0

    cmp-long v5, v13, v17

    if-lez v5, :cond_11

    .line 719
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_d

    .line 722
    iget v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-lez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 723
    iget v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    sget-object v6, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v6, v6

    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 732
    move/from16 v19, v4

    goto :goto_9

    .line 725
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v13, v5

    .line 726
    .local v5, "span":J
    sget v16, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v17, 0xea60

    mul-int v3, v16, v17

    move/from16 v19, v4

    int-to-long v3, v3

    .end local v4    # "enabled":Z
    .local v19, "enabled":Z
    cmp-long v3, v5, v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 727
    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 728
    move-wide/from16 v20, v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 727
    .end local v5    # "span":J
    .local v20, "span":J
    invoke-static {v3, v4, v5}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v3

    .line 729
    .local v3, "maxCondition":Landroid/service/notification/Condition;
    iget-object v4, v1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v5, v3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 732
    .end local v3    # "maxCondition":Landroid/service/notification/Condition;
    .end local v20    # "span":J
    :goto_9
    invoke-virtual {v12}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_f
    move v3, v4

    :goto_a
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 733
    invoke-virtual {v15}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    const/high16 v4, 0x3f800000    # 1.0f

    nop

    :cond_10
    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_b

    .line 735
    .end local v19    # "enabled":Z
    .restart local v4    # "enabled":Z
    :cond_11
    move/from16 v19, v4

    .end local v4    # "enabled":Z
    .restart local v19    # "enabled":Z
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    :goto_b
    if-eqz v8, :cond_12

    .line 740
    iget-object v3, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    iget-object v4, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 741
    iget-object v3, v7, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 742
    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v12, v3}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 743
    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v15, v3}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 745
    :cond_12
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 746
    return-void

    .line 644
    .end local v7    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .end local v8    # "first":Z
    .end local v9    # "conditionId":Landroid/net/Uri;
    .end local v10    # "line1":Ljava/lang/String;
    .end local v11    # "line2":Ljava/lang/String;
    .end local v12    # "button1":Landroid/widget/ImageView;
    .end local v13    # "time":J
    .end local v15    # "button2":Landroid/widget/ImageView;
    .end local v19    # "enabled":Z
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "condition must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private bindGenericCountdown()V
    .locals 3

    .line 549
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 550
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v1, v1, v2

    .line 551
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 550
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 553
    .local v0, "countdown":Landroid/service/notification/Condition;
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 557
    :cond_1
    return-void
.end method

.method private bindNextAlarm(Landroid/service/notification/Condition;)V
    .locals 7
    .param p1, "c"    # Landroid/service/notification/Condition;

    .line 560
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, "alarmContent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .line 563
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v3, :cond_1

    .line 564
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 567
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .line 568
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 569
    .local v4, "showAlarm":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 570
    const/4 v5, 0x4

    if-eqz v4, :cond_3

    .line 569
    move v6, v3

    goto :goto_1

    .line 570
    :cond_3
    nop

    .line 569
    move v6, v5

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 571
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    return-void
.end method

.method private checkForAttachedZenChange()V
    .locals 4

    .line 347
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 348
    .local v0, "selectedZen":I
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_2

    .line 350
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->trackNoneSelected()V

    .line 355
    :cond_2
    return-void
.end method

.method private computeAlarmWarningText(Z)Ljava/lang/String;
    .locals 16
    .param p1, "zenNone"    # Z

    move-object/from16 v0, p0

    .line 485
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 486
    return-object v1

    .line 488
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 489
    .local v2, "now":J
    iget-object v4, v0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v4

    .line 490
    .local v4, "nextAlarm":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    .line 491
    return-object v1

    .line 493
    :cond_1
    const/4 v6, 0x0

    .line 494
    .local v6, "warningRes":I
    iget-object v7, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-direct {v0, v7}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 497
    :cond_2
    iget-object v7, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    iget-object v7, v7, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 498
    .local v7, "time":J
    cmp-long v9, v7, v2

    if-lez v9, :cond_4

    cmp-long v9, v4, v7

    if-gez v9, :cond_4

    .line 499
    const v6, 0x7f1106ff

    .end local v7    # "time":J
    goto :goto_1

    .line 495
    :cond_3
    :goto_0
    const v6, 0x7f110700

    .line 502
    :cond_4
    :goto_1
    if-nez v6, :cond_5

    .line 503
    return-object v1

    .line 505
    :cond_5
    sub-long v7, v4, v2

    const-wide/32 v9, 0x5265c00

    cmp-long v1, v7, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v1, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    move v1, v7

    .line 506
    .local v1, "soon":Z
    :goto_2
    iget-object v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v9

    .line 507
    .local v9, "is24":Z
    if-eqz v1, :cond_8

    if-eqz v9, :cond_7

    const-string v10, "Hm"

    goto :goto_3

    :cond_7
    const-string v10, "hma"

    goto :goto_3

    :cond_8
    if-eqz v9, :cond_9

    const-string v10, "EEEHm"

    goto :goto_3

    :cond_9
    const-string v10, "EEEhma"

    .line 508
    .local v10, "skeleton":Ljava/lang/String;
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11, v10}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 509
    .local v11, "pattern":Ljava/lang/String;
    invoke-static {v11, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    .line 510
    .local v12, "formattedTime":Ljava/lang/CharSequence;
    if-eqz v1, :cond_a

    const v13, 0x7f110128

    goto :goto_4

    :cond_a
    const v13, 0x7f110129

    .line 511
    .local v13, "templateRes":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move v15, v1

    new-array v1, v8, [Ljava/lang/Object;

    .end local v1    # "soon":Z
    .local v15, "soon":Z
    aput-object v12, v1, v7

    invoke-virtual {v14, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "template":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v7

    invoke-virtual {v14, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private confirmZenIntroduction()V
    .locals 4

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->prefKeyForConfirmation(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "prefKey":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmZenIntroduction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$H;->sendEmptyMessage(I)Z

    .line 274
    return-void
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .line 402
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private createCondition(Landroid/net/Uri;)Landroid/service/notification/Condition;
    .locals 9
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 421
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 423
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 424
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 423
    invoke-static {v2, v0, v1, v3}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object v2

    .line 425
    .local v2, "c":Landroid/service/notification/Condition;
    return-object v2

    .line 426
    .end local v0    # "time":J
    .end local v2    # "c":Landroid/service/notification/Condition;
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 428
    .local v7, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v7, v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 430
    .local v0, "mins":I
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 431
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x0

    .line 430
    move-wide v2, v7

    move v4, v0

    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v1

    .line 432
    .local v1, "c":Landroid/service/notification/Condition;
    return-object v1

    .line 435
    .end local v0    # "mins":I
    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v7    # "time":J
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method private fireExpanded()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    .line 840
    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    .line 834
    :cond_0
    return-void
.end method

.method private forever()Landroid/service/notification/Condition;
    .locals 9

    .line 575
    new-instance v8, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v8
.end method

.method private static foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 580
    const v0, 0x104072e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .line 394
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .locals 6

    .line 585
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 586
    .local v0, "weekRange":Ljava/util/GregorianCalendar;
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    .line 587
    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v1

    .line 589
    .local v1, "nextAlarmMs":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 590
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 591
    .local v3, "nextAlarm":Ljava/util/GregorianCalendar;
    invoke-virtual {v3, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 592
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    .line 594
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 595
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 596
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 595
    invoke-static {v4, v1, v2, v5}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object v4

    return-object v4

    .line 599
    .end local v3    # "nextAlarm":Ljava/util/GregorianCalendar;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private getView(I)Landroid/view/View;
    .locals 1
    .param p1, "state"    # I

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    return-object v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    return-object v0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUpdateZen(I)V
    .locals 3
    .param p1, "zen"    # I

    .line 439
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v0, p1, :cond_0

    .line 440
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 444
    return-void
.end method

.method private hideAllConditions()V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 626
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 627
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static isAlarm(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p0, "c"    # Landroid/service/notification/Condition;

    .line 632
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isCountdown(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p0, "c"    # Landroid/service/notification/Condition;

    .line 636
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 2
    .param p1, "c"    # Landroid/service/notification/Condition;

    .line 640
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onPrioritySettings()V

    .line 197
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setAutoText$3(Lcom/android/systemui/volume/ZenModePanel;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$setEmptyState$2(Lcom/android/systemui/volume/ZenModePanel;II)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    return-void
.end method

.method static synthetic lambda$transitionFrom$4(Landroid/view/View;)V
    .locals 1
    .param p0, "from"    # Landroid/view/View;

    .line 243
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$transitionFrom$5(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "to"    # Landroid/view/View;
    .param p1, "from"    # Landroid/view/View;

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 242
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$YCGXBCe2GBC47ckivA_D9jTXkLc;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$YCGXBCe2GBC47ckivA_D9jTXkLc;-><init>(Landroid/view/View;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 245
    return-void
.end method

.method private onAttach()V
    .locals 5

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 292
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    .line 293
    .local v1, "manualRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 294
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttach "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 296
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 297
    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 298
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 299
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setAttached(Z)V

    .line 303
    return-void
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .locals 22
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z
    .param p4, "rowId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 769
    iget-object v3, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/16 v4, 0xa3

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 770
    const/4 v3, 0x0

    .line 771
    .local v3, "newCondition":Landroid/service/notification/Condition;
    sget-object v4, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v4, v4

    .line 772
    .local v4, "N":I
    iget v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v7, :cond_6

    .line 774
    iget-object v5, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v5

    .line 775
    .local v5, "conditionId":Landroid/net/Uri;
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 776
    .local v9, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 777
    .local v11, "now":J
    nop

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 778
    if-eqz v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v6

    .line 779
    .local v7, "j":I
    :goto_1
    sget-object v13, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v13, v13, v7

    .line 780
    .local v13, "bucketMinutes":I
    const v14, 0xea60

    mul-int/2addr v14, v13

    int-to-long v14, v14

    add-long v20, v11, v14

    .line 781
    .local v20, "bucketTime":J
    if-eqz v2, :cond_1

    cmp-long v14, v20, v9

    if-gtz v14, :cond_2

    :cond_1
    if-nez v2, :cond_3

    cmp-long v14, v20, v9

    if-gez v14, :cond_3

    .line 782
    :cond_2
    iput v7, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 783
    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 784
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    const/16 v19, 0x0

    .line 783
    move-wide/from16 v15, v20

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v3

    .line 786
    goto :goto_2

    .line 777
    .end local v7    # "j":I
    .end local v13    # "bucketMinutes":I
    .end local v20    # "bucketTime":J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 789
    .end local v6    # "i":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 790
    sget v6, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v6, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 791
    iget-object v6, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v13, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v7, v7, v13

    .line 792
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    .line 791
    invoke-static {v6, v7, v13}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v3

    .line 794
    .end local v5    # "conditionId":Landroid/net/Uri;
    .end local v9    # "time":J
    .end local v11    # "now":J
    :cond_5
    goto :goto_3

    .line 796
    :cond_6
    add-int/lit8 v5, v4, -0x1

    iget v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eqz v2, :cond_7

    move v7, v8

    nop

    :cond_7
    add-int/2addr v9, v7

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 797
    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v7, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v6, v6, v7

    .line 798
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 797
    invoke-static {v5, v6, v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v3

    .line 800
    :goto_3
    move-object/from16 v5, p1

    move/from16 v6, p4

    invoke-direct {v0, v3, v5, v6}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 801
    iget-object v7, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 802
    invoke-direct {v0, v3}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 803
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .line 804
    return-void
.end method

.method private onDetach()V
    .locals 2

    .line 306
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setAttached(Z)V

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 311
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 312
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 315
    return-void
.end method

.method private static prefKeyForConfirmation(I)Ljava/lang/String;
    .locals 1
    .param p0, "zen"    # I

    .line 277
    packed-switch p0, :pswitch_data_0

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 283
    :pswitch_0
    const-string v0, "DndConfirmedAlarmIntroduction"

    return-object v0

    .line 281
    :pswitch_1
    const-string v0, "DndConfirmedSilenceIntroduction"

    return-object v0

    .line 279
    :pswitch_2
    const-string v0, "DndConfirmedPriorityIntroduction"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .line 807
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 812
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .line 813
    .local v0, "realConditionId":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v2, :cond_2

    .line 814
    new-instance v2, Lcom/android/systemui/volume/ZenModePanel$5;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 821
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 822
    if-nez v0, :cond_3

    .line 823
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    goto :goto_0

    .line 824
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v2, v1, :cond_5

    .line 825
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    .line 827
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 828
    return-void

    .line 809
    .end local v0    # "realConditionId":Landroid/net/Uri;
    :cond_6
    :goto_1
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "Ignoring condition selection outside of manual zen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_7
    return-void
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .line 387
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 389
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 391
    return-void
.end method

.method private setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .line 358
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 359
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    .line 363
    return-void
.end method

.method private setSessionExitCondition(Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSessionExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 337
    return-void
.end method

.method private setToMidnight(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 603
    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 604
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 605
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 606
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 607
    return-void
.end method

.method private transitionFrom(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "from"    # Landroid/view/View;
    .param p2, "to"    # Landroid/view/View;

    .line 235
    new-instance v0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method private updateWidgets()V
    .locals 10

    .line 453
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->pendingUpdateWidgets()V

    .line 455
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 458
    .local v1, "zen":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    .line 459
    .local v3, "zenImportant":Z
    :goto_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v0

    .line 460
    .local v4, "zenNone":Z
    :goto_1
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v0

    .line 461
    .local v5, "zenAlarm":Z
    :goto_2
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v6}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$300(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 462
    invoke-static {v6}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$400(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 463
    invoke-static {v6}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->access$500(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    move v2, v0

    .line 465
    .local v2, "introduction":Z
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-boolean v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    const/16 v8, 0x8

    if-eqz v7, :cond_8

    move v7, v8

    goto :goto_4

    :cond_8
    move v7, v0

    :goto_4
    invoke-virtual {v6, v7}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 466
    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    if-eqz v2, :cond_9

    move v7, v0

    goto :goto_5

    :cond_9
    move v7, v8

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 467
    if-eqz v2, :cond_e

    .line 468
    if-eqz v3, :cond_a

    .line 469
    const v6, 0x7f11070d

    goto :goto_6

    .line 470
    :cond_a
    if-eqz v5, :cond_b

    .line 471
    const v6, 0x7f110701

    goto :goto_6

    .line 472
    :cond_b
    iget-boolean v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    if-eqz v6, :cond_c

    .line 473
    const v6, 0x7f11070f

    goto :goto_6

    .line 474
    :cond_c
    const v6, 0x7f11070e

    .line 475
    .local v6, "message":I
    :goto_6
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v6}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 476
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v7}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 477
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    move v9, v0

    goto :goto_7

    :cond_d
    move v9, v8

    :goto_7
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    .end local v6    # "message":I
    :cond_e
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->computeAlarmWarningText(Z)Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, "warning":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    move v0, v8

    :goto_8
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method


# virtual methods
.method protected addZenConditions(I)V
    .locals 6
    .param p1, "count"    # I

    .line 366
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeButtonLayoutId:I

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 368
    .local v2, "rb":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 369
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 370
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenModeConditionLayoutId:I

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 371
    .local v3, "rbc":Landroid/view/View;
    add-int v4, v1, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 372
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    .end local v2    # "rb":Landroid/view/View;
    .end local v3    # "rbc":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected createZenButtons()V
    .locals 4

    .line 170
    const v0, 0x7f0a04bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 173
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 171
    const v2, 0x7f1102cd

    const v3, 0x7f1102ce

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 176
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 174
    const v2, 0x7f1102c8

    const v3, 0x7f1102c7

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 179
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 177
    const v2, 0x7f1102d0

    const v3, 0x7f1102cf

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 181
    return-void
.end method

.method getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p1, "index"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method getSelectedZen(I)I
    .locals 2
    .param p1, "defValue"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "zen":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method getVisibleConditions()I
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "rt":I
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 618
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "rt":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 619
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "i":I
    :cond_1
    return v3
.end method

.method handleUpdateConditions(Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "c"    # Landroid/service/notification/Condition;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 523
    if-nez p1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->bindGenericCountdown()V

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->bindGenericCountdown()V

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 532
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->bindGenericCountdown()V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    .line 535
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 536
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->bindNextAlarm(Landroid/service/notification/Condition;)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 542
    :cond_4
    const-string v0, "ZenModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid manual condition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    return-void
.end method

.method handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 411
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 412
    .local v0, "zen":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    .line 413
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 414
    :cond_1
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_1

    .line 415
    :cond_2
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->createCondition(Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v1

    .line 416
    .local v1, "c":Landroid/service/notification/Condition;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions(Landroid/service/notification/Condition;)V

    .line 417
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 418
    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 4
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 377
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 378
    const/4 v0, 0x3

    .line 379
    .local v0, "minConditions":I
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->addZenConditions(I)V

    .line 380
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 381
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 382
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init mExitCondition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    .line 384
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->update()V

    .line 266
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->createZenButtons()V

    .line 187
    const v0, 0x7f0a04c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    .line 188
    const v0, 0x7f0a04c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f0a04c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$lbJ8lHqFYfMZus-ckwTZAx6gp_I;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$lbJ8lHqFYfMZus-ckwTZAx6gp_I;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v0, 0x7f0a04c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$1BYa_z9Fn3nPDHjhUKHednhVOqQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$1BYa_z9Fn3nPDHjhUKHednhVOqQ;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    const v2, 0x7f11070c

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 200
    const v0, 0x7f0a04bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 201
    const v0, 0x7f0a04bb

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f0a04c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 203
    const v0, 0x7f0a04c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 205
    const v0, 0x7f0a0130

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEdit:Landroid/view/ViewGroup;

    .line 207
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyText:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmpty:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f0a006e

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoRule:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 326
    :cond_0
    if-eqz p1, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->onAttach()V

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->onDetach()V

    .line 331
    :goto_0
    return-void
.end method

.method setAttached(Z)V
    .locals 0
    .param p1, "attached"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    .line 320
    return-void
.end method

.method public setAutoText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAutoTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;-><init>(Lcom/android/systemui/volume/ZenModePanel;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 406
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 407
    return-void
.end method

.method public setEmptyState(II)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mEmptyIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$HiD6qQcUVG9hPBXBbXjbkowbyWE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$HiD6qQcUVG9hPBXBbXjbkowbyWE;-><init>(Lcom/android/systemui/volume/ZenModePanel;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 229
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 230
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->transitionFrom(Landroid/view/View;Landroid/view/View;)V

    .line 231
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mState:I

    .line 232
    return-void
.end method

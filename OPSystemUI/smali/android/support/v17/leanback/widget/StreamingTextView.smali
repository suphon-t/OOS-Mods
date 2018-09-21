.class Landroid/support/v17/leanback/widget/StreamingTextView;
.super Landroid/widget/EditText;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final STREAM_POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/widget/StreamingTextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mOneDot:Landroid/graphics/Bitmap;

.field final mRandom:Ljava/util/Random;

.field mStreamPosition:I

.field private mStreamingAnimation:Landroid/animation/ObjectAnimator;

.field mTwoDot:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-string v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    new-instance v0, Landroid/support/v17/leanback/widget/StreamingTextView$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "streamPosition"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/StreamingTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    .line 89
    return-void
.end method

.method private addDottySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "displayText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textStart"    # I

    .line 193
    sget-object v0, Landroid/support/v17/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 194
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    add-int/2addr v1, p3

    .line 196
    .local v1, "wordStart":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/2addr v2, p3

    .line 197
    .local v2, "wordEnd":I
    new-instance v3, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v3, p0, v4, v1}, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;-><init>(Landroid/support/v17/leanback/widget/StreamingTextView;II)V

    .line 198
    .local v3, "span":Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;
    const/16 v4, 0x21

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    .end local v1    # "wordStart":I
    .end local v2    # "wordEnd":I
    .end local v3    # "span":Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;
    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private cancelStreamAnimation()V
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 190
    :cond_0
    return-void
.end method

.method private getScaledBitmap(IF)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resourceId"    # I
    .param p2, "scaled"    # F

    .line 102
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 103
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 292
    :cond_1
    return v1
.end method

.method private startStreamAnimation()V
    .locals 8

    .line 170
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->cancelStreamAnimation()V

    .line 171
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->getStreamPosition()I

    move-result v0

    .line 172
    .local v0, "pos":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->length()I

    move-result v1

    .line 173
    .local v1, "totalLen":I
    sub-int v2, v1, v0

    .line 174
    .local v2, "animLen":I
    if-lez v2, :cond_1

    .line 175
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_0

    .line 176
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 177
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 178
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    sget-object v4, Landroid/support/v17/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroid/util/Property;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 180
    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 181
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x32

    int-to-long v6, v2

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 184
    :cond_1
    return-void
.end method

.method private updateText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "displayText"    # Ljava/lang/CharSequence;

    .line 223
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StreamingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StreamingTextView;->bringPointIntoView(I)Z

    .line 225
    return-void
.end method


# virtual methods
.method getStreamPosition()I
    .locals 1

    .line 161
    iget v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    .line 95
    sget v0, Landroid/support/v17/leanback/R$drawable;->lb_text_dot_one:I

    const v1, 0x3fa66666    # 1.3f

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/StreamingTextView;->getScaledBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    .line 96
    sget v0, Landroid/support/v17/leanback/R$drawable;->lb_text_dot_two:I

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/StreamingTextView;->getScaledBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->reset()V

    .line 99
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 232
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 233
    const-class v0, Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public reset()V
    .locals 1

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 114
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->cancelStreamAnimation()V

    .line 115
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StreamingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 304
    nop

    .line 305
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 304
    invoke-super {p0, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 306
    return-void
.end method

.method setStreamPosition(I)V
    .locals 0
    .param p1, "streamPosition"    # I

    .line 165
    iput p1, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 166
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->invalidate()V

    .line 167
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "stableText"    # Ljava/lang/String;
    .param p2, "pendingText"    # Ljava/lang/String;

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string p1, ""

    .line 128
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    .local v0, "displayText":Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 136
    .local v1, "pendingTextStart":I
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 138
    invoke-direct {p0, v0, p2, v1}, Landroid/support/v17/leanback/widget/StreamingTextView;->addDottySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 148
    .end local v1    # "pendingTextStart":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 153
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/StreamingTextView;->updateText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->startStreamAnimation()V

    .line 158
    return-void
.end method

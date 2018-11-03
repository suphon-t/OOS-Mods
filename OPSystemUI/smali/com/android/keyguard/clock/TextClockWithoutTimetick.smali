.class public Lcom/android/keyguard/clock/TextClockWithoutTimetick;
.super Landroid/widget/TextView;
.source "TextClockWithoutTimetick.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-string v0, "h:mm a"

    sput-object v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 122
    const-string v0, "H:mm"

    sput-object v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;-><init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;-><init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTicker:Ljava/lang/Runnable;

    .line 554
    new-instance v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick$3;-><init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 194
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->init()V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 229
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 163
    new-instance v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;-><init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;-><init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTicker:Ljava/lang/Runnable;

    .line 554
    new-instance v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick$3;-><init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 231
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    .line 235
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    .line 236
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    nop

    .line 241
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->init()V

    .line 242
    return-void

    .line 238
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .line 517
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 94
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 94
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/clock/TextClockWithoutTimetick;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/clock/TextClockWithoutTimetick;
    .param p1, "x1"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    .line 471
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat(Z)V

    .line 472
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5
    .param p1, "handleTicker"    # Z

    .line 492
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->is24HourModeEnabled()Z

    move-result v0

    .line 494
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 496
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_0

    .line 497
    iget-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    .line 498
    iget-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    .line 501
    iget-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat:Ljava/lang/CharSequence;

    .line 504
    :goto_0
    iget-boolean v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mHasSeconds:Z

    .line 505
    .local v2, "hadSeconds":Z
    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mHasSeconds:Z

    .line 507
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mAttached:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    .line 508
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 509
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 511
    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTime:Ljava/util/Calendar;

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTime:Ljava/util/Calendar;

    .line 266
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 247
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 248
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 251
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    .line 255
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->createTime(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat(Z)V

    .line 258
    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 621
    return-void
.end method

.method private registerObserver()V
    .locals 5

    .line 586
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/TextClockWithoutTimetick$FormatChangeObserver;-><init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mShowCurrentUserTime:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 592
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 595
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 599
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 7

    .line 564
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 578
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 577
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 581
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 583
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 611
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 613
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 606
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 626
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 629
    .local v0, "s":Ljava/lang/CharSequence;
    const-string v1, "format12Hour"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 632
    const-string v1, "format24Hour"

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v1, "format"

    iget-object v3, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v1, "hasSeconds"

    iget-boolean v2, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 635
    return-void
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .line 420
    iget-boolean v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 522
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 523
    iget-boolean v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mAttached:Z

    if-nez v0, :cond_1

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mAttached:Z

    .line 526
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->registerReceiver()V

    .line 527
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->registerObserver()V

    .line 529
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->createTime(Ljava/lang/String;)V

    .line 531
    iget-boolean v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mHasSeconds:Z

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->onTimeChanged()V

    .line 537
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 541
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 543
    iget-boolean v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mAttached:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->unregisterReceiver()V

    .line 545
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->unregisterObserver()V

    .line 547
    invoke-virtual {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mAttached:Z

    .line 551
    :cond_0
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 321
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat12:Ljava/lang/CharSequence;

    .line 323
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat()V

    .line 324
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->onTimeChanged()V

    .line 325
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 379
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mDescFormat24:Ljava/lang/CharSequence;

    .line 381
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat()V

    .line 382
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->onTimeChanged()V

    .line 383
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat12:Ljava/lang/CharSequence;

    .line 312
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat()V

    .line 313
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->onTimeChanged()V

    .line 314
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mFormat24:Ljava/lang/CharSequence;

    .line 370
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat()V

    .line 371
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->onTimeChanged()V

    .line 372
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .line 393
    iput-boolean p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->mShowCurrentUserTime:Z

    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->chooseFormat()V

    .line 396
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->onTimeChanged()V

    .line 397
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->unregisterObserver()V

    .line 398
    invoke-direct {p0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->registerObserver()V

    .line 399
    return-void
.end method

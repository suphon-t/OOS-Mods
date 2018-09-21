.class public Lcom/android/systemui/statusbar/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field private static final STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHapticFeedbackEnabled:Z

.field private final mVibrationObserver:Landroid/database/ContentObserver;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 36
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 37
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/VibratorHelper;->STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/VibratorHelper$1;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/VibratorHelper$1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrationObserver:Landroid/database/ContentObserver;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    .line 49
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    .line 52
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrationObserver:Landroid/database/ContentObserver;

    .line 51
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrationObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/VibratorHelper;

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->updateHapticFeedBackEnabled()V

    return-void
.end method

.method public static synthetic lambda$vibrate$0(Lcom/android/systemui/statusbar/VibratorHelper;I)V
    .locals 3
    .param p1, "effectId"    # I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/VibratorHelper;->STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private updateHapticFeedBackEnabled()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mHapticFeedbackEnabled:Z

    .line 68
    return-void
.end method


# virtual methods
.method public vibrate(I)V
    .locals 1
    .param p1, "effectId"    # I

    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
.super Ljava/lang/Object;
.source "AlwaysOnDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;
    }
.end annotation


# instance fields
.field public dimmingScrimArray:[I

.field private final mContext:Landroid/content/Context;

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mSettingsObserver:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

.field public proxCooldownPeriodMs:J

.field public proxCooldownTriggerMs:J

.field public proxScreenOffDelayMs:J

.field public screenBrightnessArray:[I

.field public wallpaperFadeOutDuration:J

.field public wallpaperVisibilityDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 122
    new-instance v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;-><init>(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mSettingsObserver:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mSettingsObserver:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->observe()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    return-object v0
.end method

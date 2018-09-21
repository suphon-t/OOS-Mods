.class public final Lcom/android/systemui/statusbar/policy/SmartReplyConstants;
.super Landroid/database/ContentObserver;
.source "SmartReplyConstants.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultEnabled:Z

.field private final mDefaultMaxSqueezeRemeasureAttempts:I

.field private final mDefaultRequiresP:Z

.field private mEnabled:Z

.field private mMaxSqueezeRemeasureAttempts:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mRequiresTargetingP:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 49
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEnabled:Z

    .line 58
    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultRequiresP:Z

    .line 60
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxSqueezeRemeasureAttempts:I

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_replies_in_notifications_flags"

    .line 64
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 63
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->updateConstants()V

    .line 67
    return-void
.end method

.method private updateConstants()V
    .locals 3

    .line 75
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_replies_in_notifications_flags"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "SmartReplyConstants"

    const-string v2, "Bad smart reply constants"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEnabled:Z

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "requires_targeting_p"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultRequiresP:Z

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mRequiresTargetingP:Z

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "max_squeeze_remeasure_attempts"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxSqueezeRemeasureAttempts:I

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxSqueezeRemeasureAttempts:I

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getMaxSqueezeRemeasureAttempts()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxSqueezeRemeasureAttempts:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEnabled:Z

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->updateConstants()V

    .line 72
    return-void
.end method

.method public requiresTargetingP()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mRequiresTargetingP:Z

    return v0
.end method

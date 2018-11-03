.class public abstract Lcom/android/systemui/qs/SecureSetting;
.super Landroid/database/ContentObserver;
.source "SecureSetting.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListening:Z

.field private mObservedValue:I

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingName"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 45
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    .line 72
    .local v0, "value":I
    iget v1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecureSetting;->handleValueChanged(IZ)V

    .line 73
    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 74
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 58
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 62
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 61
    invoke-virtual {v1, v2, v0, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 67
    :goto_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 77
    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 53
    return-void
.end method

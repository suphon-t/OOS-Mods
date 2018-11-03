.class public abstract Lcom/android/systemui/qs/SystemSetting;
.super Landroid/database/ContentObserver;
.source "SystemSetting.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserOnly:Z

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingName"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingName"    # Ljava/lang/String;
    .param p4, "currentUserOnly"    # Z

    .line 29
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    .line 32
    iput-boolean p4, p0, Lcom/android/systemui/qs/SystemSetting;->mCurrentUserOnly:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SystemSetting;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getValue(I)I
    .locals 3
    .param p1, "def"    # I

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/qs/SystemSetting;->mCurrentUserOnly:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/SystemSetting;->handleValueChanged(IZ)V

    .line 70
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/SystemSetting;->mCurrentUserOnly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    :goto_0
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/qs/SystemSetting;->mCurrentUserOnly:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    :goto_0
    return-void
.end method

.class public abstract Lcom/android/systemui/qs/GlobalSetting;
.super Landroid/database/ContentObserver;
.source "GlobalSetting.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingName"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/qs/GlobalSetting;->mSettingName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/GlobalSetting;->mSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected abstract handleValueChanged(I)V
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/GlobalSetting;->handleValueChanged(I)V

    .line 60
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/GlobalSetting;->mSettingName:Ljava/lang/String;

    .line 51
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    :goto_0
    return-void
.end method

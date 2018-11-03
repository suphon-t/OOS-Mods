.class public interface abstract Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;,
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;,
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
    }
.end annotation


# direct methods
.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 6
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 98
    const-string p0, "rotate,networkspeed"

    .line 101
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 102
    .local v1, "mTM":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "23410"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string v2, "StatusBarIconController"

    const-string v3, "O2 UK sim, add volte/vowifi to blacklist by default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string p0, "rotate,networkspeed,volte,vowifi"

    .line 110
    .end local v1    # "mTM":Landroid/telephony/TelephonyManager;
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "blacklist":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 112
    .local v4, "slot":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v4    # "slot":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_2
    return-object v0
.end method


# virtual methods
.method public abstract addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract removeAllIconsForSlot(Ljava/lang/String;)V
.end method

.method public abstract removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract setExternalIcon(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract setIconVisibility(Ljava/lang/String;Z)V
.end method

.method public abstract setMobileIcons(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOPCustView(Ljava/lang/String;IZ)V
.end method

.method public abstract setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
.end method

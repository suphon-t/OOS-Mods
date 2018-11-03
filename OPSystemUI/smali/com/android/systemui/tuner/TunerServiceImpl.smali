.class public Lcom/android/systemui/tuner/TunerServiceImpl;
.super Lcom/android/systemui/tuner/TunerService;
.source "TunerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerServiceImpl$Observer;
    }
.end annotation


# static fields
.field private static final RESET_BLACKLIST:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mListeningUris:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

.field private mTM:Landroid/telephony/TelephonyManager;

.field private final mTunableLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTunables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-string/jumbo v0, "sysui_qs_tiles"

    const-string v1, "doze_always_on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerService;-><init>()V

    .line 67
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    .line 73
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 85
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 86
    const-string/jumbo v2, "sysui_tuner_version"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    .line 87
    const-string/jumbo v2, "sysui_tuner_version"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/tuner/TunerServiceImpl;->upgradeTuner(II)V

    .line 89
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_1

    .line 91
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 92
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl$1;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl$1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTM:Landroid/telephony/TelephonyManager;

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/tuner/TunerServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/TunerServiceImpl;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/tuner/TunerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/TunerServiceImpl;

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/TunerServiceImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadSetting(Landroid/net/Uri;)V

    return-void
.end method

.method private addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V
    .locals 5
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "key"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    const-class v0, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    const-string v2, "TunerService.mTunables"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/leak/LeakDetector;->trackCollection(Ljava/util/Collection;Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v1, p2, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p1, p2, v1}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private reloadAll()V
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 245
    .local v4, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v4, v1, v2}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v4    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    goto :goto_1

    .line 247
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method private reloadSetting(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 229
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 231
    .local v1, "tunables":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    if-nez v1, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 236
    .local v4, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v4, v0, v2}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v4    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method

.method private upgradeTuner(II)V
    .locals 6
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .line 113
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 114
    const-string v0, "icon_blacklist"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "blacklistStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 116
    nop

    .line 117
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 119
    .local v1, "iconBlacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, "rotate"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTM:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTM:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "23410"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "TunerService"

    const-string v3, "O2 UK sim, add volte/vowifi to blacklist by default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v2, "volte"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 129
    const-string/jumbo v2, "vowifi"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "icon_blacklist"

    const-string v4, ","

    .line 136
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 134
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 152
    .end local v0    # "blacklistStr":Ljava/lang/String;
    .end local v1    # "iconBlacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v0, "sysui_tuner_version"

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->setValue(Ljava/lang/String;I)V

    .line 153
    return-void
.end method


# virtual methods
.method public varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 3
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 184
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 185
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/tuner/TunerServiceImpl;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V

    .line 184
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sysui_demo_allowed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.demo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string v3, "exit"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 259
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_BLACKLIST:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    goto :goto_0

    .line 262
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 264
    :cond_1
    return-void
.end method

.method public getValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object p2

    .line 174
    :cond_0
    return-object v0
.end method

.method public removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 2
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 211
    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 212
    .end local v1    # "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    goto :goto_0

    .line 213
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    return-void
.end method

.method protected reregisterAll()V
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 224
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    iget v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 225
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 179
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 180
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 163
    return-void
.end method

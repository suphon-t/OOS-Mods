.class public Lcom/android/systemui/qs/AutoAddTracker;
.super Ljava/lang/Object;
.source "AutoAddTracker.java"


# static fields
.field private static final CONVERT_PREFS:[[Ljava/lang/String;


# instance fields
.field private final mAutoAdded:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected final mObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "QsHotspotAdded"

    const-string v2, "hotspot"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "QsDataSaverAdded"

    const-string v2, "saver"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "QsInvertColorsAdded"

    const-string v2, "inversion"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "QsWorkAdded"

    const-string/jumbo v2, "work"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "QsNightDisplayAdded"

    const-string v2, "night"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/AutoAddTracker;->CONVERT_PREFS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/systemui/qs/AutoAddTracker$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/AutoAddTracker$1;-><init>(Lcom/android/systemui/qs/AutoAddTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mObserver:Landroid/database/ContentObserver;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->getAdded()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    .line 55
    sget-object v0, Lcom/android/systemui/qs/AutoAddTracker;->CONVERT_PREFS:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 56
    .local v4, "convertPref":[Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-static {p1, v5, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    .line 58
    aget-object v5, v4, v2

    invoke-static {p1, v5}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .end local v4    # "convertPref":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_auto_tiles"

    .line 62
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->mObserver:Landroid/database/ContentObserver;

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/AutoAddTracker;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/AutoAddTracker;

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->getAdded()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/AutoAddTracker;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/AutoAddTracker;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    return-object v0
.end method

.method private getAdded()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_auto_tiles"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "current":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 89
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private saveTiles()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_auto_tiles"

    const-string v2, ","

    iget-object v3, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    .line 81
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    return-void
.end method


# virtual methods
.method public isAdded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tile"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTileAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "tile"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles()V

    .line 73
    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;,
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    }
.end annotation


# instance fields
.field protected final mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasPinnedNotification:Z

.field private final mHeadsUpEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpNotificationDecay:I

.field protected final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMinimumDisplayTime:I

.field protected mSnoozeLengthMs:I

.field private final mSnoozedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchAcceptanceDelay:I

.field protected mUser:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mMinimumDisplayTime:I

    .line 76
    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpNotificationDecay:I

    .line 77
    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    .line 78
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 79
    nop

    .line 80
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 82
    .local v1, "defaultSnoozeLengthMs":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "heads_up_snooze_length_ms"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 84
    new-instance v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V

    .line 95
    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_snooze_length_ms"

    .line 96
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 95
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    return-void
.end method

.method private addHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->createHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 147
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 152
    .local v3, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v3, p1, v2}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 153
    .end local v3    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 155
    return-void
.end method

.method private hasPinnedNotificationInternal()Z
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

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

    .line 388
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 389
    .local v2, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    const/4 v0, 0x1

    return v0

    .line 392
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_0
    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getAllEntries$0(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p0, "headsUpEntry"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method private static snoozeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # I

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 3
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 424
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 425
    .local v0, "aEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v1

    .line 426
    .local v1, "bEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v2

    return v2

    .line 427
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    return v2
.end method

.method protected createHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .locals 1

    .line 445
    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 358
    const-string v0, "HeadsUpManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method protected dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 364
    const-string v0, "  mTouchAcceptanceDelay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 365
    const-string v0, "  mSnoozeLengthMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 366
    const-string v0, "  now="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 367
    const-string v0, "  mUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

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

    check-cast v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 369
    .local v1, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    const-string v2, "  HeadsUpEntry="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 370
    .end local v1    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 372
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  snoozed packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 374
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 375
    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public getAllEntries()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$HeadsUpManager$Q03ExeWuSMcpx0F3Hl5vkzUbslA;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 309
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected getHeadsUpEntries()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    return-object v0
.end method

.method public getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 326
    .local v0, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 342
    .local v0, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 343
    .local v2, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v3

    if-gez v3, :cond_2

    .line 344
    :cond_1
    move-object v0, v2

    .line 346
    .end local v2    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_2
    goto :goto_0

    .line 347
    :cond_3
    return-object v0
.end method

.method protected hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 162
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadsUpNotifications()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasPinnedHeadsUp()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSnoozed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 264
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 266
    .local v1, "snoozedUntil":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 269
    const/4 v2, 0x1

    return v2

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isTrackingHeadsUp()Z
    .locals 1

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 453
    return-void
.end method

.method protected onHeadsUpEntryRemoved(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)V
    .locals 4
    .param p1, "remove"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 188
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 189
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 190
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 191
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 193
    .local v3, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v3, v0, v2}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 194
    .end local v3    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseHeadsUpEntry(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)V

    .line 196
    return-void
.end method

.method public releaseAllImmediately()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 241
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 243
    .local v1, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onHeadsUpEntryRemoved(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)V

    .line 245
    .end local v1    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method protected releaseHeadsUpEntry(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 449
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->reset()V

    .line 450
    return-void
.end method

.method public releaseImmediately(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 253
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-nez v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 257
    .local v1, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 258
    return-void
.end method

.method protected removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 184
    .local v0, "remove":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onHeadsUpEntryRemoved(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)V

    .line 185
    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ignoreEarliestRemovalTime"    # Z

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method protected setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V
    .locals 3
    .param p1, "headsUpEntry"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .param p2, "isPinned"    # Z

    .line 168
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 169
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-eq v1, p2, :cond_1

    .line 170
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setPinned(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updatePinnedMode()V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 173
    .local v2, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    if-eqz p2, :cond_0

    .line 174
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_1

    .line 176
    :cond_0
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 178
    .end local v2    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    :goto_1
    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method

.method public setExpanded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "expanded"    # Z

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 438
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded(Z)V

    .line 441
    :cond_0
    return-void
.end method

.method public setUser(I)V
    .locals 0
    .param p1, "user"    # I

    .line 354
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    .line 355
    return-void
.end method

.method protected shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method

.method public showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 121
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 122
    return-void
.end method

.method public snooze()V
    .locals 10

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 282
    .local v2, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    .line 284
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v6

    iget v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 283
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-class v4, Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/notification/OPNotificationController;

    iget-object v5, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/notification/OPNotificationController;->snoozeHeadsUp(Landroid/app/Notification;)V

    .line 288
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public unpinAll()V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 402
    .local v2, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 404
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    .line 405
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method public updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "alert"    # Z

    .line 130
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 132
    if-eqz p2, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 134
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 142
    .end local v0    # "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_1
    return-void
.end method

.method protected updatePinnedMode()V
    .locals 4

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedNotificationInternal()Z

    move-result v0

    .line 200
    .local v0, "hasPinnedNotification":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-ne v0, v1, :cond_0

    .line 201
    return-void

    .line 207
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    const-string v2, "note_peek"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 212
    .local v2, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinnedModeChanged(Z)V

    .line 213
    .end local v2    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    goto :goto_0

    .line 214
    :cond_2
    return-void
.end method

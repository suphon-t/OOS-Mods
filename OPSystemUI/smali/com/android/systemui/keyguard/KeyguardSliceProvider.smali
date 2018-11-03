.class public Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.super Lcom/android/systemui/keyguard/KeyguardSliceProviderBase;
.source "KeyguardSliceProviderGoogle.java"

# interfaces
.implements Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mHideSensitiveContent:Z

.field private final mLock:Ljava/lang/Object;

.field private mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field private final mSmartSpaceMainUri:Landroid/net/Uri;

.field private final mSmartSpaceSecondaryUri:Landroid/net/Uri;

.field private final mWeatherUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "KeyguardSliceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const v0, 0x1

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProviderBase;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLock:Ljava/lang/Object;

    .line 72
    const-string v0, "content://com.android.systemui.keyguard/smartSpace/main"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceMainUri:Landroid/net/Uri;

    .line 73
    const-string v0, "content://com.android.systemui.keyguard/smartSpace/secondary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceSecondaryUri:Landroid/net/Uri;

    .line 74
    const-string v0, "content://com.android.systemui.keyguard/smartSpace/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherUri:Landroid/net/Uri;

    .line 75
    return-void
.end method


# virtual methods
.method notifyChange()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 195
    return-void
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 8
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    .line 88
    .local v0, "currentCard":Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    .line 90
    .local v1, "weatherCard":Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHideSensitiveContent:Z

    .line 92
    .local v3, "hideSensitiveData":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 95
    .local v2, "sliceBuilder":Landroidx/slice/builders/ListBuilder;
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->isDndSuppressingNotifications()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v4

    if-nez v4, :cond_3

    .line 96
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    sget-boolean v4, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 99
    const-string v4, "KeyguardSliceProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not showing current card. SmartSpaceCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " hide sensitive data: true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    invoke-direct {v4, v2, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getFormattedDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 102
    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 105
    :cond_1
    new-instance v4, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceMainUri:Landroid/net/Uri;

    invoke-direct {v4, v2, v5}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    .line 107
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v4

    .line 108
    .local v4, "headerBuilder":Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceSecondaryUri:Landroid/net/Uri;

    invoke-direct {v5, v2, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    .line 110
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 111
    .local v5, "contentBuilder":Landroidx/slice/builders/ListBuilder$RowBuilder;
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 112
    .local v6, "icon":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 113
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 115
    :cond_2
    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 116
    .end local v4    # "headerBuilder":Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .end local v5    # "contentBuilder":Landroidx/slice/builders/ListBuilder$RowBuilder;
    .end local v6    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 119
    :cond_3
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    invoke-direct {v4, v2, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getFormattedDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 119
    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 123
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherUri:Landroid/net/Uri;

    invoke-direct {v4, v2, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    .line 125
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    .line 126
    .local v4, "weatherBuilder":Landroidx/slice/builders/ListBuilder$RowBuilder;
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 127
    .local v5, "icon":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_4

    .line 130
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 131
    .local v6, "weatherIcon":Landroid/graphics/drawable/Icon;
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    .line 132
    invoke-virtual {v4, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 134
    .end local v6    # "weatherIcon":Landroid/graphics/drawable/Icon;
    :cond_4
    invoke-virtual {v2, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 137
    .end local v4    # "weatherBuilder":Landroidx/slice/builders/ListBuilder$RowBuilder;
    .end local v5    # "icon":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addNextAlarm(Landroidx/slice/builders/ListBuilder;)V

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addZenMode(Landroidx/slice/builders/ListBuilder;)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addPrimaryAction(Landroidx/slice/builders/ListBuilder;)V

    .line 141
    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v4

    .line 142
    .local v4, "slice":Landroidx/slice/Slice;
    sget-boolean v5, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 143
    const-string v5, "KeyguardSliceProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binding slice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6
    return-object v4

    .line 92
    .end local v2    # "sliceBuilder":Landroidx/slice/builders/ListBuilder;
    .end local v3    # "hideSensitiveData":Z
    .end local v4    # "slice":Landroidx/slice/Slice;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProviderBase;->onCreateSliceProvider()Z

    move-result v0

    .line 80
    .local v0, "created":Z
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->get(Landroid/content/Context;)Lcom/google/android/systemui/smartspace/SmartSpaceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->setListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V

    .line 81
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 82
    return v0
.end method

.method public onGsaChanged()V
    .locals 0

    .line 165
    return-void
.end method

.method public onSensitiveModeChanged(Z)V
    .locals 5
    .param p1, "hidePrivateData"    # Z

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHideSensitiveContent:Z

    if-eq v2, p1, :cond_0

    .line 172
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHideSensitiveContent:Z

    .line 173
    const/4 v0, 0x1

    .line 174
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 175
    const-string v2, "KeyguardSliceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Public mode changed, hide data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 182
    :cond_1
    return-void

    .line 178
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V
    .locals 5
    .param p1, "smartspaceData"    # Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 150
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 151
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSmartSpaceData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    .line 154
    .local v0, "weatherCard":Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isIconProcessed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->setIconProcessed(Z)V

    .line 157
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$AddShadowTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 161
    :goto_0
    return-void
.end method

.method protected updateClock()V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->notifyChange()V

    .line 191
    return-void
.end method

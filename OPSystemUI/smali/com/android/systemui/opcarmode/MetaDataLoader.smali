.class public Lcom/android/systemui/opcarmode/MetaDataLoader;
.super Ljava/lang/Object;
.source "MetaDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;,
        Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
    }
.end annotation


# instance fields
.field private final LIMIT_BACKGROUND_COUNT:I

.field private final LIMIT_ICON_COUNT:I

.field private final LIMIT_ICON_DEFINITION:I

.field private mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

.field private mCarModeRes:Landroid/content/res/Resources;

.field private mContext:Landroid/content/Context;

.field private mIconData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBackgroundLoaded:Z

.field private mIsEntriesLoaded:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->LIMIT_ICON_COUNT:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->LIMIT_ICON_DEFINITION:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->LIMIT_BACKGROUND_COUNT:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    .line 52
    iput-object p1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mNotificationManager:Landroid/app/NotificationManager;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadAll()Z

    .line 56
    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mCarModeRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/opcarmode/MetaDataLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    return p1
.end method

.method private getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "metaKey"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "metaData":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oneplus.carmode"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 181
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 182
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 185
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MetaDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught when loading meta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v1, Lcom/android/systemui/opcarmode/CarModeDockController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MetaDataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-object v0
.end method

.method private getResId(Ljava/lang/String;)I
    .locals 5
    .param p1, "strResId"    # Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "resId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.oneplus.carmode"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mCarModeRes:Landroid/content/res/Resources;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mCarModeRes:Landroid/content/res/Resources;

    const-string v2, "drawable"

    const-string v3, "com.oneplus.carmode"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MetaDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught when loading res: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private loadBackground()Z
    .locals 13

    .line 143
    const-string v0, "op_car_mode_dock_background"

    invoke-direct {p0, v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "meta":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "MetaDataLoader"

    const-string v3, "background meta is empty."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v2

    .line 149
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "metaList":[Ljava/lang/String;
    if-eqz v1, :cond_8

    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto/16 :goto_3

    .line 156
    :cond_1
    const/4 v3, 0x0

    .local v3, "background":Ljava/lang/String;
    const/4 v5, 0x0

    .line 157
    .local v5, "dndBackground":Ljava/lang/String;
    array-length v6, v1

    move-object v7, v5

    move-object v5, v3

    move v3, v2

    .end local v3    # "background":Ljava/lang/String;
    .local v5, "background":Ljava/lang/String;
    .local v7, "dndBackground":Ljava/lang/String;
    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v8, v1, v3

    .line 158
    .local v8, "item":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "data":[Ljava/lang/String;
    if-eqz v9, :cond_5

    array-length v10, v9

    if-ge v10, v4, :cond_2

    goto :goto_2

    .line 163
    :cond_2
    const-string v10, "normal"

    aget-object v11, v9, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    .line 164
    aget-object v5, v9, v11

    goto :goto_1

    .line 165
    :cond_3
    const-string v10, "dnd"

    aget-object v12, v9, v2

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 166
    aget-object v7, v9, v11

    .line 157
    .end local v8    # "item":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .restart local v8    # "item":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not valid background data: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v2

    .line 169
    .end local v8    # "item":Ljava/lang/String;
    .end local v9    # "data":[Ljava/lang/String;
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 170
    new-instance v2, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    iput-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    .line 171
    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    invoke-static {v2, v5, v7}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->access$300(Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    invoke-virtual {v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->isValid()Z

    move-result v2

    return v2

    .line 174
    :cond_7
    return v2

    .line 151
    .end local v5    # "background":Ljava/lang/String;
    .end local v7    # "dndBackground":Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found invalid background meta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v2
.end method

.method private loadEntries()Z
    .locals 13

    .line 110
    const-string v0, "op_car_mode_dock"

    invoke-direct {p0, v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "meta":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "MetaDataLoader"

    const-string v3, "entry meta is empty."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v2

    .line 116
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "dataList":[Ljava/lang/String;
    if-eqz v1, :cond_7

    array-length v3, v1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    goto :goto_2

    .line 122
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    .line 125
    array-length v3, v1

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_5

    aget-object v7, v1, v5

    .line 126
    .local v7, "item":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "data":[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v9, v8

    const/4 v10, 0x4

    if-ge v9, v10, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    new-instance v9, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    .line 132
    .local v9, "icon":Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
    aget-object v10, v8, v2

    aget-object v6, v8, v6

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-direct {p0, v11}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    aget-object v12, v8, v12

    invoke-direct {p0, v12}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v12

    invoke-static {v9, v10, v6, v11, v12}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    .line 133
    invoke-virtual {v9}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v7    # "item":Ljava/lang/String;
    .end local v9    # "icon":Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    .restart local v7    # "item":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found invalid data entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v2

    .line 136
    .end local v7    # "item":Ljava/lang/String;
    .end local v8    # "data":[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_6

    .line 137
    return v6

    .line 139
    :cond_6
    return v2

    .line 118
    :cond_7
    :goto_2
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found invalid entry meta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v2
.end method


# virtual methods
.method public getBackgroundData()Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    return-object v0

    .line 102
    :cond_0
    const-string v0, "MetaDataLoader"

    const-string v1, "Not loaded. Using default background data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    .line 104
    .local v0, "defaultBackground":Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;
    const-string v1, "#FFF3F4F9"

    const-string v2, "#FF262630"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->access$300(Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method public getIconData()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;",
            ">;"
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    return-object v0

    .line 82
    :cond_0
    const-string v0, "MetaDataLoader"

    const-string v1, "Not loaded. Using default entry data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.oneplus.carmode/com.oneplus.carmode.activity.MainActivity"

    const-string v5, "light_home"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_home"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.netease.cloudmusic/com.netease.cloudmusic.activity.LoadingActivity"

    const-string v5, "light_music"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_music"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.autonavi.minimap/com.autonavi.map.activity.NewMapActivity"

    const-string v5, "light_navigation"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_navigation"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.android.dialer/com.android.dialer.oneplus.car.OPCarDialtactsActivity"

    const-string v5, "light_phone"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_phone"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v2, "act"

    const-string v3, "dnd"

    const-string v4, "light_donot_disturb"

    invoke-direct {p0, v4}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v4

    const-string v5, "dnd_donot_disturb"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAll()Z
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadEntries()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadBackground()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->isLoaded()Z

    move-result v0

    return v0
.end method

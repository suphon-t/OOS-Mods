.class public Lcom/google/android/systemui/smartspace/NewCardInfo;
.super Ljava/lang/Object;
.source "NewCardInfo.java"


# instance fields
.field private final mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field private final mIntent:Landroid/content/Intent;

.field private final mIsPrimary:Z

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mPublishTime:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "card"    # Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isPrimary"    # Z
    .param p4, "publishTime"    # J
    .param p6, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 51
    iput-boolean p3, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIsPrimary:Z

    .line 52
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIntent:Landroid/content/Intent;

    .line 53
    iput-wide p4, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPublishTime:J

    .line 54
    iput-object p6, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 55
    return-void
.end method

.method static createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "iconRes"    # Landroid/content/Intent$ShortcutIconResource;
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 125
    iget-object v3, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, "id":I
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 130
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "id":I
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 131
    :goto_0
    return-object v1
.end method

.method private static retrieveFromIntent(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p0, "bundleKey"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getUserId()I
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIsPrimary:Z

    return v0
.end method

.method public retrieveIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-object v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->icon:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;

    .line 63
    .local v0, "img":Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return-object v1

    .line 67
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/google/android/systemui/smartspace/NewCardInfo;->retrieveFromIntent(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 68
    .local v2, "icon":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 69
    return-object v2

    .line 72
    :cond_1
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    iget-object v3, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 74
    .local v3, "imageUri":Landroid/net/Uri;
    nop

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 74
    return-object v4

    .line 76
    .end local v3    # "imageUri":Landroid/net/Uri;
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 77
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 78
    .local v3, "resInfo":Landroid/content/Intent$ShortcutIconResource;
    const-string v4, "com.google.android.googlequicksearchbox"

    iput-object v4, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 79
    iget-object v4, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 80
    invoke-static {v3, p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 84
    .end local v3    # "resInfo":Landroid/content/Intent$ShortcutIconResource;
    :cond_3
    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "NewCardInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieving bitmap uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gsaRes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$Image;->gsaResourceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public shouldDiscard()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iget-boolean v0, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->shouldDiscard:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toWrapper(Landroid/content/Context;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {v0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;-><init>()V

    .line 96
    .local v0, "proto":Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->retrieveIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 98
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 100
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 102
    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mCard:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    iput-object v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 103
    iget-wide v2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPublishTime:J

    iput-wide v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 104
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 106
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/NewCardInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v2, v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    .line 108
    :cond_1
    return-object v0
.end method

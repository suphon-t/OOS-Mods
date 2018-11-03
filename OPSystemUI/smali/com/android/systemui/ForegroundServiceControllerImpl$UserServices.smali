.class Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
.super Ljava/lang/Object;
.source "ForegroundServiceControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServiceControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserServices"
.end annotation


# instance fields
.field private mAppOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImportantNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRunning:[Ljava/lang/String;

.field private mServiceStartTime:J

.field private mStandardLayoutNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mServiceStartTime:J

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mImportantNotifications:Landroid/util/ArrayMap;

    .line 192
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    .line 195
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mAppOps:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/ForegroundServiceControllerImpl$1;

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;-><init>()V

    return-void
.end method


# virtual methods
.method public addImportantNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mImportantNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->addNotification(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public addNotification(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 248
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public addOp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "op"    # I

    .line 203
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mAppOps:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public addStandardLayoutNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->addNotification(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public getFeatures(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public getStandardLayoutKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 289
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 290
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isDungeonNeeded()Z
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mServiceStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 274
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mImportantNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 275
    .local v5, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 273
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 280
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    return v1
.end method

.method public removeImportantNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mImportantNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeNotification(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 257
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 258
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 259
    const/4 v1, 0x0

    .local v1, "found":Z
    goto :goto_0

    .line 261
    .end local v1    # "found":Z
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 262
    .restart local v1    # "found":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 263
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_1
    :goto_0
    return v1
.end method

.method public removeNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "removed":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeImportantNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeStandardLayoutNotification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 243
    return v0
.end method

.method public removeOp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "op"    # I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 212
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 213
    const/4 v1, 0x0

    .local v1, "found":Z
    goto :goto_0

    .line 215
    .end local v1    # "found":Z
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 216
    .restart local v1    # "found":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    :goto_0
    return v1
.end method

.method public removeStandardLayoutNotification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRunningServices([Ljava/lang/String;J)V
    .locals 1
    .param p1, "pkgs"    # [Ljava/lang/String;
    .param p2, "serviceStartTime"    # J

    .line 198
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    .line 199
    iput-wide p2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mServiceStartTime:J

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserServices{mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mRunning:[Ljava/lang/String;

    .line 298
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mServiceStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mImportantNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mImportantNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStandardLayoutNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    return-object v0
.end method

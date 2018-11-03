.class public Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
.super Ljava/lang/Object;
.source "MetaDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/opcarmode/MetaDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconData"
.end annotation


# instance fields
.field private mDndResId:I

.field private mIntent:Landroid/content/Intent;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mResId:I

.field final synthetic this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/systemui/opcarmode/MetaDataLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;

    .line 209
    iput-object p1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;
    .param p2, "x1"    # Lcom/android/systemui/opcarmode/MetaDataLoader$1;

    .line 202
    invoke-direct {p0, p1}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->set(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v0

    return-object v0
.end method

.method private checkPkgInstallOrNot(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    return v1

    .line 274
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$set$0(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "secondAction"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    const-string v1, "MetaDataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / checkPkgInstallOrNot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->checkPkgInstallOrNot(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->checkPkgInstallOrNot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/opcarmode/TTSEngine;->initSentence(Landroid/content/Context;)Lcom/android/systemui/opcarmode/TTSEngine;

    move-result-object v1

    .line 228
    .local v1, "iTTSEngine":Lcom/android/systemui/opcarmode/TTSEngine;
    const-string v2, "com.netease.cloudmusic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v2}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110135

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/opcarmode/TTSEngine;->playText(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v2}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110134

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/opcarmode/TTSEngine;->playText(Ljava/lang/String;)V

    .line 233
    :cond_2
    :goto_0
    nop

    .line 237
    .end local v1    # "iTTSEngine":Lcom/android/systemui/opcarmode/TTSEngine;
    :cond_3
    const-string v1, "com.netease.cloudmusic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/MusicUtil;->launchMusicApp(Landroid/content/Context;)V

    goto :goto_1

    .line 240
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 242
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    .line 243
    invoke-static {v3}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0100be

    const v5, 0x7f0100bf

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 242
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 246
    :cond_5
    const-string v1, "MetaDataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_1
    return-void
.end method

.method public static synthetic lambda$set$1(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;)V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$600(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getZenModeByType(I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 257
    .local v0, "dndEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 258
    .local v2, "val":I
    :goto_1
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user clicked dnd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$600(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/app/NotificationManager;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "MetaDataLoader"

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/app/NotificationManager;->setZenModeByType(ILandroid/net/Uri;Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public static synthetic lambda$set$2(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 255
    new-instance v0, Lcom/android/systemui/opcarmode/-$$Lambda$MetaDataLoader$IconData$SyJcbw6p83XUXfW36KRWyAgVfCg;

    invoke-direct {v0, p0}, Lcom/android/systemui/opcarmode/-$$Lambda$MetaDataLoader$IconData$SyJcbw6p83XUXfW36KRWyAgVfCg;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method private loadIntent(Ljava/lang/String;)Z
    .locals 7
    .param p1, "cn"    # Ljava/lang/String;

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 303
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "caller":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    .line 309
    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    aget-object v4, v0, v1

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    nop

    .line 315
    return v5

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIntent failed: cn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v1

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v1
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "secondAction"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "dndResId"    # I

    .line 212
    iput p3, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mResId:I

    .line 213
    iput p4, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mDndResId:I

    .line 215
    const-string v0, "cn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0, p2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->loadIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/systemui/opcarmode/-$$Lambda$MetaDataLoader$IconData$xPShnCCZOY7ny2wAAJju2eQfxTQ;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/opcarmode/-$$Lambda$MetaDataLoader$IconData$xPShnCCZOY7ny2wAAJju2eQfxTQ;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 252
    :cond_1
    const-string v0, "act"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string v0, "dnd"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    new-instance v0, Lcom/android/systemui/opcarmode/-$$Lambda$MetaDataLoader$IconData$icp5R0oQ3jsSFhkyd6Paq7rnNy0;

    invoke-direct {v0, p0}, Lcom/android/systemui/opcarmode/-$$Lambda$MetaDataLoader$IconData$icp5R0oQ3jsSFhkyd6Paq7rnNy0;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;)V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mListener:Landroid/view/View$OnClickListener;

    .line 265
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/systemui/opcarmode/CarModeDockController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MetaDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", 2ndAct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dndResId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    return-object p0
.end method


# virtual methods
.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getDndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$500(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$500(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mDndResId:I

    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v2}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$500(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$500(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mResId:I

    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v2}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 281
    iget v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mDndResId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 320
    const-string v0, ""

    return-object v0
.end method

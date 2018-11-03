.class public Lcom/android/systemui/qs/tiles/IntentTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;,
        Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentUserId:I

.field private mIntentPackage:Ljava/lang/String;

.field private mLastIntent:Landroid/content/Intent;

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Ljava/lang/String;

.field private mOnLongClick:Landroid/app/PendingIntent;

.field private mOnLongClickUri:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;
    .param p2, "action"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 176
    new-instance v0, Lcom/android/systemui/qs/tiles/IntentTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/IntentTile$1;-><init>(Lcom/android/systemui/qs/tiles/IntentTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/IntentTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/IntentTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/IntentTile;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)Lcom/android/systemui/qs/tiles/IntentTile;
    .locals 3
    .param p0, "host"    # Lcom/android/systemui/qs/QSHost;
    .param p1, "spec"    # Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_1

    const-string v0, "intent("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "intent("

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/tiles/IntentTile;-><init>(Lcom/android/systemui/qs/QSHost;Ljava/lang/String;)V

    return-object v1

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty intent tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad intent tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/app/PendingIntent;
    .param p3, "uri"    # Ljava/lang/String;

    .line 110
    if-eqz p2, :cond_1

    .line 111
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0

    .line 116
    :cond_1
    if-eqz p3, :cond_2

    .line 117
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 120
    :goto_0
    nop

    .line 121
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 122
    :cond_2
    :goto_1
    nop

    .line 123
    :goto_2
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 173
    const/16 v0, 0x79

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/IntentTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 95
    const-string v0, "click"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/IntentTile;->sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .line 105
    const-string v0, "long-click"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClick:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClickUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/IntentTile;->sendIntent(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .line 80
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 132
    move-object v0, p2

    check-cast v0, Landroid/content/Intent;

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mLastIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mLastIntent:Landroid/content/Intent;

    .line 141
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mLastIntent:Landroid/content/Intent;

    .line 142
    const-string v1, "contentDescription"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 143
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 144
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 145
    const-string v1, "iconBitmap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 146
    .local v1, "iconBitmap":[B
    if-eqz v1, :cond_2

    .line 148
    :try_start_0
    new-instance v2, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;

    invoke-direct {v2, v1}, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;-><init>([B)V

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/IntentTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading icon bitmap, length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 153
    :cond_2
    const-string v2, "iconId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 154
    .local v2, "iconId":I
    if-eqz v2, :cond_4

    .line 155
    const-string v3, "iconPackage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "iconPackage":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 157
    new-instance v4, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/systemui/qs/tiles/IntentTile$PackageDrawableIcon;-><init>(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/String;I)V

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    .line 159
    :cond_3
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 163
    .end local v2    # "iconId":I
    .end local v3    # "iconPackage":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v2, "onClick"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClick:Landroid/app/PendingIntent;

    .line 164
    const-string v2, "onClickUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnClickUri:Ljava/lang/String;

    .line 165
    const-string v2, "onLongClick"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClick:Landroid/app/PendingIntent;

    .line 166
    const-string v2, "onLongClickUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mOnLongClickUri:Ljava/lang/String;

    .line 167
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mIntentPackage:Ljava/lang/String;

    .line 169
    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 89
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 90
    iput p1, p0, Lcom/android/systemui/qs/tiles/IntentTile;->mCurrentUserId:I

    .line 91
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 84
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object v0
.end method

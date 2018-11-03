.class public Lcom/android/systemui/opcarmode/CarModeDockController;
.super Ljava/lang/Object;
.source "CarModeDockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;,
        Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mCallback:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

.field private mCarModeDockSettingObserver:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDndEnabled:Z

.field private mMaskEntry:I

.field private mMetaDataLoader:Lcom/android/systemui/opcarmode/MetaDataLoader;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mShowDock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/opcarmode/CarModeDockController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mShowDock:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mDndEnabled:Z

    .line 34
    iput v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMaskEntry:I

    .line 38
    iput-object p1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContext:Landroid/content/Context;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    new-instance v1, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;

    iget-object v2, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;-><init>(Lcom/android/systemui/opcarmode/CarModeDockController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mCarModeDockSettingObserver:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "oneplus_carmode_dock_show"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mCarModeDockSettingObserver:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "oneplus_carmode_dock_mask_entry"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mCarModeDockSettingObserver:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 46
    iget-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "zen_mode_car"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mCarModeDockSettingObserver:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 50
    new-instance v0, Lcom/android/systemui/opcarmode/MetaDataLoader;

    iget-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/opcarmode/MetaDataLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMetaDataLoader:Lcom/android/systemui/opcarmode/MetaDataLoader;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMetaDataLoader:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadAll()Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/MetaDataLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMetaDataLoader:Lcom/android/systemui/opcarmode/MetaDataLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/opcarmode/CarModeDockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mShowDock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/opcarmode/CarModeDockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mShowDock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mCallback:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/opcarmode/CarModeDockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mDndEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/opcarmode/CarModeDockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mDndEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/opcarmode/CarModeDockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 14
    iget v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMaskEntry:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/opcarmode/CarModeDockController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/CarModeDockController;
    .param p1, "x1"    # I

    .line 14
    iput p1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMaskEntry:I

    return p1
.end method


# virtual methods
.method public getMaskEntry()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMaskEntry:I

    return v0
.end method

.method public getMetaDataLoader()Lcom/android/systemui/opcarmode/MetaDataLoader;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mMetaDataLoader:Lcom/android/systemui/opcarmode/MetaDataLoader;

    return-object v0
.end method

.method public isDndEnabled()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mDndEnabled:Z

    return v0
.end method

.method public setCallback(Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/opcarmode/CarModeDockController;->mCallback:Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

    .line 56
    return-void
.end method

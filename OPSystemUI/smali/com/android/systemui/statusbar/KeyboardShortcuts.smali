.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mApplicationItemsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mContext:Landroid/content/Context;

.field private final mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field private final mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifierList:[I

.field private final mModifierNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mSpecialCharacterDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialCharacterNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Ljava/util/Comparator;

    .line 130
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->loadResources(Landroid/content/Context;)V

    .line 133
    return-void

    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getDefaultApplicationShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;
    .param p1, "x1"    # Ljava/util/List;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcutsDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;
    .param p1, "x1"    # Ljava/util/List;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->handleShowKeyboardShortcuts(Ljava/util/List;)V

    return-void
.end method

.method public static dismiss()V
    .locals 3

    .line 164
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 168
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    .line 169
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 171
    :cond_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dismissKeyboardShortcuts()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 394
    :cond_0
    return-void
.end method

.method private getDefaultApplicationShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 15

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 431
    .local v0, "userId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v1, "keyboardShortcutInfoAppItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    new-instance v2, Lcom/android/internal/app/AssistUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 435
    .local v2, "assistUtils":Lcom/android/internal/app/AssistUtils;
    invoke-virtual {v2, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 437
    .local v3, "assistComponent":Landroid/content/ComponentName;
    const/4 v4, 0x0

    const/high16 v5, 0x10000

    if-eqz v3, :cond_0

    .line 438
    move-object v6, v4

    .line 440
    .local v6, "assistPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 441
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 440
    invoke-interface {v8, v9, v7, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v8

    .line 443
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string v10, "PackageManagerService is dead"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v6, :cond_0

    .line 447
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v8, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 451
    .local v8, "assistIcon":Landroid/graphics/drawable/Icon;
    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f1102ec

    .line 452
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8, v7, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 451
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v6    # "assistPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "assistIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    const-string v6, "android.intent.category.APP_BROWSER"

    invoke-direct {p0, v6, v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 461
    .local v6, "browserIcon":Landroid/graphics/drawable/Icon;
    if-eqz v6, :cond_1

    .line 462
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v9, 0x7f1102ed

    .line 463
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1e

    invoke-direct {v7, v8, v6, v9, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 462
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_1
    const-string v7, "android.intent.category.APP_CONTACTS"

    invoke-direct {p0, v7, v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 472
    .local v7, "contactsIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_2

    .line 473
    new-instance v8, Landroid/view/KeyboardShortcutInfo;

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v10, 0x7f1102ef

    .line 474
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1f

    invoke-direct {v8, v9, v7, v10, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 473
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_2
    const-string v8, "android.intent.category.APP_EMAIL"

    invoke-direct {p0, v8, v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 482
    .local v8, "emailIcon":Landroid/graphics/drawable/Icon;
    if-eqz v8, :cond_3

    .line 483
    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v11, 0x7f1102f0

    .line 484
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x21

    invoke-direct {v9, v10, v8, v11, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 483
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_3
    const-string v9, "android.intent.category.APP_MESSAGING"

    invoke-direct {p0, v9, v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    .line 492
    .local v9, "messagingIcon":Landroid/graphics/drawable/Icon;
    if-eqz v9, :cond_4

    .line 493
    new-instance v10, Landroid/view/KeyboardShortcutInfo;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v12, 0x7f1102f2

    .line 494
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v9, v12, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 493
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_4
    const-string v10, "android.intent.category.APP_MUSIC"

    invoke-direct {p0, v10, v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 502
    .local v10, "musicIcon":Landroid/graphics/drawable/Icon;
    if-eqz v10, :cond_5

    .line 503
    new-instance v11, Landroid/view/KeyboardShortcutInfo;

    iget-object v12, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v13, 0x7f1102f1

    .line 504
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v10, v13, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 503
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_5
    const-string v11, "android.intent.category.APP_CALENDAR"

    invoke-direct {p0, v11, v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 512
    .local v11, "calendarIcon":Landroid/graphics/drawable/Icon;
    if-eqz v11, :cond_6

    .line 513
    new-instance v12, Landroid/view/KeyboardShortcutInfo;

    iget-object v13, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v14, 0x7f1102ee

    .line 514
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x28

    invoke-direct {v12, v13, v11, v14, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 513
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 521
    .local v5, "itemsSize":I
    if-nez v5, :cond_7

    .line 522
    return-object v4

    .line 526
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 527
    new-instance v4, Landroid/view/KeyboardShortcutGroup;

    iget-object v12, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v13, 0x7f1102eb

    .line 528
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v4, v12, v1, v13}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 527
    return-object v4
.end method

.method private getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 7
    .param p1, "info"    # Landroid/view/KeyboardShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;",
            ">;"
        }
    .end annotation

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v0, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    move-result v1

    .line 738
    .local v1, "modifiers":I
    if-nez v1, :cond_0

    .line 739
    return-object v0

    .line 741
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 742
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    aget v3, v3, v2

    .line 743
    .local v3, "supportedModifier":I
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    .line 744
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    .line 745
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 746
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 744
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    not-int v4, v3

    and-int/2addr v1, v4

    .line 741
    .end local v3    # "supportedModifier":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 752
    const/4 v2, 0x0

    return-object v2

    .line 754
    :cond_3
    return-object v0
.end method

.method private getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;
    .locals 7
    .param p1, "info"    # Landroid/view/KeyboardShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyboardShortcutInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;",
            ">;"
        }
    .end annotation

    .line 695
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getHumanReadableModifiers(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object v0

    .line 696
    .local v0, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 697
    return-object v1

    .line 699
    :cond_0
    const/4 v2, 0x0

    .line 700
    .local v2, "shortcutKeyString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 701
    .local v3, "shortcutKeyDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v4

    if-lez v4, :cond_1

    .line 702
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .end local v2    # "shortcutKeyString":Ljava/lang/String;
    .local v1, "shortcutKeyString":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 703
    .end local v1    # "shortcutKeyString":Ljava/lang/String;
    .restart local v2    # "shortcutKeyString":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 704
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 705
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 706
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 707
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 710
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    if-nez v4, :cond_4

    .line 711
    return-object v0

    .line 713
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    .line 714
    .local v4, "displayLabel":C
    if-eqz v4, :cond_5

    .line 715
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 717
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    .line 718
    if-eqz v4, :cond_7

    .line 719
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 726
    .end local v2    # "shortcutKeyString":Ljava/lang/String;
    .end local v4    # "displayLabel":C
    .restart local v1    # "shortcutKeyString":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_6

    .line 727
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 729
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string v4, "Keyboard Shortcut does not have a text representation, skipping."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_2
    return-object v0

    .line 721
    .end local v1    # "shortcutKeyString":Ljava/lang/String;
    .restart local v2    # "shortcutKeyString":Ljava/lang/String;
    .restart local v4    # "displayLabel":C
    :cond_7
    return-object v1
.end method

.method private getIconForIntentCategory(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p1, "intentCategory"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getPackageInfoForIntent(Landroid/content/Intent;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 538
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    .line 543
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 136
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 139
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    return-object v0
.end method

.method private getPackageInfoForIntent(Landroid/content/Intent;I)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 549
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 550
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 549
    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 551
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 552
    :cond_1
    :goto_0
    return-object v0

    .line 555
    .end local v1    # "handler":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    const-string v3, "PackageManagerService is dead"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    return-object v0
.end method

.method private getSystemShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 6

    .line 397
    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 398
    const v2, 0x7f1102f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Z)V

    .line 399
    .local v0, "systemGroup":Landroid/view/KeyboardShortcutGroup;
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 400
    const v3, 0x7f1102f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000

    const/16 v4, 0x42

    invoke-direct {v1, v2, v4, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 403
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 404
    const v4, 0x7f1102f5

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x43

    invoke-direct {v1, v2, v4, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 403
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 407
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 408
    const v4, 0x7f1102f8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3d

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 407
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 411
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 412
    const v4, 0x7f1102f7

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2a

    invoke-direct {v1, v2, v4, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 416
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 417
    const v4, 0x7f1102f9

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4c

    invoke-direct {v1, v2, v4, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 416
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 421
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 422
    const v4, 0x7f1102fa

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3e

    invoke-direct {v1, v2, v4, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 426
    return-object v0
.end method

.method private handleShowKeyboardShortcuts(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p1, "keyboardShortcutGroups":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 576
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 578
    .local v2, "keyboardShortcutsView":Landroid/view/View;
    const v3, 0x7f0a01c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->populateKeyboardShortcuts(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 580
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 581
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Landroid/content/DialogInterface$OnClickListener;

    const v4, 0x7f1104e7

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 583
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 584
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 585
    .local v3, "keyboardShortcutsWindow":Landroid/view/Window;
    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 586
    sget-object v4, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 588
    :try_start_0
    sget-object v5, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v5, :cond_0

    .line 589
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 591
    :cond_0
    monitor-exit v4

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static isShowing()Z
    .locals 1

    .line 175
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 176
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0
.end method

.method private loadResources(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 181
    const v1, 0x7f1102db

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 183
    const v1, 0x7f1102d1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 185
    const v1, 0x7f1102d8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 187
    const v1, 0x7f1102d5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    const/16 v4, 0x14

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 189
    const v1, 0x7f1102d6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    const/16 v5, 0x15

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 191
    const v1, 0x7f1102d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    const/16 v6, 0x16

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 193
    const v1, 0x7f1102d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    const/16 v7, 0x17

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v1, "."

    const/16 v7, 0x38

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 196
    const v1, 0x7f1102ea

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    const/16 v7, 0x3d

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 198
    const v1, 0x7f1102e9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    const/16 v7, 0x3e

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 200
    const v1, 0x7f1102d9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 199
    const/16 v8, 0x42

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 202
    const v7, 0x7f1102d2

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 201
    const/16 v9, 0x43

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 204
    const v7, 0x7f1102df

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 203
    const/16 v10, 0x55

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 206
    const v7, 0x7f1102e2

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    const/16 v10, 0x56

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 208
    const v7, 0x7f1102de

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 207
    const/16 v10, 0x57

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 210
    const v7, 0x7f1102e0

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    const/16 v10, 0x58

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 212
    const v7, 0x7f1102e1

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    const/16 v10, 0x59

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 214
    const v7, 0x7f1102dd

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 213
    const/16 v10, 0x5a

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 216
    const v7, 0x7f1102e8

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 215
    const/16 v10, 0x5c

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 218
    const v7, 0x7f1102e7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 217
    const/16 v10, 0x5d

    invoke-virtual {v0, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "A"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 220
    const v11, 0x7f1102d3

    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 219
    const/16 v13, 0x60

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "B"

    aput-object v13, v10, v12

    .line 222
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 221
    const/16 v13, 0x61

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "C"

    aput-object v13, v10, v12

    .line 224
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 223
    const/16 v13, 0x62

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "X"

    aput-object v13, v10, v12

    .line 226
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 225
    const/16 v13, 0x63

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "Y"

    aput-object v13, v10, v12

    .line 228
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 227
    const/16 v13, 0x64

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "Z"

    aput-object v13, v10, v12

    .line 230
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 229
    const/16 v13, 0x65

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "L1"

    aput-object v13, v10, v12

    .line 232
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 231
    const/16 v13, 0x66

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "R1"

    aput-object v13, v10, v12

    .line 234
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 233
    const/16 v13, 0x67

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "L2"

    aput-object v13, v10, v12

    .line 236
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 235
    const/16 v13, 0x68

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "R2"

    aput-object v13, v10, v12

    .line 238
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 237
    const/16 v13, 0x69

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "Start"

    aput-object v13, v10, v12

    .line 240
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 239
    const/16 v13, 0x6c

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "Select"

    aput-object v13, v10, v12

    .line 242
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 241
    const/16 v13, 0x6d

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "Mode"

    aput-object v13, v10, v12

    .line 244
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 243
    const/16 v11, 0x6e

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 246
    const v10, 0x7f1102da

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 245
    const/16 v11, 0x70

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "Esc"

    const/16 v11, 0x6f

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "SysRq"

    const/16 v11, 0x78

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "Break"

    const/16 v11, 0x79

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "Scroll Lock"

    const/16 v11, 0x74

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 252
    const v10, 0x7f1102e4

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    const/16 v11, 0x7a

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 254
    const v10, 0x7f1102e3

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 253
    const/16 v11, 0x7b

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 256
    const v10, 0x7f1102dc

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 255
    const/16 v11, 0x7c

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F1"

    const/16 v11, 0x83

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F2"

    const/16 v11, 0x84

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F3"

    const/16 v11, 0x85

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F4"

    const/16 v11, 0x86

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F5"

    const/16 v11, 0x87

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F6"

    const/16 v11, 0x88

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F7"

    const/16 v11, 0x89

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F8"

    const/16 v11, 0x8a

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F9"

    const/16 v11, 0x8b

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F10"

    const/16 v11, 0x8c

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F11"

    const/16 v11, 0x8d

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string v10, "F12"

    const/16 v11, 0x8e

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 270
    const v10, 0x7f1102e5

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 269
    const/16 v11, 0x8f

    invoke-virtual {v0, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "0"

    aput-object v11, v10, v12

    .line 272
    const v11, 0x7f1102e6

    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 271
    const/16 v13, 0x90

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "1"

    aput-object v13, v10, v12

    .line 274
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 273
    const/16 v13, 0x91

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "2"

    aput-object v13, v10, v12

    .line 276
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 275
    const/16 v13, 0x92

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "3"

    aput-object v13, v10, v12

    .line 278
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 277
    const/16 v13, 0x93

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "4"

    aput-object v13, v10, v12

    .line 280
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 279
    const/16 v13, 0x94

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "5"

    aput-object v13, v10, v12

    .line 282
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 281
    const/16 v13, 0x95

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "6"

    aput-object v13, v10, v12

    .line 284
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 283
    const/16 v13, 0x96

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "7"

    aput-object v13, v10, v12

    .line 286
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 285
    const/16 v13, 0x97

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "8"

    aput-object v13, v10, v12

    .line 288
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 287
    const/16 v13, 0x98

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "9"

    aput-object v13, v10, v12

    .line 290
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 289
    const/16 v13, 0x99

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "/"

    aput-object v13, v10, v12

    .line 292
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 291
    const/16 v13, 0x9a

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "*"

    aput-object v13, v10, v12

    .line 294
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 293
    const/16 v13, 0x9b

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "-"

    aput-object v13, v10, v12

    .line 296
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 295
    const/16 v13, 0x9c

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "+"

    aput-object v13, v10, v12

    .line 298
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 297
    const/16 v13, 0x9d

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, "."

    aput-object v13, v10, v12

    .line 300
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 299
    const/16 v13, 0x9e

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v13, ","

    aput-object v13, v10, v12

    .line 302
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 301
    const/16 v13, 0x9f

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v10, v7, [Ljava/lang/Object;

    .line 305
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v12

    .line 304
    invoke-virtual {p1, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 303
    const/16 v10, 0xa0

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v10, "="

    aput-object v10, v1, v12

    .line 307
    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 306
    const/16 v10, 0xa1

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v10, "("

    aput-object v10, v1, v12

    .line 309
    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    const/16 v10, 0xa2

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v10, ")"

    aput-object v10, v1, v12

    .line 311
    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    const/16 v10, 0xa3

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u534a\u89d2/\u5168\u89d2"

    const/16 v10, 0xd3

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u82f1\u6570"

    const/16 v10, 0xd4

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u7121\u5909\u63db"

    const/16 v10, 0xd5

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u5909\u63db"

    const/16 v10, 0xd6

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u304b\u306a"

    const/16 v10, 0xd7

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v1, "Meta"

    const/high16 v10, 0x10000

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v1, "Ctrl"

    const/16 v11, 0x1000

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v1, "Alt"

    const/4 v11, 0x2

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v1, "Shift"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v1, "Sym"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    const-string v1, "Fn"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 326
    const v1, 0x7f08026f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 328
    const v1, 0x7f080271

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 330
    const v1, 0x7f080275

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 329
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 332
    const v1, 0x7f080274

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 334
    const v1, 0x7f080270

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 336
    const v1, 0x7f080272

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 339
    const v1, 0x7f080273

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    return-void
.end method

.method private populateKeyboardShortcuts(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 30
    .param p1, "keyboardShortcutsLayout"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .local p2, "keyboardShortcutGroups":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 596
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 597
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 598
    .local v3, "keyboardShortcutGroupsSize":I
    const v4, 0x7f0d007e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 600
    .local v6, "shortcutsKeyView":Landroid/widget/TextView;
    invoke-virtual {v6, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 602
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 604
    .local v7, "shortcutKeyTextItemMinWidth":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    .line 605
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 606
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 607
    .local v8, "shortcutKeyIconItemHeightWidth":I
    move v9, v5

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_9

    .line 608
    move-object/from16 v10, p2

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/KeyboardShortcutGroup;

    .line 609
    .local v11, "group":Landroid/view/KeyboardShortcutGroup;
    const v12, 0x7f0d007b

    invoke-virtual {v2, v12, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 611
    .local v12, "categoryTitle":Landroid/widget/TextView;
    invoke-virtual {v11}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {v11}, Landroid/view/KeyboardShortcutGroup;->isSystemGroup()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 613
    iget-object v13, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v13

    goto :goto_1

    .line 614
    :cond_0
    iget-object v13, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    const v14, 0x7f060244

    invoke-virtual {v13, v14}, Landroid/content/Context;->getColor(I)I

    move-result v13

    .line 612
    :goto_1
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 615
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 617
    const v13, 0x7f0d007c

    invoke-virtual {v2, v13, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 619
    .local v13, "shortcutContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 620
    .local v14, "itemsSize":I
    move v15, v5

    .local v15, "j":I
    :goto_2
    if-ge v15, v14, :cond_7

    .line 621
    invoke-virtual {v11}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyboardShortcutInfo;

    .line 622
    .local v4, "info":Landroid/view/KeyboardShortcutInfo;
    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getHumanReadableShortcutKeys(Landroid/view/KeyboardShortcutInfo;)Ljava/util/List;

    move-result-object v5

    .line 623
    .local v5, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    if-nez v5, :cond_1

    .line 625
    move-object/from16 v16, v6

    sget-object v6, Lcom/android/systemui/statusbar/KeyboardShortcuts;->TAG:Ljava/lang/String;

    .end local v6    # "shortcutsKeyView":Landroid/widget/TextView;
    .local v16, "shortcutsKeyView":Landroid/widget/TextView;
    const-string v10, "Keyboard Shortcut contains unsupported keys, skipping."

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    nop

    .line 620
    move/from16 v28, v3

    move/from16 v25, v8

    move/from16 v27, v9

    move-object/from16 v17, v11

    move-object/from16 v24, v12

    move/from16 v26, v14

    const v3, 0x7f0d007e

    goto/16 :goto_7

    .line 628
    .end local v16    # "shortcutsKeyView":Landroid/widget/TextView;
    .restart local v6    # "shortcutsKeyView":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v16, v6

    .end local v6    # "shortcutsKeyView":Landroid/widget/TextView;
    .restart local v16    # "shortcutsKeyView":Landroid/widget/TextView;
    const v6, 0x7f0d0079

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 631
    .local v6, "shortcutView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 632
    const v10, 0x7f0a01c3

    .line 633
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 634
    .local v10, "shortcutIcon":Landroid/widget/ImageView;
    move-object/from16 v17, v11

    invoke-virtual {v4}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    .end local v11    # "group":Landroid/view/KeyboardShortcutGroup;
    .local v17, "group":Landroid/view/KeyboardShortcutGroup;
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 635
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .end local v10    # "shortcutIcon":Landroid/widget/ImageView;
    goto :goto_3

    .line 638
    .end local v17    # "group":Landroid/view/KeyboardShortcutGroup;
    .restart local v11    # "group":Landroid/view/KeyboardShortcutGroup;
    :cond_2
    move-object/from16 v17, v11

    .end local v11    # "group":Landroid/view/KeyboardShortcutGroup;
    .restart local v17    # "group":Landroid/view/KeyboardShortcutGroup;
    :goto_3
    const v10, 0x7f0a01c5

    .line 639
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 640
    .local v10, "shortcutKeyword":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    invoke-virtual {v4}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 642
    nop

    .line 643
    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 644
    .local v11, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v18, v4

    const/16 v4, 0x14

    .end local v4    # "info":Landroid/view/KeyboardShortcutInfo;
    .local v18, "info":Landroid/view/KeyboardShortcutInfo;
    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 645
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v11    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_4

    .line 648
    .end local v18    # "info":Landroid/view/KeyboardShortcutInfo;
    .restart local v4    # "info":Landroid/view/KeyboardShortcutInfo;
    :cond_3
    move-object/from16 v18, v4

    .end local v4    # "info":Landroid/view/KeyboardShortcutInfo;
    .restart local v18    # "info":Landroid/view/KeyboardShortcutInfo;
    :goto_4
    const v4, 0x7f0a01c4

    .line 649
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 650
    .local v4, "shortcutItemsContainer":Landroid/view/ViewGroup;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    .line 651
    .local v11, "shortcutKeysSize":I
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_5
    move/from16 v20, v19

    .end local v19    # "k":I
    .local v20, "k":I
    move-object/from16 v21, v10

    move/from16 v10, v20

    if-ge v10, v11, :cond_6

    .line 652
    .end local v20    # "k":I
    .local v10, "k":I
    .local v21, "shortcutKeyword":Landroid/widget/TextView;
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v22, v5

    move-object/from16 v5, v19

    check-cast v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    .line 653
    .local v5, "shortcutRepresentation":Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;
    .local v22, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    move/from16 v23, v11

    iget-object v11, v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .end local v11    # "shortcutKeysSize":I
    .local v23, "shortcutKeysSize":I
    if-eqz v11, :cond_5

    .line 654
    const v11, 0x7f0d007d

    move-object/from16 v24, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .end local v12    # "categoryTitle":Landroid/widget/TextView;
    .local v24, "categoryTitle":Landroid/widget/TextView;
    check-cast v11, Landroid/widget/ImageView;

    .line 657
    .local v11, "shortcutKeyIconView":Landroid/widget/ImageView;
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 659
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v25, v8

    new-instance v8, Landroid/graphics/Canvas;

    .end local v8    # "shortcutKeyIconItemHeightWidth":I
    .local v25, "shortcutKeyIconItemHeightWidth":I
    invoke-direct {v8, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 660
    .local v8, "canvas":Landroid/graphics/Canvas;
    move/from16 v26, v14

    iget-object v14, v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .end local v14    # "itemsSize":I
    .local v26, "itemsSize":I
    move/from16 v27, v9

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 661
    .end local v9    # "i":I
    .local v27, "i":I
    move/from16 v28, v3

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 660
    .end local v3    # "keyboardShortcutGroupsSize":I
    .local v28, "keyboardShortcutGroupsSize":I
    const/4 v1, 0x0

    invoke-virtual {v14, v1, v1, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    iget-object v1, v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 663
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 666
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    iget-object v3, v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 669
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 670
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "shortcutKeyIconView":Landroid/widget/ImageView;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 651
    .end local v5    # "shortcutRepresentation":Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;
    :cond_4
    const v3, 0x7f0d007e

    goto :goto_6

    .line 670
    .end local v24    # "categoryTitle":Landroid/widget/TextView;
    .end local v25    # "shortcutKeyIconItemHeightWidth":I
    .end local v26    # "itemsSize":I
    .end local v27    # "i":I
    .end local v28    # "keyboardShortcutGroupsSize":I
    .restart local v3    # "keyboardShortcutGroupsSize":I
    .restart local v5    # "shortcutRepresentation":Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;
    .local v8, "shortcutKeyIconItemHeightWidth":I
    .restart local v9    # "i":I
    .local v12, "categoryTitle":Landroid/widget/TextView;
    .restart local v14    # "itemsSize":I
    :cond_5
    move/from16 v28, v3

    move/from16 v25, v8

    move/from16 v27, v9

    move-object/from16 v24, v12

    move/from16 v26, v14

    .end local v3    # "keyboardShortcutGroupsSize":I
    .end local v8    # "shortcutKeyIconItemHeightWidth":I
    .end local v9    # "i":I
    .end local v12    # "categoryTitle":Landroid/widget/TextView;
    .end local v14    # "itemsSize":I
    .restart local v24    # "categoryTitle":Landroid/widget/TextView;
    .restart local v25    # "shortcutKeyIconItemHeightWidth":I
    .restart local v26    # "itemsSize":I
    .restart local v27    # "i":I
    .restart local v28    # "keyboardShortcutGroupsSize":I
    iget-object v1, v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 671
    const/4 v1, 0x0

    const v3, 0x7f0d007e

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroid/widget/TextView;

    .line 674
    .local v1, "shortcutKeyTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 675
    iget-object v8, v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    iget-object v9, v5, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    invoke-direct {v8, v0, v9}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 679
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 651
    .end local v1    # "shortcutKeyTextView":Landroid/widget/TextView;
    .end local v5    # "shortcutRepresentation":Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;
    :goto_6
    add-int/lit8 v19, v10, 0x1

    .end local v10    # "k":I
    .restart local v19    # "k":I
    move-object/from16 v10, v21

    move-object/from16 v5, v22

    move/from16 v11, v23

    move-object/from16 v12, v24

    move/from16 v8, v25

    move/from16 v14, v26

    move/from16 v9, v27

    move/from16 v3, v28

    move-object/from16 v1, p1

    goto/16 :goto_5

    .line 682
    .end local v19    # "k":I
    .end local v22    # "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    .end local v23    # "shortcutKeysSize":I
    .end local v24    # "categoryTitle":Landroid/widget/TextView;
    .end local v25    # "shortcutKeyIconItemHeightWidth":I
    .end local v26    # "itemsSize":I
    .end local v27    # "i":I
    .end local v28    # "keyboardShortcutGroupsSize":I
    .restart local v3    # "keyboardShortcutGroupsSize":I
    .local v5, "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    .restart local v8    # "shortcutKeyIconItemHeightWidth":I
    .restart local v9    # "i":I
    .local v11, "shortcutKeysSize":I
    .restart local v12    # "categoryTitle":Landroid/widget/TextView;
    .restart local v14    # "itemsSize":I
    :cond_6
    move/from16 v28, v3

    move-object/from16 v22, v5

    move/from16 v25, v8

    move/from16 v27, v9

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v26, v14

    const v3, 0x7f0d007e

    .end local v3    # "keyboardShortcutGroupsSize":I
    .end local v5    # "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    .end local v8    # "shortcutKeyIconItemHeightWidth":I
    .end local v9    # "i":I
    .end local v11    # "shortcutKeysSize":I
    .end local v12    # "categoryTitle":Landroid/widget/TextView;
    .end local v14    # "itemsSize":I
    .restart local v22    # "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    .restart local v23    # "shortcutKeysSize":I
    .restart local v24    # "categoryTitle":Landroid/widget/TextView;
    .restart local v25    # "shortcutKeyIconItemHeightWidth":I
    .restart local v26    # "itemsSize":I
    .restart local v27    # "i":I
    .restart local v28    # "keyboardShortcutGroupsSize":I
    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 620
    .end local v4    # "shortcutItemsContainer":Landroid/view/ViewGroup;
    .end local v6    # "shortcutView":Landroid/view/View;
    .end local v18    # "info":Landroid/view/KeyboardShortcutInfo;
    .end local v21    # "shortcutKeyword":Landroid/widget/TextView;
    .end local v22    # "shortcutKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;>;"
    .end local v23    # "shortcutKeysSize":I
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move v4, v3

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v24

    move/from16 v8, v25

    move/from16 v14, v26

    move/from16 v9, v27

    move/from16 v3, v28

    move-object/from16 v1, p1

    const/4 v5, 0x0

    move-object/from16 v10, p2

    goto/16 :goto_2

    .line 684
    .end local v15    # "j":I
    .end local v16    # "shortcutsKeyView":Landroid/widget/TextView;
    .end local v17    # "group":Landroid/view/KeyboardShortcutGroup;
    .end local v24    # "categoryTitle":Landroid/widget/TextView;
    .end local v25    # "shortcutKeyIconItemHeightWidth":I
    .end local v26    # "itemsSize":I
    .end local v27    # "i":I
    .end local v28    # "keyboardShortcutGroupsSize":I
    .restart local v3    # "keyboardShortcutGroupsSize":I
    .local v6, "shortcutsKeyView":Landroid/widget/TextView;
    .restart local v8    # "shortcutKeyIconItemHeightWidth":I
    .restart local v9    # "i":I
    .local v11, "group":Landroid/view/KeyboardShortcutGroup;
    .restart local v12    # "categoryTitle":Landroid/widget/TextView;
    .restart local v14    # "itemsSize":I
    :cond_7
    move/from16 v28, v3

    move v3, v4

    move-object/from16 v16, v6

    move/from16 v25, v8

    move/from16 v27, v9

    move-object/from16 v17, v11

    move-object/from16 v24, v12

    move/from16 v26, v14

    .end local v3    # "keyboardShortcutGroupsSize":I
    .end local v6    # "shortcutsKeyView":Landroid/widget/TextView;
    .end local v8    # "shortcutKeyIconItemHeightWidth":I
    .end local v9    # "i":I
    .end local v11    # "group":Landroid/view/KeyboardShortcutGroup;
    .end local v12    # "categoryTitle":Landroid/widget/TextView;
    .end local v14    # "itemsSize":I
    .restart local v16    # "shortcutsKeyView":Landroid/widget/TextView;
    .restart local v17    # "group":Landroid/view/KeyboardShortcutGroup;
    .restart local v24    # "categoryTitle":Landroid/widget/TextView;
    .restart local v25    # "shortcutKeyIconItemHeightWidth":I
    .restart local v26    # "itemsSize":I
    .restart local v27    # "i":I
    .restart local v28    # "keyboardShortcutGroupsSize":I
    move-object/from16 v1, p1

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    add-int/lit8 v4, v28, -0x1

    move/from16 v5, v27

    if-ge v5, v4, :cond_8

    .line 686
    .end local v27    # "i":I
    .local v5, "i":I
    const v4, 0x7f0d007a

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 689
    .local v4, "separator":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v4    # "separator":Landroid/view/View;
    .end local v13    # "shortcutContainer":Landroid/widget/LinearLayout;
    .end local v17    # "group":Landroid/view/KeyboardShortcutGroup;
    .end local v24    # "categoryTitle":Landroid/widget/TextView;
    .end local v26    # "itemsSize":I
    goto :goto_8

    .line 607
    :cond_8
    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .restart local v9    # "i":I
    move v4, v3

    move v5, v6

    move-object/from16 v6, v16

    move/from16 v8, v25

    move/from16 v3, v28

    goto/16 :goto_0

    .line 692
    .end local v9    # "i":I
    .end local v16    # "shortcutsKeyView":Landroid/widget/TextView;
    .end local v25    # "shortcutKeyIconItemHeightWidth":I
    .end local v28    # "keyboardShortcutGroupsSize":I
    .restart local v3    # "keyboardShortcutGroupsSize":I
    .restart local v6    # "shortcutsKeyView":Landroid/widget/TextView;
    .restart local v8    # "shortcutKeyIconItemHeightWidth":I
    :cond_9
    move/from16 v28, v3

    move-object/from16 v16, v6

    move/from16 v25, v8

    .end local v3    # "keyboardShortcutGroupsSize":I
    .end local v6    # "shortcutsKeyView":Landroid/widget/TextView;
    .end local v8    # "shortcutKeyIconItemHeightWidth":I
    .restart local v16    # "shortcutsKeyView":Landroid/widget/TextView;
    .restart local v25    # "shortcutKeyIconItemHeightWidth":I
    .restart local v28    # "keyboardShortcutGroupsSize":I
    return-void
.end method

.method private retrieveKeyCharacterMap(I)V
    .locals 6
    .param p1, "deviceId"    # I

    .line 349
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 350
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 351
    if-eq p1, v1, :cond_0

    .line 352
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 353
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 355
    return-void

    .line 358
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 359
    .local v2, "deviceIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 360
    aget v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 363
    .local v4, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v5

    if-eq v5, v1, :cond_1

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 365
    return-void

    .line 359
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 370
    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceId"    # I

    .line 143
    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 145
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/KeyboardShortcuts;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showKeyboardShortcuts(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 373
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->retrieveKeyCharacterMap(I)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->requestKeyboardShortcuts(Landroid/content/Context;Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 387
    return-void
.end method

.method private showKeyboardShortcutsDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p1, "keyboardShortcutGroups":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void
.end method

.method public static toggle(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceId"    # I

    .line 154
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(Landroid/content/Context;I)V

    .line 160
    :goto_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

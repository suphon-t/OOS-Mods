.class public Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.source "StatusBarIconControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

.field private mIsDark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;-><init>([Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/IconLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIsDark:Z

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    .line 81
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 83
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private addSystemIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotName(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "slot":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(II)I

    move-result v1

    .line 146
    .local v1, "viewIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 148
    .local v2, "blocked":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;

    invoke-direct {v4, v1, v0, v2, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;-><init>(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 150
    return-void
.end method

.method private handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 325
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(II)I

    move-result v0

    .line 326
    .local v0, "viewIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;

    invoke-direct {v2, v0, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 328
    return-void
.end method

.method static synthetic lambda$addSystemIcon$0(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .param p3, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .param p4, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 149
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method

.method static synthetic lambda$handleSet$4(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .param p2, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 327
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method

.method static synthetic lambda$removeAllIconsForSlot$2(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 309
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method static synthetic lambda$removeIcon$3(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 321
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method static synthetic lambda$setExternalIcon$1(IILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "height"    # I
    .param p2, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 224
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconExternal(II)V

    return-void
.end method

.method private loadDimens()V
    .locals 0

    .line 141
    return-void
.end method

.method private setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 251
    if-nez p2, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 253
    return-void

    .line 256
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    .line 257
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 258
    return-void
.end method


# virtual methods
.method public addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 10
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlots()Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    .local v0, "allSlots":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 92
    .local v2, "slot":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 95
    .local v4, "blocked":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 96
    .local v6, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v7

    .line 97
    .local v7, "tag":I
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(II)I

    move-result v8

    .line 98
    .local v8, "viewIndex":I
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9, v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 99
    .end local v6    # "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .end local v7    # "tag":I
    .end local v8    # "viewIndex":I
    goto :goto_1

    .line 90
    .end local v2    # "slot":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    .end local v3    # "holders":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    .end local v4    # "blocked":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 350
    .local v1, "manager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->isDemoable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    .end local v1    # "manager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    :cond_0
    goto :goto_0

    .line 354
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 332
    const-string v0, "StatusBarIconController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 334
    .local v1, "manager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->shouldLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 336
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 337
    .local v3, "N":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  icon views: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 339
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 340
    .local v5, "ic":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] icon="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    .end local v5    # "ic":Lcom/android/systemui/statusbar/StatusIconDisplayable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 343
    .end local v1    # "manager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_0
    goto :goto_0

    .line 345
    :cond_1
    invoke-super {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 346
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    .line 359
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 111
    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlots()Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, "currentSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 123
    .local v1, "slotsToReAdd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 124
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 125
    .local v3, "s":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 123
    .end local v3    # "s":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 132
    .local v3, "item":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 133
    .local v4, "iconsForSlot":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    if-nez v4, :cond_2

    .end local v3    # "item":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    .end local v4    # "iconsForSlot":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    goto :goto_3

    .line 134
    .restart local v3    # "item":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    .restart local v4    # "iconsForSlot":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 135
    .local v6, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 136
    .end local v6    # "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    goto :goto_2

    .line 130
    .end local v3    # "item":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    .end local v4    # "iconsForSlot":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public removeAllIconsForSlot(Ljava/lang/String;)V
    .locals 9
    .param p1, "slotName"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    move-result-object v0

    .line 295
    .local v0, "slot":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->hasIconsInSlot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, "slotIndex":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v2

    .line 303
    .local v2, "iconsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 304
    .local v4, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(II)I

    move-result v5

    .line 305
    .local v5, "viewIndex":I
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->removeForTag(I)V

    .line 307
    sget-boolean v6, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    const-string v6, "StatusBarIconController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeAllIconsForSlot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$uTqaHUAWHbu0P16vDWL0oAyCetk;

    invoke-direct {v7, v5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$uTqaHUAWHbu0P16vDWL0oAyCetk;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 310
    .end local v4    # "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .end local v5    # "viewIndex":I
    goto :goto_0

    .line 311
    :cond_2
    return-void
.end method

.method public removeIcon(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "tag"    # I

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 319
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->removeIcon(II)V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(II)I

    move-result v0

    .line 321
    .local v0, "viewIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$XIHL8F8kJA04U9X_9IHtSYwXxLU;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$XIHL8F8kJA04U9X_9IHtSYwXxLU;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 322
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 1
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->destroy()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public setExternalIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(II)I

    move-result v0

    .line 222
    .local v0, "viewIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07060a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 224
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$rsmVGSlXlU7ffeIAEgpWeyyu04I;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$rsmVGSlXlU7ffeIAEgpWeyyu04I;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 225
    return-void
.end method

.method public setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 262
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    .local v0, "isNew":Z
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 265
    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addSystemIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_1

    .line 268
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 270
    :goto_1
    return-void
.end method

.method public setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 10
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 156
    .local v1, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    if-nez v1, :cond_0

    .line 157
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {v2, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 160
    .local v2, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 162
    .end local v2    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 164
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    iput-object p3, v2, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 167
    :goto_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 245
    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 275
    .local v1, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setVisible(Z)V

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 281
    return-void

    .line 276
    :cond_1
    :goto_0
    return-void
.end method

.method public setMobileIcons(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "slot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p2, "iconStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;>;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    move-result-object v0

    .line 202
    .local v0, "mobileSlot":Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "slotIndex":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 205
    .local v3, "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v4

    .line 206
    .local v4, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    if-nez v4, :cond_1

    .line 207
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromMobileIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v4

    .line 209
    sget-boolean v5, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    const-string v5, "StatusBarIconController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileIcons new holder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 214
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 216
    .end local v3    # "state":Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .end local v4    # "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    :goto_1
    goto :goto_0

    .line 217
    :cond_2
    return-void
.end method

.method public setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "index":I
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 179
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(II)V

    .line 180
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 184
    .local v1, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    if-nez v1, :cond_1

    .line 185
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromWifiIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 191
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "visible"    # Z

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 232
    .local v1, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    if-nez v1, :cond_0

    .line 233
    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromTextView(IZ)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 238
    :goto_0
    return-void
.end method

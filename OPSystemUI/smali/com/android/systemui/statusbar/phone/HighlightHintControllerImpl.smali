.class public Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;
.super Ljava/lang/Object;
.source "HighlightHintControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController;


# instance fields
.field private mBarState:I

.field private mBgColor:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedVisible:Z

.field private mHeadUpShow:Z

.field private mHighlightHintShow:Z

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 26
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    return-void
.end method

.method private dumpInfo()V
    .locals 4

    .line 123
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "isExpanededAfterUnlock":Z
    :goto_0
    const-string v1, "HighlightHintCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHighlightHintShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " showNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 126
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " HeadsUp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " expanededAfterUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "isExpanededAfterUnlock":Z
    :cond_1
    return-void
.end method

.method private onHighlightHintInfoUpdate()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 76
    .local v1, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    .line 77
    .end local v1    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private onHighlightHintStateChange()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->shouldShowHighlightHint()Z

    move-result v0

    .line 64
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    if-eq v0, v1, :cond_0

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->dumpInfo()V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 68
    .local v2, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    .line 69
    .end local v2    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    .line 113
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    .line 115
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public getHighlighColor()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    return v0
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public isHighLightHintShow()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    return v0
.end method

.method public onBarStatechange(I)V
    .locals 1
    .param p1, "barstate"    # I

    .line 56
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-eq v0, p1, :cond_0

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 60
    :cond_0
    return-void
.end method

.method public onExpandedVisibleChange(Z)V
    .locals 1
    .param p1, "visiable"    # Z

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eq v0, p1, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 53
    :cond_0
    return-void
.end method

.method public onHeadUpPinnedModeChange(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    if-eq v0, p1, :cond_0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 46
    :cond_0
    return-void
.end method

.method public onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintInfoUpdate()V

    .line 39
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public shouldShowHighlightHint()Z
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 100
    .local v0, "isExpanededAfterUnlock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public showOvalLayout()Z
    .locals 1

    .line 105
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->SHOW_OVAL_LAYOUT:Z

    return v0
.end method

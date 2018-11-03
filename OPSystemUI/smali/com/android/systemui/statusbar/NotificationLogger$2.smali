.class Lcom/android/systemui/statusbar/NotificationLogger$2;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLogger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLogger;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationLogger;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationLogger;->access$002(Lcom/android/systemui/statusbar/NotificationLogger;J)J

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationLogger;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 104
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 106
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 108
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationLogger;->access$100(Lcom/android/systemui/statusbar/NotificationLogger;)Lcom/android/systemui/statusbar/NotificationListContainer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v5

    .line 110
    .local v5, "isVisible":Z
    invoke-static {v4, v2, v1, v5}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v6

    .line 111
    .local v6, "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationLogger;->access$200(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 112
    .local v7, "previouslyVisible":Z
    if-eqz v5, :cond_0

    .line 114
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 115
    if-nez v7, :cond_1

    .line 116
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 106
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "isVisible":Z
    .end local v6    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v7    # "previouslyVisible":Z
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationLogger;->access$200(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationLogger;->access$300(Lcom/android/systemui/statusbar/NotificationLogger;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationLogger;->access$200(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/NotificationLogger;->access$400(Lcom/android/systemui/statusbar/NotificationLogger;Landroid/util/ArraySet;)V

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationLogger;->access$200(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/NotificationLogger;->access$400(Lcom/android/systemui/statusbar/NotificationLogger;Landroid/util/ArraySet;)V

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 136
    return-void
.end method

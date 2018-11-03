.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$2:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;->f$2:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;->f$2:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$bindGuts$0(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationGuts;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final synthetic f$2:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$1:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$2:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$3:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$1:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$2:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5ccSwmHai9tNnko8L2PlieI593k;->f$3:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeNotificationInfo$3(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

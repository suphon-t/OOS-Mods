.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final synthetic f$2:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$1:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$2:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$4:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$1:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$2:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$CuJJD4QSv95ak-chMNjvs4UJcoM;->f$4:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeNotificationInfo$4(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

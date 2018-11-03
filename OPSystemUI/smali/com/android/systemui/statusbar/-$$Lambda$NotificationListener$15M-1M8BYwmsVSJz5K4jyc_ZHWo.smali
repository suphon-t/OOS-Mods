.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onNotificationRemoved$2(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

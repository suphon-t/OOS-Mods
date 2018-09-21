.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onHeightChanged(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->lambda$initializeSnoozeView$1(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V

    return-void
.end method

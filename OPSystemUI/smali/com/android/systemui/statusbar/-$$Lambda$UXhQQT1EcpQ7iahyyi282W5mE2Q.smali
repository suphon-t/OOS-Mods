.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$UXhQQT1EcpQ7iahyyi282W5mE2Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$UXhQQT1EcpQ7iahyyi282W5mE2Q;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$UXhQQT1EcpQ7iahyyi282W5mE2Q;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p1

    return p1
.end method

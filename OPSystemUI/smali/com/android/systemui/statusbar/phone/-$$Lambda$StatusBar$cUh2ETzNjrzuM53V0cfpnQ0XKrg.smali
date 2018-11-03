.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$4:Lcom/android/systemui/statusbar/RemoteInputController;

.field private final synthetic f$5:Z

.field private final synthetic f$6:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$7:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;ZLandroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$3:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$4:Lcom/android/systemui/statusbar/RemoteInputController;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$5:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$6:Landroid/service/notification/StatusBarNotification;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$7:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$1:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$3:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$4:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$5:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$6:Landroid/service/notification/StatusBarNotification;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;->f$7:Landroid/service/notification/StatusBarNotification;

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onNotificationClicked$43(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;ZLandroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

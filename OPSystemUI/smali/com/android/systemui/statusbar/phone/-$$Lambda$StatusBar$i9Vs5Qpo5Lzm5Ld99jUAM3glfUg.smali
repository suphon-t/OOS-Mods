.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$3:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$4:Landroid/app/PendingIntent;

.field private final synthetic f$5:Lcom/android/systemui/statusbar/RemoteInputController;

.field private final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/RemoteInputController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$3:Landroid/service/notification/StatusBarNotification;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$4:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$5:Lcom/android/systemui/statusbar/RemoteInputController;

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$6:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$3:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$4:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$5:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$i9Vs5Qpo5Lzm5Ld99jUAM3glfUg;->f$6:Z

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onNotificationClicked$44(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/RemoteInputController;Z)Z

    move-result v0

    return v0
.end method

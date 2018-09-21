.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;->f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancelled(Landroid/app/PendingIntent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;->f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;->f$1:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->lambda$performOnPendingIntentCancellation$3(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V

    return-void
.end method

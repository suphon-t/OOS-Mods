.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$hLjA2XXd-c0oPihadtdZw3GNclc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/PendingIntent;

.field private final synthetic f$1:Landroid/app/PendingIntent$CancelListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$hLjA2XXd-c0oPihadtdZw3GNclc;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$hLjA2XXd-c0oPihadtdZw3GNclc;->f$1:Landroid/app/PendingIntent$CancelListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$hLjA2XXd-c0oPihadtdZw3GNclc;->f$0:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$hLjA2XXd-c0oPihadtdZw3GNclc;->f$1:Landroid/app/PendingIntent$CancelListener;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->lambda$onViewAttachedToWindow$0(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

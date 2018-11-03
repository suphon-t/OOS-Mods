.class Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;
.super Ljava/lang/Object;
.source "NotificationTemplateViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

.field final synthetic val$listener:Landroid/app/PendingIntent$CancelListener;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->val$listener:Landroid/app/PendingIntent$CancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onViewAttachedToWindow$0(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "listener"    # Landroid/app/PendingIntent$CancelListener;

    .line 242
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

.method static synthetic lambda$onViewDetachedFromWindow$1(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "listener"    # Landroid/app/PendingIntent$CancelListener;

    .line 247
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)Lcom/android/systemui/UiOffloadThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->val$listener:Landroid/app/PendingIntent$CancelListener;

    new-instance v3, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$hLjA2XXd-c0oPihadtdZw3GNclc;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$hLjA2XXd-c0oPihadtdZw3GNclc;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 243
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)Lcom/android/systemui/UiOffloadThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;->val$listener:Landroid/app/PendingIntent$CancelListener;

    new-instance v3, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$wS--1KV8Whw4yTApvD_Oru1vhok;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$2$wS--1KV8Whw4yTApvD_Oru1vhok;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 248
    return-void
.end method

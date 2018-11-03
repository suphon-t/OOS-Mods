.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$oMwnxymrbNZg0qMyiDXpJrgotxQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

.field private final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$oMwnxymrbNZg0qMyiDXpJrgotxQ;->f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$oMwnxymrbNZg0qMyiDXpJrgotxQ;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$oMwnxymrbNZg0qMyiDXpJrgotxQ;->f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$oMwnxymrbNZg0qMyiDXpJrgotxQ;->f$1:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->lambda$updatePendingIntentCancellations$0(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/Button;)V

    return-void
.end method

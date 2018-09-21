.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$FtzUFjG_Gvdx031nKmSLXw7UiBg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$FtzUFjG_Gvdx031nKmSLXw7UiBg;->f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$FtzUFjG_Gvdx031nKmSLXw7UiBg;->f$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->lambda$updatePendingIntentCancellations$1(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    return-void
.end method

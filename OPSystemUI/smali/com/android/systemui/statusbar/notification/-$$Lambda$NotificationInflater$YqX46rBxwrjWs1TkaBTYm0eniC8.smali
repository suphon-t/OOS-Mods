.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$YqX46rBxwrjWs1TkaBTYm0eniC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field private final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$YqX46rBxwrjWs1TkaBTYm0eniC8;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$YqX46rBxwrjWs1TkaBTYm0eniC8;->f$0:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->lambda$apply$0(Ljava/util/HashMap;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/app/PendingIntent;

.field private final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$2:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final handleClick()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$2:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$dzxY8UkafLAnu6kZIoh3HbriWqA;->f$3:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->lambda$onClickHandler$0(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

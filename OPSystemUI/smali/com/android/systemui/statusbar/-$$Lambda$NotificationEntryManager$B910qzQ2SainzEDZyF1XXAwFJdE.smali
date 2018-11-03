.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$B910qzQ2SainzEDZyF1XXAwFJdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$B910qzQ2SainzEDZyF1XXAwFJdE;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$B910qzQ2SainzEDZyF1XXAwFJdE;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$B910qzQ2SainzEDZyF1XXAwFJdE;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$B910qzQ2SainzEDZyF1XXAwFJdE;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->lambda$bindRow$2(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

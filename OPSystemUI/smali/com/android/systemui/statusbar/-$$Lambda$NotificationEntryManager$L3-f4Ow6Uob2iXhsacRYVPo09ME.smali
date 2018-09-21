.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private final synthetic f$2:Landroid/content/pm/PackageManager;

.field private final synthetic f$3:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$2:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$3:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final onInflationFinished(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$2:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$L3-f4Ow6Uob2iXhsacRYVPo09ME;->f$3:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->lambda$inflateViews$1(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

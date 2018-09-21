.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationLogger;

.field private final synthetic f$1:[Lcom/android/internal/statusbar/NotificationVisibility;

.field private final synthetic f$2:[Lcom/android/internal/statusbar/NotificationVisibility;

.field private final synthetic f$3:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$1:[Lcom/android/internal/statusbar/NotificationVisibility;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$2:[Lcom/android/internal/statusbar/NotificationVisibility;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$3:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$1:[Lcom/android/internal/statusbar/NotificationVisibility;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$2:[Lcom/android/internal/statusbar/NotificationVisibility;

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLogger$dDuzCaPCc3FmeArDx2PTcXDC9B8;->f$3:Ljava/util/Collection;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationLogger;->lambda$logNotificationVisibilityChanges$0(Lcom/android/systemui/statusbar/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;Ljava/util/Collection;)V

    return-void
.end method

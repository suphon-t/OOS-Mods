.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$2:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$OWLBylYXxej8s1bbnkA8RRpjm8I;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->lambda$logNotificationExpansion$0(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/String;ZZ)V

    return-void
.end method

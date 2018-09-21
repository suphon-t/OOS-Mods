.class Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InflationProgress"
.end annotation


# instance fields
.field private headsUpStatusBarText:Ljava/lang/CharSequence;

.field private headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field private inflatedAmbientView:Landroid/view/View;

.field private inflatedContentView:Landroid/view/View;

.field private inflatedExpandedView:Landroid/view/View;

.field private inflatedHeadsUpView:Landroid/view/View;

.field private inflatedPublicView:Landroid/view/View;

.field private newAmbientView:Landroid/widget/RemoteViews;

.field private newContentView:Landroid/widget/RemoteViews;

.field private newExpandedView:Landroid/widget/RemoteViews;

.field private newHeadsUpView:Landroid/widget/RemoteViews;

.field private newPublicView:Landroid/widget/RemoteViews;

.field packageContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/view/View;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/view/View;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedPublicView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/view/View;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedPublicView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedAmbientView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/view/View;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedAmbientView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newAmbientView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newAmbientView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # Landroid/view/View;

    .line 694
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedContentView:Landroid/view/View;

    return-object p1
.end method

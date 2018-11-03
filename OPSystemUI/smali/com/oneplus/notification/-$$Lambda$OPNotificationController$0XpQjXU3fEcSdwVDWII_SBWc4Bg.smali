.class public final synthetic Lcom/oneplus/notification/-$$Lambda$OPNotificationController$0XpQjXU3fEcSdwVDWII_SBWc4Bg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/notification/OPNotificationController;

.field private final synthetic f$1:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/notification/OPNotificationController;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$0XpQjXU3fEcSdwVDWII_SBWc4Bg;->f$0:Lcom/oneplus/notification/OPNotificationController;

    iput-object p2, p0, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$0XpQjXU3fEcSdwVDWII_SBWc4Bg;->f$1:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$0XpQjXU3fEcSdwVDWII_SBWc4Bg;->f$0:Lcom/oneplus/notification/OPNotificationController;

    iget-object v1, p0, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$0XpQjXU3fEcSdwVDWII_SBWc4Bg;->f$1:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1, p1}, Lcom/oneplus/notification/OPNotificationController;->lambda$getQuickReplyView$0(Lcom/oneplus/notification/OPNotificationController;Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationListenerWithPlugins$AOWJwBGrUF4vFOVx-Lxlu4eVQD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationListenerWithPlugins$AOWJwBGrUF4vFOVx-Lxlu4eVQD0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationListenerWithPlugins$AOWJwBGrUF4vFOVx-Lxlu4eVQD0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->lambda$onPluginConnected$0(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;Lcom/android/systemui/plugins/NotificationListenerController;)V

    return-void
.end method

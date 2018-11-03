.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$2$upPlaSspsvwkYecy75h02dyePMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$2$upPlaSspsvwkYecy75h02dyePMo;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$2$upPlaSspsvwkYecy75h02dyePMo;->f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$2$upPlaSspsvwkYecy75h02dyePMo;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$2$upPlaSspsvwkYecy75h02dyePMo;->f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;->lambda$onRemoteInputSent$0(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$ORqWctSAOFbrSZfQ2fKGWKeQ46w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$ORqWctSAOFbrSZfQ2fKGWKeQ46w;->f$0:Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationStackScrollLayout$ORqWctSAOFbrSZfQ2fKGWKeQ46w;->f$0:Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->lambda$new$0(Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

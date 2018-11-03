.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;->f$0:Lcom/android/systemui/statusbar/NotificationContentView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;->f$0:Lcom/android/systemui/statusbar/NotificationContentView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoteInputVisible(Z)V

    return-void
.end method

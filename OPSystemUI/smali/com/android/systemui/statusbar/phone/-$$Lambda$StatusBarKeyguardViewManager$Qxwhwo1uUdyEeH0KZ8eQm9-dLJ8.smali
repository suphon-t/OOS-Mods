.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$Qxwhwo1uUdyEeH0KZ8eQm9-dLJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$Qxwhwo1uUdyEeH0KZ8eQm9-dLJ8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKeyguardViewManager$Qxwhwo1uUdyEeH0KZ8eQm9-dLJ8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$onKeyguardFadedAway$0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    return-void
.end method

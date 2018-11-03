.class public final synthetic Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationChildrenContainer$l4ZjZHbrQfPYWXU5LoOnRTSkuy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationChildrenContainer$l4ZjZHbrQfPYWXU5LoOnRTSkuy8;->f$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$NotificationChildrenContainer$l4ZjZHbrQfPYWXU5LoOnRTSkuy8;->f$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->lambda$updateHeaderVisibility$0(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V

    return-void
.end method

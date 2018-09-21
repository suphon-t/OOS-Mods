.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$mOTwR4Tu5xrxBBIUbNE9701lx-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/Clock$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/Clock$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$mOTwR4Tu5xrxBBIUbNE9701lx-4;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$mOTwR4Tu5xrxBBIUbNE9701lx-4;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock$2;->lambda$onReceive$2(Lcom/android/systemui/statusbar/policy/Clock$2;)V

    return-void
.end method

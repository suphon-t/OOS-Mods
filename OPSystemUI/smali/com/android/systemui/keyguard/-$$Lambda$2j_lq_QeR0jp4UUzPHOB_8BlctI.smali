.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$2j_lq_QeR0jp4UUzPHOB_8BlctI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/DismissCallbackWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DismissCallbackWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$2j_lq_QeR0jp4UUzPHOB_8BlctI;->f$0:Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$2j_lq_QeR0jp4UUzPHOB_8BlctI;->f$0:Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissSucceeded()V

    return-void
.end method

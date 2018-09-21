.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;->f$0:Lcom/android/keyguard/KeyguardStatusView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;->f$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->lambda$setEnableMarquee$0(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method

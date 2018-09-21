.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$2:Z

    iput p4, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$2:Z

    iget v3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$5Bf8SkhgPZtjLyo0uWxkHcFrlag;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$updateActivityLockScreenState$3(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZI)V

    return-void
.end method

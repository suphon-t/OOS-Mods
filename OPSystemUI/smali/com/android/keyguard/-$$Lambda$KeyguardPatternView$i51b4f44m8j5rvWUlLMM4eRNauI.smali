.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$i51b4f44m8j5rvWUlLMM4eRNauI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardPatternView;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$i51b4f44m8j5rvWUlLMM4eRNauI;->f$0:Lcom/android/keyguard/KeyguardPatternView;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$i51b4f44m8j5rvWUlLMM4eRNauI;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$i51b4f44m8j5rvWUlLMM4eRNauI;->f$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$i51b4f44m8j5rvWUlLMM4eRNauI;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->lambda$startDisappearAnimation$1(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Ljava/lang/Runnable;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$2:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bj9kjwz0A60KYJPPWTgllxyLLbE;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeRunnableDismissingKeyguard$27(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)Z

    move-result v0

    return v0
.end method

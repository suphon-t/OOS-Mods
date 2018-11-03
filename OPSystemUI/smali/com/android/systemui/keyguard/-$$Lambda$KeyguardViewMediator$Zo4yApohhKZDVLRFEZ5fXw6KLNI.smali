.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final synthetic f$1:Landroid/os/UserManager;

.field private final synthetic f$2:Landroid/os/UserHandle;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$1:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$2:Landroid/os/UserHandle;

    iput p4, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$1:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$2:Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Zo4yApohhKZDVLRFEZ5fXw6KLNI;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$sendUserPresentBroadcast$1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    return-void
.end method

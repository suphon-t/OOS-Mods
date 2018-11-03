.class Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissMessage"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

.field private final mMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 2667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2668
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 2669
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    .line 2670
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/IKeyguardDismissCallback;
    .locals 1

    .line 2673
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 2677
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

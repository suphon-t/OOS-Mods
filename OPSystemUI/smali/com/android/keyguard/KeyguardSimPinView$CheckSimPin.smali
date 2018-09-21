.class abstract Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.super Ljava/lang/Thread;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 385
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    .line 387
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    .line 388
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(II)V
.end method

.method public run()V
    .locals 4

    .line 396
    :try_start_0
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call supplyPinReportResultForSubscriber(subid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v0, "phone"

    .line 399
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    .line 399
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    .line 401
    .local v0, "result":[I
    const-string v1, "KeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supplyPinReportResult returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;[I)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v0    # "result":[I
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardSimPinView"

    const-string v2, "RemoteException for supplyPinReportResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    .line 418
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

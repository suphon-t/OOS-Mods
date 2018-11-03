.class abstract Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .line 379
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 381
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 382
    iput p4, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    .line 383
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(II)V
.end method

.method public run()V
    .locals 4

    .line 391
    :try_start_0
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call supplyPukReportResult() , mSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v0, "phone"

    .line 394
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 394
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 396
    .local v0, "result":[I
    const-string v1, "KeyguardSimPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPukReportResult returned: "

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

    .line 398
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;[I)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v0    # "result":[I
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardSimPukView"

    const-string v2, "RemoteException for supplyPukReportResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

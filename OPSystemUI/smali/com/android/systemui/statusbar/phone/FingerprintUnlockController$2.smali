.class Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;
.super Ljava/lang/Object;
.source "FingerprintUnlockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFinishedGoingToSleep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 565
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->access$100(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintAuthenticated(I)V

    .line 569
    return-void
.end method

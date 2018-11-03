.class Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;
.super Ljava/lang/Object;
.source "FingerprintUnlockController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
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

    .line 695
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->access$300(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->access$400(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 701
    :cond_0
    return-void
.end method

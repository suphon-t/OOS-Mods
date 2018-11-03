.class Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;
.super Ljava/lang/Object;
.source "FingerprintUnlockController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    .line 705
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOn()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;->this$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->access$502(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Z)Z

    .line 709
    return-void
.end method

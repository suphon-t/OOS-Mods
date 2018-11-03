.class Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "RotationLockControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;)V

    .line 37
    return-void
.end method

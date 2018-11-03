.class Lcom/android/systemui/doze/DozeUi$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeUi;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeUi;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 59
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeUi;->access$002(Lcom/android/systemui/doze/DozeUi;Z)Z

    .line 60
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi$1;->this$0:Lcom/android/systemui/doze/DozeUi;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeUi;->access$100(Lcom/android/systemui/doze/DozeUi;)V

    .line 61
    return-void
.end method

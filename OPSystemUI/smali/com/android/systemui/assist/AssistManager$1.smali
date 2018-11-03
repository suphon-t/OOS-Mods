.class Lcom/android/systemui/assist/AssistManager$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistManager;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$000(Lcom/android/systemui/assist/AssistManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public onShown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistManager;->access$000(Lcom/android/systemui/assist/AssistManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

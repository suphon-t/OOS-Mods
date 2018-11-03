.class Lcom/android/systemui/power/OverHeatProtector$4;
.super Ljava/lang/Object;
.source "OverHeatProtector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 427
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$4;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iput p2, p0, Lcom/android/systemui/power/OverHeatProtector$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$4;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$1200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$4;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget v1, p0, Lcom/android/systemui/power/OverHeatProtector$4;->val$type:I

    invoke-static {v0, v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1300(Lcom/android/systemui/power/OverHeatProtector;I)V

    .line 436
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$4;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v1, v1, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$4;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget v1, p0, Lcom/android/systemui/power/OverHeatProtector$4;->val$type:I

    invoke-static {v0, v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1400(Lcom/android/systemui/power/OverHeatProtector;I)V

    .line 442
    :goto_0
    return-void
.end method

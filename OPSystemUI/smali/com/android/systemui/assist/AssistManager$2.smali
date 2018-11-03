.class Lcom/android/systemui/assist/AssistManager$2;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 80
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$2;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$2;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/assist/AssistOrbContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 84
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$2;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    .line 85
    return-void
.end method

.class Lcom/android/systemui/opcarmode/TTSEngine$1$1;
.super Ljava/lang/Object;
.source "TTSEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/opcarmode/TTSEngine$1;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/opcarmode/TTSEngine$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/opcarmode/TTSEngine$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/opcarmode/TTSEngine$1;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/opcarmode/TTSEngine$1$1;->this$1:Lcom/android/systemui/opcarmode/TTSEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/opcarmode/TTSEngine$1$1;->this$1:Lcom/android/systemui/opcarmode/TTSEngine$1;

    iget-object v0, v0, Lcom/android/systemui/opcarmode/TTSEngine$1;->this$0:Lcom/android/systemui/opcarmode/TTSEngine;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/TTSEngine;->access$200(Lcom/android/systemui/opcarmode/TTSEngine;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "speech init error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    return-void
.end method

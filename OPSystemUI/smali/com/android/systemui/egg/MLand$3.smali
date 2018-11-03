.class Lcom/android/systemui/egg/MLand$3;
.super Ljava/lang/Object;
.source "MLand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand;->hideSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/egg/MLand;

    .line 560
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$3;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$3;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->access$300(Lcom/android/systemui/egg/MLand;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    return-void
.end method

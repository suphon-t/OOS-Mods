.class Lcom/android/systemui/egg/MLand$4;
.super Ljava/lang/Object;
.source "MLand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand;->stop()V
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

    .line 619
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$4;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$4;->this$0:Lcom/android/systemui/egg/MLand;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->access$402(Lcom/android/systemui/egg/MLand;Z)Z

    .line 623
    return-void
.end method

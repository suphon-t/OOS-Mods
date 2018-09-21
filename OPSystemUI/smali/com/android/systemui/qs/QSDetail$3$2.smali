.class Lcom/android/systemui/qs/QSDetail$3$2;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$3;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$3;

.field final synthetic val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$3;Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/QSDetail$3;

    .line 367
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$3$2;->this$1:Lcom/android/systemui/qs/QSDetail$3;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$3$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput p3, p0, Lcom/android/systemui/qs/QSDetail$3$2;->val$x:I

    iput p4, p0, Lcom/android/systemui/qs/QSDetail$3$2;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3$2;->this$1:Lcom/android/systemui/qs/QSDetail$3;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$3$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget v2, p0, Lcom/android/systemui/qs/QSDetail$3$2;->val$x:I

    iget v3, p0, Lcom/android/systemui/qs/QSDetail$3$2;->val$y:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V

    .line 371
    return-void
.end method

.class Lcom/android/systemui/qs/QSDetail$1;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    .line 129
    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->access$000(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 131
    return-void
.end method

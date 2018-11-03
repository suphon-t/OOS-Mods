.class Lcom/android/systemui/qs/QSPanel$2;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .line 586
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 589
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 592
    .local v1, "loc":[I
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 593
    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 594
    .local v2, "x":I
    const/4 v3, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 595
    .local v3, "y":I
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->show(II)V

    .line 598
    .end local v1    # "loc":[I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/qs/QSDetail$2;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;

    .line 305
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$2;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 309
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, v1, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$2;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)V

    .line 311
    return-void
.end method

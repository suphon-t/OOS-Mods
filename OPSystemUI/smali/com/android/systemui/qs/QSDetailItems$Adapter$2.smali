.class Lcom/android/systemui/qs/QSDetailItems$Adapter$2;
.super Ljava/lang/Object;
.source "QSDetailItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetailItems$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field final synthetic val$item:Lcom/android/systemui/qs/QSDetailItems$Item;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 219
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$500(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->access$500(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$Callback;->onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 225
    :cond_0
    return-void
.end method

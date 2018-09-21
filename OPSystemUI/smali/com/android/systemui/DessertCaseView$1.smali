.class Lcom/android/systemui/DessertCaseView$1;
.super Ljava/lang/Object;
.source "DessertCaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseView;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/DessertCaseView;

    .line 138
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 141
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->getChildCount()I

    move-result v0

    .line 143
    .local v0, "N":I
    const/4 v1, 0x1

    .line 144
    .local v1, "K":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    int-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/DessertCaseView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 146
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Z)V

    .line 144
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v2}, Lcom/android/systemui/DessertCaseView;->fillFreeList()V

    .line 151
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {v2}, Lcom/android/systemui/DessertCaseView;->access$000(Lcom/android/systemui/DessertCaseView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {v2}, Lcom/android/systemui/DessertCaseView;->access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {v3}, Lcom/android/systemui/DessertCaseView;->access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_1
    return-void
.end method

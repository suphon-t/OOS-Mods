.class Landroid/support/v17/leanback/widget/GridLayoutManager$1;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 1429
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$1;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1433
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$1;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 1434
    return-void
.end method

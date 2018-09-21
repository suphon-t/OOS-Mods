.class Lcom/android/systemui/recents/views/TaskViewTransform$1;
.super Landroid/util/Property;
.source "TaskViewTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskViewTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "x1"    # Ljava/lang/String;

    .line 38
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/Rect;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform$1;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform$1;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform$1;->get(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ltrb"    # Landroid/graphics/Rect;

    .line 44
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 45
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewTransform$1;->set(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

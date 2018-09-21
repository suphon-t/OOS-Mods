.class Lcom/android/systemui/ExpandHelper$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ExpandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ExpandHelper;

    .line 112
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->access$000(Lcom/android/systemui/ExpandHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v1}, Lcom/android/systemui/ExpandHelper;->access$100(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$1;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v0}, Lcom/android/systemui/ExpandHelper;->access$200(Lcom/android/systemui/ExpandHelper;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 131
    return-void
.end method

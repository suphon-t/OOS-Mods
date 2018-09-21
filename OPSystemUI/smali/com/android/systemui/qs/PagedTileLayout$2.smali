.class Lcom/android/systemui/qs/PagedTileLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/PagedTileLayout;->startTileReveal(Ljava/util/Set;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;

.field final synthetic val$postAnimation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/PagedTileLayout;

    .line 312
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->val$postAnimation:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->access$102(Lcom/android/systemui/qs/PagedTileLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$2;->val$postAnimation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 317
    return-void
.end method

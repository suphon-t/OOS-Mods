.class Lcom/android/systemui/qs/QSTileRevealController$1;
.super Ljava/lang/Object;
.source "QSTileRevealController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileRevealController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileRevealController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileRevealController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSTileRevealController;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/qs/QSTileRevealController$1;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileRevealController;->access$200(Lcom/android/systemui/qs/QSTileRevealController;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-static {v1}, Lcom/android/systemui/qs/QSTileRevealController;->access$000(Lcom/android/systemui/qs/QSTileRevealController;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileRevealController;->access$300(Lcom/android/systemui/qs/QSTileRevealController;Landroid/util/ArraySet;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileRevealController;->access$000(Lcom/android/systemui/qs/QSTileRevealController;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileRevealController;->access$100(Lcom/android/systemui/qs/QSTileRevealController;)Lcom/android/systemui/qs/PagedTileLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileRevealController$1;->this$0:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-static {v1}, Lcom/android/systemui/qs/QSTileRevealController;->access$000(Lcom/android/systemui/qs/QSTileRevealController;)Landroid/util/ArraySet;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/-$$Lambda$QSTileRevealController$1$gTMt7U-W3YL6K0ko8X3nSQ3r95I;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$$Lambda$QSTileRevealController$1$gTMt7U-W3YL6K0ko8X3nSQ3r95I;-><init>(Lcom/android/systemui/qs/QSTileRevealController$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->startTileReveal(Ljava/util/Set;Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

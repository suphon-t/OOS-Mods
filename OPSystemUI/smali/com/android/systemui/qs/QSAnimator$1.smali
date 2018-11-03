.class Lcom/android/systemui/qs/QSAnimator$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "QSAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSAnimator;

    .line 426
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/QSAnimator;->access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 430
    return-void
.end method

.method public onAnimationStarted()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/QSAnimator;->access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 435
    return-void
.end method

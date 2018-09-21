.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$changingView:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 414
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;->val$changingView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;->val$changingView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 418
    return-void
.end method

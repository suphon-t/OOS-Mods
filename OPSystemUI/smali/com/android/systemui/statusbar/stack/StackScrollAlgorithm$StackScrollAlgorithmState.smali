.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackScrollAlgorithmState"
.end annotation


# instance fields
.field private indexOfExpandingNotification:I

.field public final paddingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public scrollY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field public final visibleChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 614
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p1, "x1"    # I

    .line 614
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->indexOfExpandingNotification:I

    return p1
.end method


# virtual methods
.method public getIndexOfExpandingNotification()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->indexOfExpandingNotification:I

    return v0
.end method

.method public getPaddingAfterChild(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 634
    .local v0, "padding":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->this$0:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->access$100(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)I

    move-result v1

    return v1

    .line 638
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

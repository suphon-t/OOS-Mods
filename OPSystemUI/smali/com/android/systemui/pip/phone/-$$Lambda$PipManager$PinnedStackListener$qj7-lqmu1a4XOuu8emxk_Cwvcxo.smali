.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;

.field private final synthetic f$3:Landroid/graphics/Rect;

.field private final synthetic f$4:Z

.field private final synthetic f$5:Z

.field private final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$3:Landroid/graphics/Rect;

    iput-boolean p5, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$4:Z

    iput-boolean p6, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$5:Z

    iput p7, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$3:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$4:Z

    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$5:Z

    iget v6, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$qj7-lqmu1a4XOuu8emxk_Cwvcxo;->f$6:I

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$onMovementBoundsChanged$4(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V

    return-void
.end method

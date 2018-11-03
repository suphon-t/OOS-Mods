.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;->f$1:I

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->lambda$onRecentsDrawn$3(Lcom/android/systemui/stackdivider/DividerView;I)V

    return-void
.end method

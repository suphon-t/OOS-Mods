.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSDetailItems;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;->f$0:Lcom/android/systemui/qs/QSDetailItems;

    iput p2, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;->f$1:I

    iput p3, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;->f$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v1, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;->f$1:I

    iget v2, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->lambda$setEmptyState$0(Lcom/android/systemui/qs/QSDetailItems;II)V

    return-void
.end method

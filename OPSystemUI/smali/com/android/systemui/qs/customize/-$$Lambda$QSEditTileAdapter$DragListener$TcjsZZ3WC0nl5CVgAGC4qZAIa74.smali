.class public final synthetic Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$TcjsZZ3WC0nl5CVgAGC4qZAIa74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

.field private final synthetic f$1:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$TcjsZZ3WC0nl5CVgAGC4qZAIa74;->f$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$TcjsZZ3WC0nl5CVgAGC4qZAIa74;->f$1:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$TcjsZZ3WC0nl5CVgAGC4qZAIa74;->f$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$TcjsZZ3WC0nl5CVgAGC4qZAIa74;->f$1:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->lambda$onDrag$0(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

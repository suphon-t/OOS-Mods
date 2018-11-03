.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$RRL6yVNHxRLA7npjCgaGmNF62Mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/RecentsView;

.field private final synthetic f$1:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$RRL6yVNHxRLA7npjCgaGmNF62Mc;->f$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$RRL6yVNHxRLA7npjCgaGmNF62Mc;->f$1:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$RRL6yVNHxRLA7npjCgaGmNF62Mc;->f$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$RRL6yVNHxRLA7npjCgaGmNF62Mc;->f$1:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->lambda$onBusEvent$1(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    return-void
.end method

.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$TaskView$-pg3FhkTHYE_OFyYVD2c3tjmUu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskView$-pg3FhkTHYE_OFyYVD2c3tjmUu4;->f$0:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskView$-pg3FhkTHYE_OFyYVD2c3tjmUu4;->f$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskView;->lambda$onBusEvent$0(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

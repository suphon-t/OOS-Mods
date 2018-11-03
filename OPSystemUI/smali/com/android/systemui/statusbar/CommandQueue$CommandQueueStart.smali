.class public Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;
.super Lcom/android/systemui/SystemUI;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandQueueStart"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 987
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 990
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/CommandQueue;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 991
    return-void
.end method

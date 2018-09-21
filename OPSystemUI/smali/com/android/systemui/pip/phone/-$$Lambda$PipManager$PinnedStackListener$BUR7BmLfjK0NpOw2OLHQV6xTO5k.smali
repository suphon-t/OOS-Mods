.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$BUR7BmLfjK0NpOw2OLHQV6xTO5k;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$onMinimizedStateChanged$3(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Z)V

    return-void
.end method

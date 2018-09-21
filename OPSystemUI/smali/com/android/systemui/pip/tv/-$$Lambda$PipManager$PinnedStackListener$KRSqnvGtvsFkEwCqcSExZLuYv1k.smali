.class public final synthetic Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$KRSqnvGtvsFkEwCqcSExZLuYv1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$KRSqnvGtvsFkEwCqcSExZLuYv1k;->f$0:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$PinnedStackListener$KRSqnvGtvsFkEwCqcSExZLuYv1k;->f$0:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->lambda$onActionsChanged$1(Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;)V

    return-void
.end method

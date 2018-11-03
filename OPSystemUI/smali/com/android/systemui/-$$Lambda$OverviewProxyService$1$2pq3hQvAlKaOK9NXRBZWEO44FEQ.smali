.class public final synthetic Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/OverviewProxyService$1;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;->f$0:Lcom/android/systemui/OverviewProxyService$1;

    iput-boolean p2, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;->f$0:Lcom/android/systemui/OverviewProxyService$1;

    iget-boolean v1, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/OverviewProxyService$1;->lambda$onOverviewShown$1(Lcom/android/systemui/OverviewProxyService$1;Z)V

    return-void
.end method

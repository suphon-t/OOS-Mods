.class public final synthetic Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$ve6L74feVQWkpga-S7KU2FyhUuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$ve6L74feVQWkpga-S7KU2FyhUuE;->f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-boolean p2, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$ve6L74feVQWkpga-S7KU2FyhUuE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$ve6L74feVQWkpga-S7KU2FyhUuE;->f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-boolean v1, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$ve6L74feVQWkpga-S7KU2FyhUuE;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lambda$setRecentsVisibility$2(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    return-void
.end method

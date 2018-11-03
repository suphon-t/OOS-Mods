.class public final synthetic Lcom/android/systemui/util/leak/-$$Lambda$XMHjUeThvUDRPlJmBo9djG71pM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/-$$Lambda$XMHjUeThvUDRPlJmBo9djG71pM8;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/leak/-$$Lambda$XMHjUeThvUDRPlJmBo9djG71pM8;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->reinspectGarbageAfterGc()V

    return-void
.end method

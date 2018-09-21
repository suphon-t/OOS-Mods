.class public Lcom/android/systemui/util/leak/LeakDetector;
.super Ljava/lang/Object;
.source "LeakDetector.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final ENABLED:Z


# instance fields
.field private final mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

.field private final mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

.field private final mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V
    .locals 0
    .param p1, "trackedCollections"    # Lcom/android/systemui/util/leak/TrackedCollections;
    .param p2, "trackedGarbage"    # Lcom/android/systemui/util/leak/TrackedGarbage;
    .param p3, "trackedObjects"    # Lcom/android/systemui/util/leak/TrackedObjects;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    .line 48
    return-void
.end method

.method public static create()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 4

    .line 135
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/TrackedCollections;-><init>()V

    .line 137
    .local v0, "collections":Lcom/android/systemui/util/leak/TrackedCollections;
    new-instance v1, Lcom/android/systemui/util/leak/LeakDetector;

    new-instance v2, Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-direct {v2, v0}, Lcom/android/systemui/util/leak/TrackedGarbage;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;)V

    new-instance v3, Lcom/android/systemui/util/leak/TrackedObjects;

    invoke-direct {v3, v0}, Lcom/android/systemui/util/leak/TrackedObjects;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/util/leak/LeakDetector;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V

    return-object v1

    .line 140
    .end local v0    # "collections":Lcom/android/systemui/util/leak/TrackedCollections;
    :cond_0
    new-instance v0, Lcom/android/systemui/util/leak/LeakDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/systemui/util/leak/LeakDetector;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;)V

    return-object v0
.end method

.method static synthetic lambda$dump$0(Ljava/util/Collection;)Z
    .locals 1
    .param p0, "col"    # Ljava/util/Collection;

    .line 113
    invoke-static {p0}, Lcom/android/systemui/util/leak/TrackedObjects;->isTrackedObject(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "df"    # Ljava/io/FileDescriptor;
    .param p2, "w"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 107
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "SYSUI LEAK DETECTOR"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "TrackedCollections:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    sget-object v2, Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;->INSTANCE:Lcom/android/systemui/util/leak/-$$Lambda$LeakDetector$pWx7s0HACocvPZyQWmuD0rk2VO8;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Ljava/util/function/Predicate;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 115
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 117
    const-string v1, "TrackedObjects:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 119
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    sget-object v2, Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;->INSTANCE:Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->dump(Ljava/io/PrintWriter;Ljava/util/function/Predicate;)V

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 121
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 123
    const-string v1, "TrackedGarbage:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/TrackedGarbage;->dump(Ljava/io/PrintWriter;)V

    .line 126
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    .line 128
    :cond_0
    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 132
    return-void
.end method

.method getTrackedGarbage()Lcom/android/systemui/util/leak/TrackedGarbage;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    return-object v0
.end method

.method public trackCollection(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/util/leak/TrackedCollections;->track(Ljava/util/Collection;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public trackGarbage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedGarbage:Lcom/android/systemui/util/leak/TrackedGarbage;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/leak/TrackedGarbage;->track(Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public trackInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 61
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedObjects:Lcom/android/systemui/util/leak/TrackedObjects;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/leak/TrackedObjects;->track(Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method

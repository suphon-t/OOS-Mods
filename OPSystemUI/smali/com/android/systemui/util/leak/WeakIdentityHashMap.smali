.class public Lcom/android/systemui/util/leak/WeakIdentityHashMap;
.super Ljava/lang/Object;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private final mRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .line 37
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/ref/WeakReference<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->cleanUp()V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 67
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->cleanUp()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->cleanUp()V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    iget-object v2, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public size()I
    .locals 1

    .line 62
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->cleanUp()V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

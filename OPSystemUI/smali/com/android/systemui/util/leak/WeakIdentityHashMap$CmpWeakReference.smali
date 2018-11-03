.class Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmpWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final mHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 76
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 81
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference<TK;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "k":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    instance-of v3, p1, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    if-eqz v3, :cond_2

    .line 91
    move-object v3, p1

    check-cast v3, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    invoke-virtual {v3}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 93
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 98
    .local p0, "this":Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;, "Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference<TK;>;"
    iget v0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    return v0
.end method

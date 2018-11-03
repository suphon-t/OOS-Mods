.class public Landroidx/slice/compat/CompatPermissionManager$PermissionState;
.super Ljava/lang/Object;
.source "CompatPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/compat/CompatPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionState"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mPaths:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "hasAllPermissions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 122
    .local p1, "grant":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    .line 123
    if-eqz p3, :cond_0

    .line 124
    iget-object v0, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "g":Ljava/lang/String;
    iget-object v2, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-direct {p0, v1}, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->decodeSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v1    # "g":Ljava/lang/String;
    goto :goto_0

    .line 130
    :cond_1
    :goto_1
    iput-object p2, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mKey:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private decodeSegments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 210
    const-string v0, "/"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "sets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 212
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private encodeSegments([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # [Ljava/lang/String;

    .line 202
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 203
    .local v0, "out":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 204
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    const-string v1, "/"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "prefix"    # [Ljava/lang/String;
    .param p2, "path"    # [Ljava/lang/String;

    .line 189
    array-length v0, p1

    .line 190
    .local v0, "prefixSize":I
    array-length v1, p2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    .line 192
    :cond_0
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 193
    aget-object v3, p2, v1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    return v2

    .line 192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method addPath(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 160
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 161
    .local v0, "pathSegs":[Ljava/lang/String;
    iget-object v1, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v1}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 162
    iget-object v3, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 163
    .local v3, "existing":[Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const/4 v2, 0x0

    return v2

    .line 167
    :cond_0
    invoke-direct {p0, v0, v3}, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    iget-object v4, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 161
    .end local v3    # "existing":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 172
    return v2
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccess(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 150
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 151
    .local v0, "inPath":[Ljava/lang/String;
    iget-object v1, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v1}, Landroid/support/v4/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 152
    .local v2, "p":[Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    const/4 v1, 0x1

    return v1

    .line 155
    .end local v2    # "p":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hasAllPermissions()Z
    .locals 1

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->hasAccess(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method removePath(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 176
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 178
    .local v1, "pathSegs":[Ljava/lang/String;
    iget-object v2, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v2}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 179
    iget-object v3, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 180
    .local v3, "existing":[Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 182
    iget-object v4, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 178
    .end local v3    # "existing":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public toPersistable()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 143
    .local v0, "ret":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->mPaths:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v1}, Landroid/support/v4/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 144
    .local v2, "path":[Ljava/lang/String;
    invoke-direct {p0, v2}, Landroidx/slice/compat/CompatPermissionManager$PermissionState;->encodeSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v2    # "path":[Ljava/lang/String;
    goto :goto_0

    .line 146
    :cond_0
    return-object v0
.end method

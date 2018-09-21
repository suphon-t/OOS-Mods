.class public Lcom/android/systemui/plugins/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/VersionInfo$Version;,
        Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/systemui/plugins/VersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    return-void
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .locals 13
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 48
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    const-class v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    .line 50
    .local v0, "provider":Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 51
    iget-object v2, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    const-class v2, Lcom/android/systemui/plugins/annotations/Requires;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/annotations/Requires;

    .line 54
    .local v2, "requires":Lcom/android/systemui/plugins/annotations/Requires;
    if-eqz v2, :cond_2

    .line 55
    iget-object v3, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v2}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v6

    invoke-direct {v5, v6, p2}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    const-class v3, Lcom/android/systemui/plugins/annotations/Requirements;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/annotations/Requirements;

    .line 58
    .local v3, "requirements":Lcom/android/systemui/plugins/annotations/Requirements;
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 59
    invoke-interface {v3}, Lcom/android/systemui/plugins/annotations/Requirements;->value()[Lcom/android/systemui/plugins/annotations/Requires;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 60
    .local v8, "r":Lcom/android/systemui/plugins/annotations/Requires;
    iget-object v9, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v8}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v8}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v12

    invoke-direct {v11, v12, p2}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v8    # "r":Lcom/android/systemui/plugins/annotations/Requires;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 63
    :cond_3
    const-class v5, Lcom/android/systemui/plugins/annotations/DependsOn;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/annotations/DependsOn;

    .line 64
    .local v5, "depends":Lcom/android/systemui/plugins/annotations/DependsOn;
    if-eqz v5, :cond_4

    .line 65
    invoke-interface {v5}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 67
    :cond_4
    const-class v6, Lcom/android/systemui/plugins/annotations/Dependencies;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/annotations/Dependencies;

    .line 68
    .local v6, "dependencies":Lcom/android/systemui/plugins/annotations/Dependencies;
    if-eqz v6, :cond_5

    .line 69
    invoke-interface {v6}, Lcom/android/systemui/plugins/annotations/Dependencies;->value()[Lcom/android/systemui/plugins/annotations/DependsOn;

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-ge v4, v8, :cond_5

    aget-object v9, v7, v4

    .line 70
    .local v9, "d":Lcom/android/systemui/plugins/annotations/DependsOn;
    invoke-interface {v9}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 69
    .end local v9    # "d":Lcom/android/systemui/plugins/annotations/DependsOn;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    :cond_5
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo$Version;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/systemui/plugins/VersionInfo$Version;"
        }
    .end annotation

    .line 100
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    .line 101
    .local v0, "provider":Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/plugins/VersionInfo$Version;-><init>(IZ)V

    return-object v1

    .line 104
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic lambda$checkVersion$0(Lcom/android/systemui/plugins/VersionInfo;Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/android/systemui/plugins/VersionInfo$Version;)V
    .locals 5
    .param p1, "versions"    # Landroid/util/ArrayMap;
    .param p2, "aClass"    # Ljava/lang/Class;
    .param p3, "version"    # Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 78
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 79
    .local v0, "v":Lcom/android/systemui/plugins/VersionInfo$Version;
    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0, p2}, Lcom/android/systemui/plugins/VersionInfo;->createVersion(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo$Version;

    move-result-object v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 86
    invoke-static {v0}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v2

    invoke-static {p3}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 87
    new-instance v2, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    invoke-static {v0}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v3

    invoke-static {p3}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v3

    .line 88
    invoke-static {p3}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v4

    invoke-direct {v2, p2, v1, v3, v4}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/Class;ZII)V

    throw v2

    .line 90
    :cond_2
    return-void

    .line 83
    :cond_3
    new-instance v2, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not provide an interface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2
.end method

.method static synthetic lambda$checkVersion$1(Ljava/lang/Class;Lcom/android/systemui/plugins/VersionInfo$Version;)V
    .locals 3
    .param p0, "aClass"    # Ljava/lang/Class;
    .param p1, "version"    # Lcom/android/systemui/plugins/VersionInfo$Version;

    .line 92
    invoke-static {p1}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$100(Lcom/android/systemui/plugins/VersionInfo$Version;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v0
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/systemui/plugins/VersionInfo;"
        }
    .end annotation

    .line 39
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    .line 43
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 44
    return-object p0
.end method

.method public checkVersion(Lcom/android/systemui/plugins/VersionInfo;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/VersionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 77
    .local v0, "versions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Lcom/android/systemui/plugins/VersionInfo$Version;>;"
    iget-object v1, p1, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$36RaSV8LaXl8e0tazdPbdpQ95k8;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$36RaSV8LaXl8e0tazdPbdpQ95k8;-><init>(Lcom/android/systemui/plugins/VersionInfo;Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 91
    sget-object v1, Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;->INSTANCE:Lcom/android/systemui/plugins/-$$Lambda$VersionInfo$OmM59IDVY01yoqUNn9tP6VG6ndM;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 97
    return-void
.end method

.method public getDefaultVersion()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-static {v0}, Lcom/android/systemui/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/plugins/VersionInfo$Version;)I

    move-result v0

    return v0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 108
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVersionInfo()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

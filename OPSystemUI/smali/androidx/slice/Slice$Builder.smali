.class public Landroidx/slice/Slice$Builder;
.super Ljava/lang/Object;
.source "Slice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/Slice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpec:Landroidx/slice/SliceSpec;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 239
    iput-object p1, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 240
    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 2
    .param p1, "parent"    # Landroidx/slice/Slice$Builder;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 248
    iget-object v0, p1, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_gen"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 250
    return-void
.end method


# virtual methods
.method public addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 8
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "s"    # Landroidx/slice/Slice;
    .param p3, "subType"    # Ljava/lang/String;

    .line 304
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {p2}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    if-eqz p2, :cond_0

    .line 307
    invoke-virtual {p2}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    .line 308
    .local v6, "hints":[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v7, Landroidx/slice/SliceItem;

    const-string v4, "action"

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    return-object p0
.end method

.method public addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/Slice$Builder;"
        }
    .end annotation

    .line 274
    .local p1, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 2
    .param p1, "hints"    # [Ljava/lang/String;

    .line 266
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    return-object p0
.end method

.method public addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/graphics/drawable/IconCompat;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/Slice$Builder;"
        }
    .end annotation

    .line 367
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 3
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "hints"    # [Ljava/lang/String;

    .line 355
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    const-string v2, "image"

    invoke-direct {v1, p1, v2, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    return-object p0
.end method

.method public addInt(ILjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/Slice$Builder;"
        }
    .end annotation

    .line 416
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 4
    .param p1, "value"    # I
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "hints"    # [Ljava/lang/String;

    .line 405
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "int"

    invoke-direct {v1, v2, v3, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-object p0
.end method

.method public addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;
    .locals 1
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 469
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    return-object p0
.end method

.method public addLong(JLjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;
    .locals 1
    .param p1, "time"    # J
    .param p3, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/Slice$Builder;"
        }
    .end annotation

    .line 437
    .local p4, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 4
    .param p1, "time"    # J
    .param p3, "subType"    # Ljava/lang/String;
    .param p4, "hints"    # [Ljava/lang/String;

    .line 426
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "long"

    invoke-direct {v1, v2, v3, p3, p4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-object p0
.end method

.method public addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;
    .locals 1
    .param p1, "remoteInput"    # Landroid/app/RemoteInput;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/RemoteInput;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/Slice$Builder;"
        }
    .end annotation

    .line 380
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 3
    .param p1, "remoteInput"    # Landroid/app/RemoteInput;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "hints"    # [Ljava/lang/String;

    .line 393
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    const-string v2, "input"

    invoke-direct {v1, p1, v2, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    return-object p0
.end method

.method public addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;
    .locals 1
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 281
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 5
    .param p1, "slice"    # Landroidx/slice/Slice;
    .param p2, "subType"    # Ljava/lang/String;

    .line 291
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    const-string v2, "slice"

    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v3

    .line 293
    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 292
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, v3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/Slice$Builder;"
        }
    .end annotation

    .line 345
    .local p3, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "hints"    # [Ljava/lang/String;

    .line 334
    iget-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    const-string/jumbo v2, "text"

    invoke-direct {v1, p1, v2, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    return-object p0
.end method

.method public build()Landroidx/slice/Slice;
    .locals 5

    .line 477
    new-instance v0, Landroidx/slice/Slice;

    iget-object v1, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/Slice;-><init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V

    return-object v0
.end method

.method public setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;
    .locals 0
    .param p1, "spec"    # Landroidx/slice/SliceSpec;

    .line 258
    iput-object p1, p0, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    .line 259
    return-object p0
.end method

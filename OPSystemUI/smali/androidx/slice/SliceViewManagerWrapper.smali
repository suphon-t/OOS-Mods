.class Landroidx/slice/SliceViewManagerWrapper;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerWrapper.java"


# instance fields
.field private final mManager:Landroid/app/slice/SliceManager;

.field private final mSpecs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0, p1, v0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/slice/SliceManager;

    .line 50
    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    .line 52
    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0}, Landroidx/slice/SliceConvert;->unwrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    .line 53
    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 68
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 57
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->pinSlice(Landroid/net/Uri;Ljava/util/Set;)V

    .line 58
    return-void
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 62
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->unpinSlice(Landroid/net/Uri;)V

    .line 63
    return-void
.end method

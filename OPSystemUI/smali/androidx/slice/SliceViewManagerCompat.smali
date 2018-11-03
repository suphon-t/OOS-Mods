.class Landroidx/slice/SliceViewManagerCompat;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerCompat.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 57
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 46
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    .line 47
    return-void
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 51
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    .line 52
    return-void
.end method

.class Landroidx/slice/SliceManagerWrapper;
.super Landroidx/slice/SliceManager;
.source "SliceManagerWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mManager:Landroid/app/slice/SliceManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0, p1, v0}, Landroidx/slice/SliceManagerWrapper;-><init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/slice/SliceManager;

    .line 44
    invoke-direct {p0}, Landroidx/slice/SliceManager;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/slice/SliceManagerWrapper;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    .line 47
    return-void
.end method


# virtual methods
.method public getPinnedSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0}, Landroid/app/slice/SliceManager;->getPinnedSlices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public Landroidx/car/widget/ListItemProvider$ListProvider;
.super Landroidx/car/widget/ListItemProvider;
.source "ListItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/ListItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/car/widget/ListItem$ViewHolder;",
        ">",
        "Landroidx/car/widget/ListItemProvider;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem<",
            "TVH;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem<",
            "TVH;>;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroidx/car/widget/ListItemProvider$ListProvider;, "Landroidx/car/widget/ListItemProvider$ListProvider<TVH;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/car/widget/ListItem<TVH;>;>;"
    invoke-direct {p0}, Landroidx/car/widget/ListItemProvider;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/car/widget/ListItemProvider$ListProvider;->mItems:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public get(I)Landroidx/car/widget/ListItem;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/car/widget/ListItem<",
            "TVH;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroidx/car/widget/ListItemProvider$ListProvider;, "Landroidx/car/widget/ListItemProvider$ListProvider<TVH;>;"
    iget-object v0, p0, Landroidx/car/widget/ListItemProvider$ListProvider;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/widget/ListItem;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 59
    .local p0, "this":Landroidx/car/widget/ListItemProvider$ListProvider;, "Landroidx/car/widget/ListItemProvider$ListProvider<TVH;>;"
    iget-object v0, p0, Landroidx/car/widget/ListItemProvider$ListProvider;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

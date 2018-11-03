.class public abstract Landroidx/car/widget/ListItemProvider;
.super Ljava/lang/Object;
.source "ListItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/ListItemProvider$ListProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/car/widget/ListItem$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    .local p0, "this":Landroidx/car/widget/ListItemProvider;, "Landroidx/car/widget/ListItemProvider<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public abstract get(I)Landroidx/car/widget/ListItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/car/widget/ListItem<",
            "TVH;>;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

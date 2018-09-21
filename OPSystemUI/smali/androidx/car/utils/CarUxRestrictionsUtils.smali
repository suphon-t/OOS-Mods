.class public Landroidx/car/utils/CarUxRestrictionsUtils;
.super Ljava/lang/Object;
.source "CarUxRestrictionsUtils.java"


# static fields
.field private static sStringLengthFilter:Landroid/text/InputFilter;


# direct methods
.method public static apply(Landroid/content/Context;Landroid/car/drivingstate/CarUxRestrictions;Landroid/widget/TextView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "carUxRestrictions"    # Landroid/car/drivingstate/CarUxRestrictions;
    .param p2, "tv"    # Landroid/widget/TextView;

    .line 54
    sget-object v0, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getMaxRestrictedStringLength()I

    move-result v0

    .line 56
    .local v0, "lengthLimit":I
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    sput-object v1, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    .line 59
    .end local v0    # "lengthLimit":I
    :cond_0
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v0

    .line 62
    .local v0, "activeUxr":I
    invoke-virtual {p2}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/text/InputFilter;>;"
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 65
    sget-object v2, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .local v2, "updatedFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/InputFilter;>;"
    sget-object v3, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/InputFilter;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 69
    .end local v2    # "updatedFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/InputFilter;>;"
    goto :goto_0

    .line 70
    :cond_1
    sget-object v2, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .restart local v2    # "updatedFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/InputFilter;>;"
    sget-object v3, Landroidx/car/utils/CarUxRestrictionsUtils;->sStringLengthFilter:Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/InputFilter;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    .end local v2    # "updatedFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/InputFilter;>;"
    :cond_2
    :goto_0
    return-void
.end method

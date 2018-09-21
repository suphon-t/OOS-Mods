.class public Landroidx/car/widget/SubheaderListItem$ViewHolder;
.super Landroidx/car/widget/ListItem$ViewHolder;
.source "SubheaderListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/SubheaderListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 195
    invoke-direct {p0, p1}, Landroidx/car/widget/ListItem$ViewHolder;-><init>(Landroid/view/View;)V

    .line 196
    sget v0, Landroidx/car/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/car/widget/SubheaderListItem$ViewHolder;->mText:Landroid/widget/TextView;

    .line 197
    return-void
.end method


# virtual methods
.method protected applyUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 208
    iget-object v0, p0, Landroidx/car/widget/SubheaderListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/SubheaderListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/car/utils/CarUxRestrictionsUtils;->apply(Landroid/content/Context;Landroid/car/drivingstate/CarUxRestrictions;Landroid/widget/TextView;)V

    .line 209
    return-void
.end method

.method public getText()Landroid/widget/TextView;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/car/widget/SubheaderListItem$ViewHolder;->mText:Landroid/widget/TextView;

    return-object v0
.end method

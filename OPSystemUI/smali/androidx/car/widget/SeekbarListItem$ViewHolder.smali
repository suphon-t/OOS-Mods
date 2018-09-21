.class public Landroidx/car/widget/SeekbarListItem$ViewHolder;
.super Landroidx/car/widget/ListItem$ViewHolder;
.source "SeekbarListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/SeekbarListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mContainerLayout:Landroid/widget/RelativeLayout;

.field private mPrimaryIcon:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarContainer:Landroid/widget/LinearLayout;

.field private mSupplementalIcon:Landroid/widget/ImageView;

.field private mSupplementalIconDivider:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private final mWidgetViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;

    .line 590
    invoke-direct {p0, p1}, Landroidx/car/widget/ListItem$ViewHolder;-><init>(Landroid/view/View;)V

    .line 592
    sget v0, Landroidx/car/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mContainerLayout:Landroid/widget/RelativeLayout;

    .line 594
    sget v0, Landroidx/car/R$id;->primary_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mPrimaryIcon:Landroid/widget/ImageView;

    .line 596
    sget v0, Landroidx/car/R$id;->seek_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSeekBarContainer:Landroid/widget/LinearLayout;

    .line 597
    sget v0, Landroidx/car/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mText:Landroid/widget/TextView;

    .line 598
    sget v0, Landroidx/car/R$id;->seek_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    .line 600
    sget v0, Landroidx/car/R$id;->supplemental_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    .line 601
    sget v0, Landroidx/car/R$id;->supplemental_icon_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSupplementalIconDivider:Landroid/view/View;

    .line 603
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_touch_target_size:I

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 606
    .local v0, "minTouchSize":I
    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroidx/car/widget/MinTouchTargetHelper;->ensureThat(Landroid/view/View;)Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;

    move-result-object v1

    .line 607
    invoke-virtual {v1, v0}, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->hasMinTouchSize(I)V

    .line 611
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mPrimaryIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mText:Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSupplementalIconDivider:Landroid/view/View;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iput-object v1, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mWidgetViews:[Landroid/view/View;

    .line 615
    return-void
.end method


# virtual methods
.method protected applyUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 619
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/car/utils/CarUxRestrictionsUtils;->apply(Landroid/content/Context;Landroid/car/drivingstate/CarUxRestrictions;Landroid/widget/TextView;)V

    .line 620
    return-void
.end method

.method public getContainerLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 624
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mContainerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPrimaryIcon()Landroid/widget/ImageView;
    .locals 1

    .line 629
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mPrimaryIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 644
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getSeekBarContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 634
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSeekBarContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSupplementalIcon()Landroid/widget/ImageView;
    .locals 1

    .line 649
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSupplementalIconDivider()Landroid/view/View;
    .locals 1

    .line 654
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mSupplementalIconDivider:Landroid/view/View;

    return-object v0
.end method

.method public getText()Landroid/widget/TextView;
    .locals 1

    .line 639
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWidgetViews()[Landroid/view/View;
    .locals 1

    .line 659
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem$ViewHolder;->mWidgetViews:[Landroid/view/View;

    return-object v0
.end method

.class public Landroidx/car/widget/TextListItem$ViewHolder;
.super Landroidx/car/widget/ListItem$ViewHolder;
.source "TextListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/TextListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mAction1:Landroid/widget/Button;

.field private mAction1Divider:Landroid/view/View;

.field private mAction2:Landroid/widget/Button;

.field private mAction2Divider:Landroid/view/View;

.field private mBody:Landroid/widget/TextView;

.field private mContainerLayout:Landroid/widget/RelativeLayout;

.field private mPrimaryIcon:Landroid/widget/ImageView;

.field private mSupplementalIcon:Landroid/widget/ImageView;

.field private mSupplementalIconDivider:Landroid/view/View;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchDivider:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private final mWidgetViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;

    .line 914
    invoke-direct {p0, p1}, Landroidx/car/widget/ListItem$ViewHolder;-><init>(Landroid/view/View;)V

    .line 916
    sget v0, Landroidx/car/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mContainerLayout:Landroid/widget/RelativeLayout;

    .line 918
    sget v0, Landroidx/car/R$id;->primary_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mPrimaryIcon:Landroid/widget/ImageView;

    .line 920
    sget v0, Landroidx/car/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 921
    sget v0, Landroidx/car/R$id;->body:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mBody:Landroid/widget/TextView;

    .line 923
    sget v0, Landroidx/car/R$id;->supplemental_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    .line 924
    sget v0, Landroidx/car/R$id;->supplemental_icon_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSupplementalIconDivider:Landroid/view/View;

    .line 926
    sget v0, Landroidx/car/R$id;->switch_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 927
    sget v0, Landroidx/car/R$id;->switch_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSwitchDivider:Landroid/view/View;

    .line 929
    sget v0, Landroidx/car/R$id;->action1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction1:Landroid/widget/Button;

    .line 930
    sget v0, Landroidx/car/R$id;->action1_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction1Divider:Landroid/view/View;

    .line 931
    sget v0, Landroidx/car/R$id;->action2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction2:Landroid/widget/Button;

    .line 932
    sget v0, Landroidx/car/R$id;->action2_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction2Divider:Landroid/view/View;

    .line 934
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_touch_target_size:I

    .line 935
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 937
    .local v0, "minTouchSize":I
    iget-object v1, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroidx/car/widget/MinTouchTargetHelper;->ensureThat(Landroid/view/View;)Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;

    move-result-object v1

    .line 938
    invoke-virtual {v1, v0}, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->hasMinTouchSize(I)V

    .line 942
    const/16 v1, 0xb

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mPrimaryIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mBody:Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSupplementalIconDivider:Landroid/view/View;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction1:Landroid/widget/Button;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction1Divider:Landroid/view/View;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction2:Landroid/widget/Button;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction2Divider:Landroid/view/View;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSwitch:Landroid/widget/Switch;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSwitchDivider:Landroid/view/View;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iput-object v1, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mWidgetViews:[Landroid/view/View;

    .line 951
    return-void
.end method

.method static synthetic access$000(Landroidx/car/widget/TextListItem$ViewHolder;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 890
    invoke-direct {p0}, Landroidx/car/widget/TextListItem$ViewHolder;->getWidgetViews()[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetViews()[Landroid/view/View;
    .locals 1

    .line 1027
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mWidgetViews:[Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected applyUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 962
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/car/utils/CarUxRestrictionsUtils;->apply(Landroid/content/Context;Landroid/car/drivingstate/CarUxRestrictions;Landroid/widget/TextView;)V

    .line 963
    return-void
.end method

.method public getAction1()Landroid/widget/Button;
    .locals 1

    .line 1007
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction1:Landroid/widget/Button;

    return-object v0
.end method

.method public getAction1Divider()Landroid/view/View;
    .locals 1

    .line 1012
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction1Divider:Landroid/view/View;

    return-object v0
.end method

.method public getAction2()Landroid/widget/Button;
    .locals 1

    .line 1017
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction2:Landroid/widget/Button;

    return-object v0
.end method

.method public getAction2Divider()Landroid/view/View;
    .locals 1

    .line 1022
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mAction2Divider:Landroid/view/View;

    return-object v0
.end method

.method public getBody()Landroid/widget/TextView;
    .locals 1

    .line 982
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mBody:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContainerLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 967
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mContainerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPrimaryIcon()Landroid/widget/ImageView;
    .locals 1

    .line 972
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mPrimaryIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSupplementalIcon()Landroid/widget/ImageView;
    .locals 1

    .line 987
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSupplementalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSupplementalIconDivider()Landroid/view/View;
    .locals 1

    .line 992
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSupplementalIconDivider:Landroid/view/View;

    return-object v0
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    .line 1002
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public getSwitchDivider()Landroid/view/View;
    .locals 1

    .line 997
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mSwitchDivider:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 977
    iget-object v0, p0, Landroidx/car/widget/TextListItem$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

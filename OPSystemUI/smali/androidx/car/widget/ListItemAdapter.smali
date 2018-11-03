.class public Landroidx/car/widget/ListItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ListItemAdapter.java"

# interfaces
.implements Landroidx/car/widget/PagedListView$DividerVisibilityManager;
.implements Landroidx/car/widget/PagedListView$ItemCap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroidx/car/widget/ListItem$ViewHolder;",
        ">;",
        "Landroidx/car/widget/PagedListView$DividerVisibilityManager;",
        "Landroidx/car/widget/PagedListView$ItemCap;"
    }
.end annotation


# instance fields
.field private mBackgroundStyle:I

.field private mContext:Landroid/content/Context;

.field private mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

.field private final mItemProvider:Landroidx/car/widget/ListItemProvider;

.field private mListItemBackgroundColor:I

.field private mListItemBodyTextAppearance:I

.field private mListItemTitleTextAppearance:I

.field private mMaxItems:I

.field private final mUxRestrictionsHelper:Landroidx/car/utils/CarUxRestrictionsHelper;

.field private final mViewHolderCreator:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Landroidx/car/widget/ListItem$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mViewHolderLayoutResIds:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/car/widget/ListItemProvider;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemProvider"    # Landroidx/car/widget/ListItemProvider;
    .param p3, "backgroundStyle"    # I

    .line 128
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 102
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderLayoutResIds:Landroid/util/SparseIntArray;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderCreator:Landroid/util/SparseArray;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Landroidx/car/widget/ListItemAdapter;->mMaxItems:I

    .line 129
    iput-object p1, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Landroidx/car/widget/ListItemAdapter;->mItemProvider:Landroidx/car/widget/ListItemProvider;

    .line 131
    iput p3, p0, Landroidx/car/widget/ListItemAdapter;->mBackgroundStyle:I

    .line 133
    sget v0, Landroidx/car/R$layout;->car_list_item_text_content:I

    sget-object v1, Landroidx/car/widget/-$$Lambda$G05oNAIwQGFB9mxWoy7r_749aLM;->INSTANCE:Landroidx/car/widget/-$$Lambda$G05oNAIwQGFB9mxWoy7r_749aLM;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroidx/car/widget/ListItemAdapter;->registerListItemViewType(IILjava/util/function/Function;)V

    .line 135
    sget v0, Landroidx/car/R$layout;->car_list_item_seekbar_content:I

    sget-object v1, Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;->INSTANCE:Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroidx/car/widget/ListItemAdapter;->registerListItemViewType(IILjava/util/function/Function;)V

    .line 137
    sget v0, Landroidx/car/R$layout;->car_list_item_subheader_content:I

    sget-object v1, Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;->INSTANCE:Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Landroidx/car/widget/ListItemAdapter;->registerListItemViewType(IILjava/util/function/Function;)V

    .line 140
    new-instance v0, Landroidx/car/utils/CarUxRestrictionsHelper;

    new-instance v1, Landroidx/car/widget/-$$Lambda$ListItemAdapter$mRFG7p_Xdn8NKaeSLZRLvbjySsc;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$ListItemAdapter$mRFG7p_Xdn8NKaeSLZRLvbjySsc;-><init>(Landroidx/car/widget/ListItemAdapter;)V

    invoke-direct {v0, p1, v1}, Landroidx/car/utils/CarUxRestrictionsHelper;-><init>(Landroid/content/Context;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    iput-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mUxRestrictionsHelper:Landroidx/car/utils/CarUxRestrictionsHelper;

    .line 145
    return-void
.end method

.method private createListItemContainer()Landroid/view/ViewGroup;
    .locals 4

    .line 231
    iget v0, p0, Landroidx/car/widget/ListItemAdapter;->mBackgroundStyle:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 232
    new-instance v0, Landroid/support/v7/widget/CardView;

    iget-object v3, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "card":Landroid/support/v7/widget/CardView;
    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v1, v3

    .line 235
    .local v1, "cardLayoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v2, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/car/R$dimen;->car_padding_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 237
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v2, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/car/R$dimen;->car_radius_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setRadius(F)V

    .line 239
    iget v2, p0, Landroidx/car/widget/ListItemAdapter;->mListItemBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 241
    nop

    .line 242
    .end local v1    # "cardLayoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .local v0, "container":Landroid/view/ViewGroup;
    goto :goto_0

    .line 243
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget v1, p0, Landroidx/car/widget/ListItemAdapter;->mBackgroundStyle:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 248
    iget v1, p0, Landroidx/car/widget/ListItemAdapter;->mListItemBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 251
    :cond_1
    nop

    .line 253
    .local v0, "container":Landroid/view/ViewGroup;
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$new$8(Landroidx/car/widget/ListItemAdapter;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0
    .param p1, "carUxRestrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 142
    iput-object p1, p0, Landroidx/car/widget/ListItemAdapter;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 143
    invoke-virtual {p0}, Landroidx/car/widget/ListItemAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 282
    iget v0, p0, Landroidx/car/widget/ListItemAdapter;->mMaxItems:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mItemProvider:Landroidx/car/widget/ListItemProvider;

    .line 283
    invoke-virtual {v0}, Landroidx/car/widget/ListItemProvider;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mItemProvider:Landroidx/car/widget/ListItemProvider;

    .line 284
    invoke-virtual {v0}, Landroidx/car/widget/ListItemProvider;->size()I

    move-result v0

    iget v1, p0, Landroidx/car/widget/ListItemAdapter;->mMaxItems:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 258
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mItemProvider:Landroidx/car/widget/ListItemProvider;

    invoke-virtual {v0, p1}, Landroidx/car/widget/ListItemProvider;->get(I)Landroidx/car/widget/ListItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/ListItem;->getViewType()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 193
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 196
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    .line 198
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/car/R$styleable;->ListItem:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/car/R$styleable;->ListItem_listItemBackgroundColor:I

    iget-object v2, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    sget v3, Landroidx/car/R$color;->car_card:I

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/ListItemAdapter;->mListItemBackgroundColor:I

    .line 202
    sget v1, Landroidx/car/R$styleable;->ListItem_listItemTitleTextAppearance:I

    sget v2, Landroidx/car/R$style;->TextAppearance_Car_Body1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/ListItemAdapter;->mListItemTitleTextAppearance:I

    .line 205
    sget v1, Landroidx/car/R$styleable;->ListItem_listItemBodyTextAppearance:I

    sget v2, Landroidx/car/R$style;->TextAppearance_Car_Body2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/ListItemAdapter;->mListItemBodyTextAppearance:I

    .line 208
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 58
    check-cast p1, Landroidx/car/widget/ListItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/car/widget/ListItemAdapter;->onBindViewHolder(Landroidx/car/widget/ListItem$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/car/widget/ListItem$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroidx/car/widget/ListItem$ViewHolder;
    .param p2, "position"    # I

    .line 263
    iget v0, p0, Landroidx/car/widget/ListItemAdapter;->mBackgroundStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p1, Landroidx/car/widget/ListItem$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/car/widget/ListItemAdapter;->mItemProvider:Landroidx/car/widget/ListItemProvider;

    .line 265
    invoke-virtual {v1}, Landroidx/car/widget/ListItemProvider;->size()I

    move-result v1

    .line 264
    invoke-static {v0, p2, v1}, Landroidx/car/utils/ListItemBackgroundResolver;->setBackground(Landroid/view/View;II)V

    .line 269
    :cond_0
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mCurrentUxRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {p1, v0}, Landroidx/car/widget/ListItem$ViewHolder;->applyUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 273
    :cond_1
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mItemProvider:Landroidx/car/widget/ListItemProvider;

    invoke-virtual {v0, p2}, Landroidx/car/widget/ListItemProvider;->get(I)Landroidx/car/widget/ListItem;

    move-result-object v0

    .line 274
    .local v0, "item":Landroidx/car/widget/ListItem;
    iget v1, p0, Landroidx/car/widget/ListItemAdapter;->mListItemTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroidx/car/widget/ListItem;->setTitleTextAppearance(I)V

    .line 275
    iget v1, p0, Landroidx/car/widget/ListItemAdapter;->mListItemBodyTextAppearance:I

    invoke-virtual {v0, v1}, Landroidx/car/widget/ListItem;->setBodyTextAppearance(I)V

    .line 277
    invoke-virtual {v0, p1}, Landroidx/car/widget/ListItem;->bind(Landroidx/car/widget/ListItem$ViewHolder;)V

    .line 278
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Landroidx/car/widget/ListItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/car/widget/ListItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/car/widget/ListItem$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 213
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderLayoutResIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderCreator:Landroid/util/SparseArray;

    .line 214
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 219
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderLayoutResIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, "itemView":Landroid/view/View;
    invoke-direct {p0}, Landroidx/car/widget/ListItemAdapter;->createListItemContainer()Landroid/view/ViewGroup;

    move-result-object v2

    .line 222
    .local v2, "container":Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    iget-object v3, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderCreator:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Function;

    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/widget/ListItem$ViewHolder;

    return-object v3

    .line 215
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "container":Landroid/view/ViewGroup;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unregistered view type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListItemViewType(IILjava/util/function/Function;)V
    .locals 2
    .param p1, "viewType"    # I
    .param p2, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Landroidx/car/widget/ListItem$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/view/View;Landroidx/car/widget/ListItem$ViewHolder;>;"
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderLayoutResIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderCreator:Landroid/util/SparseArray;

    .line 184
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderCreator:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mViewHolderLayoutResIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View type is already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxItems(I)V
    .locals 0
    .param p1, "maxItems"    # I

    .line 289
    iput p1, p0, Landroidx/car/widget/ListItemAdapter;->mMaxItems:I

    .line 290
    return-void
.end method

.method public shouldHideDivider(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 297
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/car/widget/ListItemAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/ListItemAdapter;->mItemProvider:Landroidx/car/widget/ListItemProvider;

    .line 298
    invoke-virtual {v0, p1}, Landroidx/car/widget/ListItemProvider;->get(I)Landroidx/car/widget/ListItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/ListItem;->shouldHideDivider()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Landroidx/slice/widget/LargeSliceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LargeSliceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;,
        Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;,
        Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private mColor:I

.field private final mContext:Landroid/content/Context;

.field private mDefStyleAttr:I

.field private mDefStyleRes:I

.field private final mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

.field private mLastUpdated:J

.field private mParent:Landroidx/slice/widget/SliceView;

.field private mShowLastUpdated:Z

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateView:Landroidx/slice/widget/LargeTemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    new-instance v0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;-><init>(Landroidx/slice/widget/LargeSliceAdapter$1;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    .line 77
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeSliceAdapter;->setHasStableIds(Z)V

    .line 79
    return-void
.end method

.method static synthetic access$1000(Landroidx/slice/widget/LargeSliceAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/slice/widget/LargeSliceAdapter;)J
    .locals 2
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-wide v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/slice/widget/LargeSliceAdapter;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-boolean v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    return v0
.end method

.method static synthetic access$1300(Landroidx/slice/widget/LargeSliceAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/LargeTemplateView;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/slice/widget/LargeSliceAdapter;)I
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mColor:I

    return v0
.end method

.method static synthetic access$600(Landroidx/slice/widget/LargeSliceAdapter;)Landroid/util/AttributeSet;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mAttrs:Landroid/util/AttributeSet;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/slice/widget/LargeSliceAdapter;)I
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mDefStyleAttr:I

    return v0
.end method

.method static synthetic access$800(Landroidx/slice/widget/LargeSliceAdapter;)I
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mDefStyleRes:I

    return v0
.end method

.method static synthetic access$900(Landroidx/slice/widget/LargeSliceAdapter;)Landroidx/slice/widget/SliceView$OnSliceActionListener;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter;

    .line 52
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-object v0
.end method

.method private inflateForType(I)Landroid/view/View;
    .locals 4
    .param p1, "viewType"    # I

    .line 182
    new-instance v0, Landroidx/slice/widget/RowView;

    iget-object v1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/slice/widget/RowView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_message_local:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_message:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_grid:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    nop

    .line 195
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyHeaderChanged()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyItemChanged(I)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 161
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->access$200(Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 156
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->access$100(Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 51
    check-cast p1, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->onBindViewHolder(Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
    .param p2, "position"    # I

    .line 171
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    .line 172
    .local v0, "slice":Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
    invoke-static {v0}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->access$300(Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;)Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->bind(Landroidx/slice/SliceItem;I)V

    .line 173
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 149
    invoke-direct {p0, p2}, Landroidx/slice/widget/LargeSliceAdapter;->inflateForType(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v1, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;-><init>(Landroidx/slice/widget/LargeSliceAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setLastUpdated(J)V
    .locals 0
    .param p1, "lastUpdated"    # J

    .line 143
    iput-wide p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    .line 144
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 145
    return-void
.end method

.method public setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/LargeTemplateView;)V
    .locals 0
    .param p1, "parent"    # Landroidx/slice/widget/SliceView;
    .param p2, "templateView"    # Landroidx/slice/widget/LargeTemplateView;

    .line 85
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    .line 86
    iput-object p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    .line 87
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0
    .param p1, "showLastUpdated"    # Z

    .line 135
    iput-boolean p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    .line 136
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 137
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    .line 101
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    .line 102
    return-void
.end method

.method public setSliceItems(Ljava/util/List;II)V
    .locals 5
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;II)V"
        }
    .end annotation

    .line 108
    .local p1, "slices":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 111
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-virtual {v0}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->resetUsage()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    .line 114
    .local v1, "s":Landroidx/slice/SliceItem;
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    new-instance v3, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-direct {v3, v1, v4, p3}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;-><init>(Landroidx/slice/SliceItem;Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v1    # "s":Landroidx/slice/SliceItem;
    goto :goto_0

    .line 117
    :cond_1
    :goto_1
    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mColor:I

    .line 118
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 93
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 94
    return-void
.end method

.method public setStyle(Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 125
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mAttrs:Landroid/util/AttributeSet;

    .line 126
    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mDefStyleAttr:I

    .line 127
    iput p3, p0, Landroidx/slice/widget/LargeSliceAdapter;->mDefStyleRes:I

    .line 128
    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

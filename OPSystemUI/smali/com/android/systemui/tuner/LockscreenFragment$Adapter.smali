.class public Lcom/android/systemui/tuner/LockscreenFragment$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LockscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/tuner/LockscreenFragment$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/tuner/LockscreenFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/tuner/LockscreenFragment$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Holder;Landroid/view/View;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/systemui/tuner/LockscreenFragment$Holder;
    .param p2, "v"    # Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Holder;Landroid/view/View;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/systemui/tuner/LockscreenFragment$Holder;
    .param p2, "v"    # Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->toggleExpando(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/systemui/tuner/LockscreenFragment$Item;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V
    .locals 3
    .param p1, "parent"    # Lcom/android/systemui/tuner/LockscreenFragment$Item;
    .param p2, "child"    # Lcom/android/systemui/tuner/LockscreenFragment$Item;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 313
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->notifyItemInserted(I)V

    .line 315
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 261
    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->onBindViewHolder(Lcom/android/systemui/tuner/LockscreenFragment$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/tuner/LockscreenFragment$Holder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/android/systemui/tuner/LockscreenFragment$Holder;
    .param p2, "position"    # I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    .line 280
    .local v0, "item":Lcom/android/systemui/tuner/LockscreenFragment$Item;
    iget-object v1, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v1, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$VuIE2eL9-LHOyBflZw_Px7xwF04;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$VuIE2eL9-LHOyBflZw_Px7xwF04;-><init>(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Holder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {v0}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->getExpando()Ljava/lang/Boolean;

    move-result-object v1

    .line 285
    .local v1, "expando":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 286
    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    .line 287
    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    .line 288
    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    new-instance v3, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$fS6IuUEavDgpMOkDZLNh46UcUNQ;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Adapter$fS6IuUEavDgpMOkDZLNh46UcUNQ;-><init>(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Holder;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    .line 293
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/tuner/LockscreenFragment$Holder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 273
    new-instance v0, Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 274
    const v2, 0x7f0d01d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/LockscreenFragment$Holder;-><init>(Landroid/view/View;)V

    .line 273
    return-object v0
.end method

.method public remItem(Lcom/android/systemui/tuner/LockscreenFragment$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/tuner/LockscreenFragment$Item;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 307
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->notifyItemRemoved(I)V

    .line 309
    return-void
.end method

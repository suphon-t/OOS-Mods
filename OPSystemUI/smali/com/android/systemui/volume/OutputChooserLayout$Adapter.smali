.class Lcom/android/systemui/volume/OutputChooserLayout$Adapter;
.super Landroid/widget/BaseAdapter;
.source "OutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserLayout;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/OutputChooserLayout;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/OutputChooserLayout;Lcom/android/systemui/volume/OutputChooserLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/OutputChooserLayout;
    .param p2, "x1"    # Lcom/android/systemui/volume/OutputChooserLayout$1;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;-><init>(Lcom/android/systemui/volume/OutputChooserLayout;)V

    return-void
.end method

.method public static synthetic lambda$getView$0(Lcom/android/systemui/volume/OutputChooserLayout$Adapter;Lcom/android/systemui/volume/OutputChooserLayout$Item;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/android/systemui/volume/OutputChooserLayout$Item;
    .param p2, "v"    # Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->access$400(Lcom/android/systemui/volume/OutputChooserLayout;)Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->access$400(Lcom/android/systemui/volume/OutputChooserLayout;)Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/volume/OutputChooserLayout$Callback;->onDetailItemClick(Lcom/android/systemui/volume/OutputChooserLayout$Item;)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->access$100(Lcom/android/systemui/volume/OutputChooserLayout;)[Lcom/android/systemui/volume/OutputChooserLayout$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->access$100(Lcom/android/systemui/volume/OutputChooserLayout;)[Lcom/android/systemui/volume/OutputChooserLayout$Item;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->access$100(Lcom/android/systemui/volume/OutputChooserLayout;)[Lcom/android/systemui/volume/OutputChooserLayout$Item;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 179
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->access$100(Lcom/android/systemui/volume/OutputChooserLayout;)[Lcom/android/systemui/volume/OutputChooserLayout$Item;

    move-result-object v0

    aget-object v0, v0, p1

    .line 185
    .local v0, "item":Lcom/android/systemui/volume/OutputChooserLayout$Item;
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v2}, Lcom/android/systemui/volume/OutputChooserLayout;->access$200(Lcom/android/systemui/volume/OutputChooserLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0152

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v2}, Lcom/android/systemui/volume/OutputChooserLayout;->access$300(Lcom/android/systemui/volume/OutputChooserLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 192
    .local v2, "iv":Landroid/widget/ImageView;
    iget-object v3, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 195
    :cond_2
    iget v3, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    :goto_1
    const v3, 0x1020016

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 199
    .local v3, "title":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v4, 0x1020010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 202
    .local v4, "summary":Landroid/widget/TextView;
    iget-object v5, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 203
    .local v5, "twoLines":Z
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 204
    const/16 v6, 0x8

    if-eqz v5, :cond_4

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    if-eqz v5, :cond_5

    iget-object v7, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v7, Lcom/android/systemui/volume/-$$Lambda$OutputChooserLayout$Adapter$onR-wEbV_JxJUsxBtuaAOi9XHTU;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserLayout$Adapter$onR-wEbV_JxJUsxBtuaAOi9XHTU;-><init>(Lcom/android/systemui/volume/OutputChooserLayout$Adapter;Lcom/android/systemui/volume/OutputChooserLayout$Item;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v7, 0x1020008

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 214
    .local v7, "icon2":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v8}, Lcom/android/systemui/volume/OutputChooserLayout;->access$400(Lcom/android/systemui/volume/OutputChooserLayout;)Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 215
    iget-object v8, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v8}, Lcom/android/systemui/volume/OutputChooserLayout;->access$400(Lcom/android/systemui/volume/OutputChooserLayout;)Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/volume/OutputChooserLayout$Callback;->getPrimaryTextColor()I

    move-result v8

    .line 216
    .local v8, "textColor":I
    iget-object v9, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v9}, Lcom/android/systemui/volume/OutputChooserLayout;->access$400(Lcom/android/systemui/volume/OutputChooserLayout;)Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/volume/OutputChooserLayout$Callback;->getSecondaryTextColor()I

    move-result v9

    .line 217
    .local v9, "sectextColor":I
    iget-object v10, p0, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->this$0:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-static {v10}, Lcom/android/systemui/volume/OutputChooserLayout;->access$400(Lcom/android/systemui/volume/OutputChooserLayout;)Lcom/android/systemui/volume/OutputChooserLayout$Callback;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/systemui/volume/OutputChooserLayout$Callback;->getIconColor()I

    move-result v10

    .line 218
    .local v10, "iconColor":I
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 219
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 220
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    .end local v8    # "textColor":I
    .end local v9    # "sectextColor":I
    .end local v10    # "iconColor":I
    :cond_6
    iget-boolean v8, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->selected:Z

    if-eqz v8, :cond_7

    .line 238
    const v6, 0x7f08031d

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_5

    .line 241
    :cond_7
    iget v8, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->icon2:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 242
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget v6, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->icon2:I

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_5

    .line 246
    :cond_8
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    :goto_5
    return-object p2
.end method

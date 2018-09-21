.class public Lcom/android/systemui/qs/QSDetailItems;
.super Landroid/widget/FrameLayout;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailItems$Callback;,
        Lcom/android/systemui/qs/QSDetailItems$Item;,
        Lcom/android/systemui/qs/QSDetailItems$H;,
        Lcom/android/systemui/qs/QSDetailItems$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field private mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

.field private mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field private mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

.field private mItemsVisible:Z

.field private final mQsDetailIconOverlaySize:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "QSDetailItems"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailItems$H;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    .line 49
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "QSDetailItems"

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070539

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mQsDetailIconOverlaySize:I

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetailItems;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSDetailItems;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;

    .line 42
    iget v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mQsDetailIconOverlaySize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1, "x1"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p1, "x1"    # Z

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItemsVisible(Z)V

    return-void
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convert"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 70
    instance-of v0, p1, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems;

    return-object v0

    .line 73
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 143
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 144
    return-void
.end method

.method private handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 5
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 147
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 148
    .local v1, "itemCount":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const/16 v3, 0x8

    if-nez v1, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v1, :cond_2

    move v0, v3

    nop

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    .line 150
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetailItems$Adapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

.method private handleSetItemsVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 156
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 157
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v2}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static synthetic lambda$setEmptyState$0(Lcom/android/systemui/qs/QSDetailItems;II)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 117
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f070534

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v0

    .line 94
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "item":Landroid/view/View;
    const v3, 0x1020016

    const v4, 0x7f070542

    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 98
    const v3, 0x1020010

    const v4, 0x7f070543

    invoke-static {v2, v3, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 94
    .end local v2    # "item":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 123
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 125
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 80
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoSizingList;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    .line 87
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public setEmptyState(II)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "text"    # I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;-><init>(Lcom/android/systemui/qs/QSDetailItems;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "items"    # [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems$H;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/qs/QSDetailItems$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    return-void
.end method

.method public setTagSuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSDetailItems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 105
    return-void
.end method

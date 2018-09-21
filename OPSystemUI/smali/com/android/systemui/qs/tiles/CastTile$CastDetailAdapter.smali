.class final Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CastDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private final mVisibleOrder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/CastTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/CastTile$1;

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
    .param p1, "x1"    # Ljava/util/Set;

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    return-void
.end method

.method private updateItems(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    .line 267
    .local v0, "items":[Lcom/android/systemui/qs/QSDetailItems$Item;
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 269
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 270
    .local v2, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v4, v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 271
    new-instance v1, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v1}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 272
    .local v1, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v4, 0x7f08033a

    iput v4, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 273
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v4, v2}, Lcom/android/systemui/qs/tiles/CastTile;->access$1300(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 274
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CastTile;->access$1400(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1104cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 275
    iput-object v2, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 276
    iput-boolean v3, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 277
    new-array v4, v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    move-object v0, v4

    .line 278
    goto :goto_1

    .line 280
    .end local v1    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .end local v2    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_1
    goto :goto_0

    .line 282
    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 283
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 284
    .restart local v2    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    iget-object v5, v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v2    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    goto :goto_2

    .line 286
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 289
    .local v4, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mVisibleOrder:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 290
    .local v5, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    goto :goto_3

    .line 291
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v5    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_4
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 292
    .local v6, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v7, 0x7f080339

    iput v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 293
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v7, v5}, Lcom/android/systemui/qs/tiles/CastTile;->access$1300(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 294
    iget v7, v5, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v7, v3, :cond_5

    .line 295
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/CastTile;->access$1500(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f1104cf

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 297
    :cond_5
    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 298
    add-int/lit8 v7, v1, 0x1

    .local v7, "i":I
    aput-object v6, v0, v1

    .line 299
    .end local v1    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v6    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    nop

    .line 288
    move v1, v7

    goto :goto_3

    .line 302
    .end local v7    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 303
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 239
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Cast"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 241
    if-nez p2, :cond_1

    .line 242
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$600(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addOnAttachStateChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f080338

    const v2, 0x7f1104c0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1200(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->updateItems(Ljava/util/Set;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1200(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 234
    const/16 v0, 0x97

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 224
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->access$400()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$300(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1104c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 307
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1600(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9d

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 309
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 310
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->access$1200(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    .line 311
    return-void

    .line 307
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_1
    :goto_0
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 315
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1700(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9e

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 317
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 318
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CastTile;->access$1200(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CastController;->stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V

    .line 319
    return-void

    .line 315
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_1
    :goto_0
    return-void
.end method

.method public setToggleState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 230
    return-void
.end method

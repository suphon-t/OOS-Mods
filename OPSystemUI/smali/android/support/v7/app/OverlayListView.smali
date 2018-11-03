.class final Landroid/support/v7/app/OverlayListView;
.super Landroid/widget/ListView;
.source "OverlayListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/OverlayListView$OverlayObject;
    }
.end annotation


# instance fields
.field private final mOverlayObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/app/OverlayListView$OverlayObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method public addOverlayObject(Landroid/support/v7/app/OverlayListView$OverlayObject;)V
    .locals 1
    .param p1, "object"    # Landroid/support/v7/app/OverlayListView$OverlayObject;

    .line 56
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 81
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 83
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v7/app/OverlayListView$OverlayObject;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/OverlayListView$OverlayObject;

    .line 86
    .local v1, "object":Landroid/support/v7/app/OverlayListView$OverlayObject;
    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView$OverlayObject;->getBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 87
    .local v2, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/OverlayListView;->getDrawingTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/OverlayListView$OverlayObject;->update(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 93
    .end local v1    # "object":Landroid/support/v7/app/OverlayListView$OverlayObject;
    .end local v2    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    goto :goto_0

    .line 95
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v7/app/OverlayListView$OverlayObject;>;"
    :cond_2
    return-void
.end method

.method public startAnimationAll()V
    .locals 4

    .line 63
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/OverlayListView$OverlayObject;

    .line 64
    .local v1, "object":Landroid/support/v7/app/OverlayListView$OverlayObject;
    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView$OverlayObject;->isAnimationStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/app/OverlayListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/OverlayListView$OverlayObject;->startAnimation(J)V

    .line 67
    .end local v1    # "object":Landroid/support/v7/app/OverlayListView$OverlayObject;
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public stopAnimationAll()V
    .locals 2

    .line 74
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/OverlayListView$OverlayObject;

    .line 75
    .local v1, "object":Landroid/support/v7/app/OverlayListView$OverlayObject;
    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView$OverlayObject;->stopAnimation()V

    .line 76
    .end local v1    # "object":Landroid/support/v7/app/OverlayListView$OverlayObject;
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

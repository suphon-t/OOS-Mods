.class Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    .line 243
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 246
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$800(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 251
    invoke-static {}, Lcom/android/systemui/qs/tiles/CastTile;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$1000(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->access$1100(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 253
    return-void
.end method

.class final Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;
.super Landroid/os/AsyncTask;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteIndicatorLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteButton;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteButton;I)V
    .locals 0
    .param p2, "resId"    # I

    .line 587
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 588
    iput p2, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->mResId:I

    .line 589
    return-void
.end method

.method private cacheAndReset(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "remoteIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-static {}, Landroid/support/v7/app/MediaRouteButton;->access$000()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->mResId:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->access$102(Landroid/support/v7/app/MediaRouteButton;Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;)Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 612
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 593
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 584
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "remoteIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 604
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->cacheAndReset(Landroid/graphics/drawable/Drawable;)V

    .line 605
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 584
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->onCancelled(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "remoteIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 598
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->cacheAndReset(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 584
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

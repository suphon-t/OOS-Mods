.class Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/support/v7/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mDisabledAlpha:F

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 1278
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    .line 1279
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1280
    invoke-static {p2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    .line 1281
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1290
    move-object v0, p2

    .line 1291
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1292
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/v7/mediarouter/R$layout;->mr_controller_volume_item:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1295
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolumeGroupItemHeight(Landroid/view/View;)V

    .line 1298
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1299
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_5

    .line 1300
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v3

    .line 1302
    .local v3, "isEnabled":Z
    sget v4, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1303
    .local v4, "routeName":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1304
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    sget v5, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    .line 1307
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/app/MediaRouteVolumeSlider;

    .line 1308
    .local v5, "volumeSlider":Landroid/support/v7/app/MediaRouteVolumeSlider;
    nop

    .line 1309
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v7, v7, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    .line 1308
    invoke-static {v6, v5, v7}, Landroid/support/v7/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 1310
    invoke-virtual {v5, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 1311
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v6, v6, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setHideThumb(Z)V

    .line 1313
    invoke-virtual {v5, v3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    .line 1314
    if-eqz v3, :cond_2

    .line 1315
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v6, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1316
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1317
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1318
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v6, v6, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1

    .line 1320
    :cond_1
    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1321
    invoke-virtual {v5, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1322
    invoke-virtual {v5, v1}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    .line 1326
    :cond_2
    :goto_1
    sget v6, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    .line 1327
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1328
    .local v6, "volumeItemIcon":Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    const/16 v7, 0xff

    goto :goto_2

    :cond_3
    const/high16 v7, 0x437f0000    # 255.0f

    iget v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1332
    sget v7, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1333
    .local v7, "container":Landroid/widget/LinearLayout;
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v8, v8, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v1, 0x4

    nop

    :cond_4
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1337
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1338
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1339
    .local v1, "alphaAnim":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1340
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1341
    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1342
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1343
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1346
    .end local v1    # "alphaAnim":Landroid/view/animation/Animation;
    .end local v3    # "isEnabled":Z
    .end local v4    # "routeName":Landroid/widget/TextView;
    .end local v5    # "volumeSlider":Landroid/support/v7/app/MediaRouteVolumeSlider;
    .end local v6    # "volumeItemIcon":Landroid/widget/ImageView;
    .end local v7    # "container":Landroid/widget/LinearLayout;
    :cond_5
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 1285
    const/4 v0, 0x0

    return v0
.end method

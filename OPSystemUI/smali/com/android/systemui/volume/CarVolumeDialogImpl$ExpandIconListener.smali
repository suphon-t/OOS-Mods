.class final Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;
.super Ljava/lang/Object;
.source "CarVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/CarVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpandIconListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;
    .param p2, "x1"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$1;

    .line 447
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 450
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$800(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$802(Lcom/android/systemui/volume/CarVolumeDialogImpl;Z)Z

    .line 452
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$800(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 453
    move v0, v1

    .local v0, "groupId":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 456
    .local v3, "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$1000(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 458
    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$500(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Landroidx/car/widget/SeekbarListItem;

    move-result-object v4

    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$600(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/car/widget/SeekbarListItem;->setProgress(I)V

    goto :goto_1

    .line 460
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    const/4 v5, 0x0

    invoke-static {v4, v3, v0, v1, v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1100(Lcom/android/systemui/volume/CarVolumeDialogImpl;Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;

    .line 453
    .end local v3    # "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "groupId":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 464
    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f01000e

    .line 463
    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "inAnimator":Landroid/animation/Animator;
    goto :goto_4

    .line 467
    .end local v0    # "inAnimator":Landroid/animation/Animator;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1300(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 468
    .local v0, "itr":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/widget/SeekbarListItem;

    .line 470
    .local v3, "seekbarListItem":Landroidx/car/widget/SeekbarListItem;
    iget-object v4, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v4, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1400(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroidx/car/widget/SeekbarListItem;)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    move-result-object v4

    .line 471
    .local v4, "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    invoke-static {v4}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$1000(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 475
    :cond_3
    invoke-static {v4}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$600(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/car/widget/SeekbarListItem;->setProgress(I)V

    .line 477
    .end local v3    # "seekbarListItem":Landroidx/car/widget/SeekbarListItem;
    .end local v4    # "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    :goto_3
    goto :goto_2

    .line 478
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 479
    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f01000d

    .line 478
    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 482
    .local v0, "inAnimator":Landroid/animation/Animator;
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 483
    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f01000f

    .line 482
    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 484
    .local v3, "outAnimator":Landroid/animation/Animator;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 485
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 486
    .local v4, "animators":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v1

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 487
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 489
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1500(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroidx/car/widget/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/car/widget/ListItemAdapter;->notifyDataSetChanged()V

    .line 490
    return-void
.end method

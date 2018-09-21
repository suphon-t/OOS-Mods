.class public Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;
.super Landroid/app/Activity;
.source "ForcedResizableInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 101
    const/4 v0, 0x0

    const v1, 0x7f010039

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->overridePendingTransition(II)V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->setContentView(I)V

    .line 55
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_forced_resizeable_reason"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "reason":I
    packed-switch v1, :pswitch_data_0

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected forced resizeable reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :pswitch_0
    const v2, 0x7f11028b

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f11024a

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .restart local v2    # "text":Ljava/lang/String;
    nop

    .line 66
    :goto_0
    nop

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 4

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    .line 84
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 107
    return-void
.end method

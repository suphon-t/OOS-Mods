.class final Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 1476
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1477
    const p1, 0x7f120546

    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1478
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1483
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .line 1488
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1489
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1490
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1494
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 1496
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1500
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1503
    return v1

    .line 1506
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

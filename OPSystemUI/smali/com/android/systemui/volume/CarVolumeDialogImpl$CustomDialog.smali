.class final Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "CarVolumeDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/CarVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 414
    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 415
    const p1, 0x7f120546

    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 416
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 421
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .line 426
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 427
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 428
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 432
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 433
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->dismissH(I)V

    .line 440
    return v1

    .line 443
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

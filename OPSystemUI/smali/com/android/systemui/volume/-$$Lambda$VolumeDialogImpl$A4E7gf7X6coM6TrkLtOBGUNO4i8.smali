.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$A4E7gf7X6coM6TrkLtOBGUNO4i8;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$1(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field private final synthetic f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$1F8aetEiDaAA3raMil6UDO7mSG0;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRow$2(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V

    return-void
.end method

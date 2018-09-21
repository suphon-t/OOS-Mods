.class Lcom/android/systemui/volume/VolumeDialogImpl$2;
.super Lcom/android/systemui/volume/SafetyWarningDialog;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "audioManager"    # Landroid/media/AudioManager;

    .line 1287
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/SafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 3

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2500(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1291
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2602(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2700(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1294
    return-void

    .line 1292
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

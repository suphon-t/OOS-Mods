.class Lcom/android/systemui/volume/VolumeDialogImpl$3;
.super Lcom/android/systemui/volume/OutputChooserDialog;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->showOutputChooserH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "router"    # Lcom/android/systemui/volume/MediaRouterWrapper;

    .line 1310
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/OutputChooserDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 3

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2800(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1314
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$3;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2902(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/systemui/volume/OutputChooserDialog;

    .line 1315
    monitor-exit v0

    .line 1316
    return-void

    .line 1315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

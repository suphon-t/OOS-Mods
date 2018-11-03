.class Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConnectedDeviceChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 982
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$deviceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;->val$deviceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onConnectedDeviceChanged(Ljava/lang/String;)V

    .line 986
    return-void
.end method

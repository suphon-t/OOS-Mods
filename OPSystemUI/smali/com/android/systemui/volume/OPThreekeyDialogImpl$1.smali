.class Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;
.super Landroid/view/OrientationEventListener;
.source "OPThreekeyDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .line 99
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .line 103
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 105
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 110
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$000(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 111
    invoke-static {}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientype to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$002(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)I

    .line 113
    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$200(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    .line 115
    :cond_1
    return-void
.end method

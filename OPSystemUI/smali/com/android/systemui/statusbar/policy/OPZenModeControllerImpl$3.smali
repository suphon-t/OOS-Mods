.class Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "OPZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "settingName"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 5
    .param p1, "value"    # I

    .line 106
    move v0, p1

    .line 107
    .local v0, "zen":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 108
    .local v1, "dndEnable":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V

    .line 109
    const-string v2, "OPZenModeControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " zenMode Chnage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

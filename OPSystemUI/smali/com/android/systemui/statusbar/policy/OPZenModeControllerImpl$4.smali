.class Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;
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

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 1
    .param p1, "threekey"    # I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V

    .line 120
    return-void
.end method

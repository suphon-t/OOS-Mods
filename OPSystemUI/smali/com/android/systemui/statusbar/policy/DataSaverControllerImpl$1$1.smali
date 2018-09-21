.class Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;
.super Ljava/lang/Object;
.source "DataSaverControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->onRestrictBackgroundChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

.field final synthetic val$isDataSaving:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Z)V

    .line 84
    return-void
.end method

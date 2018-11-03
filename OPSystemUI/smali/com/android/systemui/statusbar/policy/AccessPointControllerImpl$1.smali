.class Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 173
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect failure reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 168
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    const-string v1, "connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/statusbar/car/hvac/HvacController$2;
.super Ljava/lang/Object;
.source "HvacController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/hvac/HvacController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/hvac/HvacController;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$binderDied$0(Lcom/android/systemui/statusbar/car/hvac/HvacController$2;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$200(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 105
    const-string v0, "HvacController"

    const-string v1, "Death of HVAC triggering a restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$200(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$200(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$500(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;->this$0:Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->access$600(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/car/hvac/-$$Lambda$HvacController$2$iHT8Tpg8uVwfmNfI8JJMJYOK4tk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/hvac/-$$Lambda$HvacController$2$iHT8Tpg8uVwfmNfI8JJMJYOK4tk;-><init>(Lcom/android/systemui/statusbar/car/hvac/HvacController$2;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method

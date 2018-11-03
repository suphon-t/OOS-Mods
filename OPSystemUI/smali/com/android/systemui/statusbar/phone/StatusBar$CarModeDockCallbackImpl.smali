.class Lcom/android/systemui/statusbar/phone/StatusBar$CarModeDockCallbackImpl;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarModeDockCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 7385
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeDockCallbackImpl;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/StatusBar$1;

    .line 7385
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeDockCallbackImpl;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method


# virtual methods
.method public refreshUI()V
    .locals 1

    .line 7396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeDockCallbackImpl;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/opcarmode/CarModeDockFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeDockCallbackImpl;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/opcarmode/CarModeDockFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/CarModeDockFragment;->refreshUI()V

    .line 7399
    :cond_0
    return-void
.end method

.method public showCarModeDock(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 7388
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCarModeDock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeDockCallbackImpl;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 7391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CarModeDockCallbackImpl;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 7392
    return-void
.end method

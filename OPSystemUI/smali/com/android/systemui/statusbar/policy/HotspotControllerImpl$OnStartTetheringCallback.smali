.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

    .line 203
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 2

    .line 214
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HotspotController"

    const-string v1, "onTetheringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    .line 218
    return-void
.end method

.method public onTetheringStarted()V
    .locals 2

    .line 207
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HotspotController"

    const-string v1, "onTetheringStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    .line 210
    return-void
.end method

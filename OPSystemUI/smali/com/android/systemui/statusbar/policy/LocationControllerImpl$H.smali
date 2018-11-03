.class final Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
.super Landroid/os/Handler;
.source "LocationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;

    .line 213
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    return-void
.end method

.method public static synthetic lambda$locationActiveChanged$0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationActiveChanged(Z)V

    return-void
.end method

.method static synthetic lambda$locationSettingsChanged$1(ZLcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 0
    .param p0, "isEnabled"    # Z
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .line 239
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationSettingsChanged(Z)V

    return-void
.end method

.method private locationActiveChanged()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$vKTe7eMzgWgCJvXCt8UIIkFyg78;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$vKTe7eMzgWgCJvXCt8UIIkFyg78;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 232
    return-void
.end method

.method private locationSettingsChanged()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v0

    .line 237
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$xXVOboFsQOHoRY-EFzvZu-IOYh0;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$xXVOboFsQOHoRY-EFzvZu-IOYh0;-><init>(Z)V

    invoke-static {v2, v3}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 240
    monitor-exit v1

    .line 242
    return-void

    .line 240
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationActiveChanged()V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationSettingsChanged()V

    .line 222
    nop

    .line 227
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/lifecycle/Lifecycle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle$1;

    .line 209
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public onLifecycleEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 213
    sget-object v0, Lcom/android/settingslib/core/lifecycle/Lifecycle$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    const-string v0, "LifecycleObserver"

    const-string v1, "Should not receive an \'ANY\' event!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$500(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 231
    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$400(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 228
    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$300(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 225
    goto :goto_0

    .line 221
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$200(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 222
    goto :goto_0

    .line 218
    :pswitch_5
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$100(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 219
    goto :goto_0

    .line 216
    :pswitch_6
    nop

    .line 236
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

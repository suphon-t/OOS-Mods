.class final Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;
.super Landroid/os/Handler;
.source "NavigationBarGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;

    .line 405
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 411
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    goto :goto_0

    .line 413
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$1700(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    .line 414
    nop

    .line 419
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

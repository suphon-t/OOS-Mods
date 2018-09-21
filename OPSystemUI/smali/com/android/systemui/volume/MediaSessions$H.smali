.class final Lcom/android/systemui/volume/MediaSessions$H;
.super Landroid/os/Handler;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/MediaSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/MediaSessions;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 352
    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    .line 353
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/MediaSessions;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/systemui/volume/MediaSessions$1;

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/MediaSessions$H;-><init>(Lcom/android/systemui/volume/MediaSessions;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 358
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/ISessionController;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/MediaSessions;->access$1200(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;)V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/ISessionController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/MediaSessions;->access$1100(Lcom/android/systemui/volume/MediaSessions;Landroid/media/session/ISessionController;I)V

    .line 364
    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    iget-object v1, p0, Lcom/android/systemui/volume/MediaSessions$H;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-static {v1}, Lcom/android/systemui/volume/MediaSessions;->access$1000(Lcom/android/systemui/volume/MediaSessions;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/MediaSessions;->onActiveSessionsUpdatedH(Ljava/util/List;)V

    .line 361
    nop

    .line 369
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

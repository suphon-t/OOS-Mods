.class Lcom/android/systemui/qs/QSDetailItems$H;
.super Landroid/os/Handler;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 245
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->access$600(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V

    goto :goto_1

    .line 252
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/qs/QSDetailItems$Callback;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->access$700(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    goto :goto_1

    .line 254
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->access$800(Lcom/android/systemui/qs/QSDetailItems;Z)V

    .line 257
    :cond_3
    :goto_1
    return-void
.end method

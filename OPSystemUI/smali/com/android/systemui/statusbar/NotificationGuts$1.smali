.class Lcom/android/systemui/statusbar/NotificationGuts$1;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->access$000(Lcom/android/systemui/statusbar/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->access$100(Lcom/android/systemui/statusbar/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 125
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/statusbar/NotificationContentView$1$1;
.super Ljava/lang/Object;
.source "NotificationContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationContentView$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/NotificationContentView$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/NotificationContentView$1;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$1$1;->this$1:Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$1$1;->this$1:Lcom/android/systemui/statusbar/NotificationContentView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$002(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z

    .line 118
    return-void
.end method

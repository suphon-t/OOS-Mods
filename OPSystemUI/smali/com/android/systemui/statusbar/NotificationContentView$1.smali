.class Lcom/android/systemui/statusbar/NotificationContentView$1;
.super Ljava/lang/Object;
.source "NotificationContentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationContentView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationContentView$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->post(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$1;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    .line 4681
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;->val$this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4684
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;->this$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 4685
    return-void
.end method

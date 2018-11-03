.class Lcom/android/systemui/statusbar/NotificationShelf$2;
.super Ljava/lang/Object;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;

.field final synthetic val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$predrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .line 433
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$predrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 436
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne p1, v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$observer:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$predrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v1, 0x7f0a00d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 444
    :cond_0
    return-void
.end method

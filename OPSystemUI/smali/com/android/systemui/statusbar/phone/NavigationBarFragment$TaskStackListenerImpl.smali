.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "NavigationBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1273
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onActivityRequestedOrientationChanged$0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "a"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1299
    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 1300
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityRequestedOrientationChanged(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 1296
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;

    .line 1297
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$TaskStackListenerImpl$WOZBpkylBist4A7EGTrKlHaP-0c;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$TaskStackListenerImpl$WOZBpkylBist4A7EGTrKlHaP-0c;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;I)V

    .line 1298
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1301
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 1290
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 1284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 1285
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 1280
    return-void
.end method

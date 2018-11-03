.class Lcom/android/systemui/qs/customize/QSCustomizer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 572
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 590
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 597
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 580
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 586
    return-void
.end method

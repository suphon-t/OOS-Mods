.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$icon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2209
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->val$icon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->val$icon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 2215
    return-void
.end method

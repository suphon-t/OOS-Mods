.class Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;
.super Ljava/lang/Object;
.source "HeadsUpManagerPhone.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 1
    .param p1, "hasPinnedNotification"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 115
    return-void
.end method

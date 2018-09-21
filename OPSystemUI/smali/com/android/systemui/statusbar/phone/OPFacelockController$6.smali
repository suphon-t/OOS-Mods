.class Lcom/android/systemui/statusbar/phone/OPFacelockController$6;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field final synthetic val$alpha:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 858
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->val$alpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->val$alpha:I

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->changePanelAlpha(II)V

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->setReportNextDraw()V

    .line 867
    return-void
.end method

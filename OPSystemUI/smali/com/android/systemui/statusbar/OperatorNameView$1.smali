.class Lcom/android/systemui/statusbar/OperatorNameView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OperatorNameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/OperatorNameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/OperatorNameView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/OperatorNameView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/OperatorNameView;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameView$1;->this$0:Lcom/android/systemui/statusbar/OperatorNameView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView$1;->this$0:Lcom/android/systemui/statusbar/OperatorNameView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/OperatorNameView;->access$000(Lcom/android/systemui/statusbar/OperatorNameView;)V

    .line 56
    return-void
.end method

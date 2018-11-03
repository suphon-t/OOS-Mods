.class Lcom/android/systemui/statusbar/NetworkSpeedView$1;
.super Ljava/lang/Object;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NetworkSpeedView;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 0

    .line 113
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$1;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->access$000(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    .line 118
    return-void
.end method

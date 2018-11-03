.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onWallpaperVisibilityChanged$0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V

    return-void
.end method


# virtual methods
.method public onWallpaperVisibilityChanged(ZI)V
    .locals 2
    .param p1, "newVisibility"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->access$002(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$1$5foY_Yygo1gW25-mVBRpPSQRb_g;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

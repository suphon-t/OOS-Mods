.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "NavigationBarGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rate"    # I

    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 229
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 230
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 237
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 240
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_1
    return-void
.end method

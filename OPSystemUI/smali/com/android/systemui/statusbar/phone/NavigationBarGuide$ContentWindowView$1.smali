.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;
.super Ljava/lang/Object;
.source "NavigationBarGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    .line 205
    :cond_0
    return-void
.end method

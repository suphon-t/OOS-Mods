.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;
.super Ljava/lang/Object;
.source "NavigationBarGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->onDetachedFromWindow()V
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

    .line 272
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    .line 281
    :cond_0
    return-void
.end method

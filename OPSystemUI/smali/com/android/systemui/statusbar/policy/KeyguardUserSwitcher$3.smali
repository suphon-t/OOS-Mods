.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startDisappearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 193
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$300(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$000(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$202(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Z)Z

    .line 199
    return-void
.end method

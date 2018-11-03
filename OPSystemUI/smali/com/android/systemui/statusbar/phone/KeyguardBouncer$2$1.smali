.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2$1;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    .line 268
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->startAppearAnimation()V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

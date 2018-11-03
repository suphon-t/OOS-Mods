.class Lcom/android/systemui/assist/AssistOrbView$6;
.super Ljava/lang/Object;
.source "AssistOrbView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbView;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistOrbView;

    .line 259
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 262
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v1}, Lcom/android/systemui/assist/AssistOrbView;->access$900(Lcom/android/systemui/assist/AssistOrbView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v2}, Lcom/android/systemui/assist/AssistOrbView;->access$1000(Lcom/android/systemui/assist/AssistOrbView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/assist/AssistOrbView;->animateCircleSize(FJJLandroid/view/animation/Interpolator;)V

    .line 263
    iget-object v7, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$6;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbView;->access$1100(Lcom/android/systemui/assist/AssistOrbView;)I

    move-result v0

    int-to-float v8, v0

    sget-object v13, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0x190

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/assist/AssistOrbView;->access$1200(Lcom/android/systemui/assist/AssistOrbView;FJJLandroid/view/animation/Interpolator;)V

    .line 264
    return-void
.end method

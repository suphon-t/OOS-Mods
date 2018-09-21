.class Lcom/android/systemui/pip/phone/PipTouchHandler$2;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$2;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$2;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 114
    return-void
.end method
